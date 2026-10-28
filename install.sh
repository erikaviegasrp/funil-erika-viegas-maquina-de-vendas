#!/usr/bin/env bash
set -euo pipefail

TARGET_PATH="${1:-$HOME/.ai-skills/funil-erika-viegas-maquina-de-vendas}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$TARGET_PATH"
cp "$ROOT/SKILL.md" "$ROOT/Funil-Erika-Viegas-portable.md" "$ROOT/README.md" "$ROOT/LICENSE" "$ROOT/CONTRIBUTING.md" "$ROOT/package.json" "$ROOT/skill-manifest.json" "$TARGET_PATH/"
rm -rf "$TARGET_PATH/references" "$TARGET_PATH/scripts"
cp -R "$ROOT/references" "$ROOT/scripts" "$TARGET_PATH/"
printf 'Skill instalada em: %s\n' "$TARGET_PATH"
printf 'Use SKILL.md como entrada da skill ou Funil-Erika-Viegas-portable.md como prompt único.\n'
