#!/usr/bin/env python3
"""Validate the reusable Funil Érika Viegas client configuration."""
from __future__ import annotations

import json
import sys
from pathlib import Path


def fail(message: str) -> None:
    print(f"ERROR: {message}")
    raise SystemExit(1)


def main() -> None:
    if len(sys.argv) != 2:
        fail("usage: validate_client_config.py path/to/client-config.json")
    path = Path(sys.argv[1])
    if not path.exists():
        fail(f"file not found: {path}")
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        fail(f"invalid JSON: {exc}")

    for key in ("client", "audience", "offer", "campaigns", "crm", "capture", "approval"):
        if key not in data:
            fail(f"missing top-level key: {key}")

    for key in ("name", "slug", "landingPage", "brand"):
        if not data["client"].get(key):
            fail(f"missing client.{key}")
    for key in ("name", "valueProposition", "entryOffer", "cta"):
        if not data["offer"].get(key):
            fail(f"missing offer.{key}")

    stages = {campaign.get("stage") for campaign in data["campaigns"]}
    missing = {"tof", "mof", "bof"} - stages
    if missing:
        fail(f"missing funnel campaign stages: {', '.join(sorted(missing))}")
    for campaign in data["campaigns"]:
        for key in ("id", "name", "stage", "objective", "destination", "owner", "status"):
            if not campaign.get(key):
                fail(f"missing campaigns[].{key}")

    if not data["crm"].get("tool"):
        fail("missing crm.tool")
    if not data["crm"].get("stages"):
        fail("crm.stages cannot be empty")
    if not data["capture"].get("formFields"):
        fail("capture.formFields cannot be empty")

    print(f"OK: {data['client']['name']} configuration is structurally valid")


if __name__ == "__main__":
    main()
