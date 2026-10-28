# Contribuindo

Obrigado por contribuir com o Funil Érika Viegas.

## Antes de abrir um pull request

- mantenha o conteúdo em português-Brasil, salvo necessidade explícita;
- não inclua credenciais, URLs privadas, dados pessoais ou assets sem autorização;
- preserve a separação entre fato, hipótese e pendência de aprovação;
- mantenha `SKILL.md` abaixo de 500 linhas;
- atualize o Markdown portátil quando alterar o fluxo principal;
- valide exemplos JSON e scripts;
- explique no pull request qual etapa da máquina foi alterada.

## Validação local

```bash
python scripts/validate_client_config.py references/client-config.example.json
python /home/ubuntu/skills/skill-creator/scripts/quick_validate.py .
```

A segunda validação está disponível em ambientes Manus. Em outros ambientes, verifique manualmente o frontmatter YAML, as referências e a integridade dos arquivos.

## Pull requests

Descreva contexto, mudança, impacto, arquivos afetados e como a alteração foi validada. Alterações que modificam headlines, claims, KPIs ou regras de publicação devem explicar o motivo e manter o gate de aprovação correspondente.
