# Funil Érika Viegas para Máquina de Vendas

Skill e prompt operacional para transformar a landing page, a identidade visual e o processo comercial de um cliente em uma máquina de vendas: **atração → captura → CRM → relacionamento → venda**.

O projeto foi pensado para profissionais de marketing, agências, consultores, equipes comerciais e agentes de IA que precisam repetir a estrutura para diferentes clientes sem perder personalização, rastreabilidade ou aprovação humana.

## O que esta skill faz

- lê e diagnostica uma landing page;
- extrai oferta, público, CTA, prova e identidade visual;
- cria opções de headlines antes da execução;
- estrutura campanhas de atração, consideração e conversão;
- mapeia formatos nativos para Instagram/Meta, Google e YouTube;
- organiza matriz de criativos por canal, placement, proporção e etapa;
- planeja captura, UTMs, eventos e origem do lead;
- estrutura CRM, régua de relacionamento e playbook comercial;
- orienta a criação de site/apresentação com funil clicável, filtros, galerias e KPIs;
- mantém gates explícitos de aprovação;
- valida configuração de novos clientes.

## Instalação em uma IA

Este repositório é agnóstico de fornecedor. A forma mais simples de usar é copiar o conteúdo de [`Funil-Erika-Viegas-portable.md`](Funil-Erika-Viegas-portable.md) para as instruções do seu agente, projeto ou workspace.

Para agentes que reconhecem skills no formato de diretório, use [`SKILL.md`](SKILL.md) como arquivo principal e mantenha `references/` e `scripts/` junto dele.

A skill não exige uma API específica. A IA deve adaptar navegador, busca, geração de imagens, CRM, banco de dados e hospedagem às ferramentas disponíveis no ambiente onde for instalada.

## Instalação no Windows via PowerShell

Baixe e extraia o pacote ZIP. Abra o PowerShell na pasta extraída e execute:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
cd "$HOME\Downloads\funil-erika-viegas-maquina-de-vendas"
.\install.ps1 -Validate
```

Para escolher outro destino:

```powershell
.\install.ps1 -TargetPath "C:\IA\skills\funil-erika-viegas-maquina-de-vendas" -Force -Validate
```

Para instalar somente o prompt portátil:

```powershell
.\install.ps1 -PromptOnly -Force
```

Leia [`INSTALL-WINDOWS.md`](INSTALL-WINDOWS.md) para o procedimento completo. O instalador prepara os arquivos, mas não existe um comando universal que ative uma skill em todos os MCPs. Cada host pode exigir importação de `SKILL.md`, inclusão do prompt portátil nas instruções do projeto ou configuração específica.

## Uso recomendado

1. Forneça a URL da landing page e as referências visuais do cliente.
2. Copie [`references/client-config.example.json`](references/client-config.example.json) para um arquivo de configuração do projeto.
3. Preencha nome, oferta, público, campanhas, CRM, responsáveis e aprovações.
4. Valide a configuração:

```bash
python scripts/validate_client_config.py caminho/para/client-config.json
```

5. Execute a IA por fases: diagnóstico → headlines → funil → criativos → captura/tracking → CRM → régua/playbook → apresentação → QA.
6. Não avance nos gates de aprovação sem confirmação do cliente.

## Arquivos principais

- [`SKILL.md`](SKILL.md): skill estruturada para agentes compatíveis.
- [`Funil-Erika-Viegas-portable.md`](Funil-Erika-Viegas-portable.md): versão única, autossuficiente e portátil para outras IAs.
- [`install.ps1`](install.ps1): instalador PowerShell para Windows.
- [`install.sh`](install.sh): instalador para macOS/Linux.
- [`skill-manifest.json`](skill-manifest.json): manifesto para hosts que aceitam metadados de skills.
- [`INSTALL-WINDOWS.md`](INSTALL-WINDOWS.md): guia de instalação e ativação por tipo de host.
- [`references/implementation-plan.md`](references/implementation-plan.md): plano completo de execução.
- [`references/funnel-playbook.md`](references/funnel-playbook.md): mensagens e KPIs direcionais.
- [`references/approval-gates.md`](references/approval-gates.md): gates, status e regras de transparência.
- [`references/client-config.example.json`](references/client-config.example.json): contrato de configuração por cliente.
- [`scripts/validate_client_config.py`](scripts/validate_client_config.py): validador sem dependências externas.

## Princípios

- Não inventar preço, prova, multa, resultado, responsável, integração ou aprovação.
- Separar fatos confirmados, hipóteses e pendências.
- Usar KPIs como faixas de planejamento, nunca como promessa.
- Criar peças próprias para cada placement e proporção; não apenas cortar uma arte.
- Preservar a origem do lead desde o anúncio até o estágio final do CRM.
- Manter aprovação humana para headlines, oferta, claims, identidade, publicação e alterações no CRM.
- Adaptar o design ao cliente sem copiar materiais de terceiros sem autorização.

## Licença

Distribuído sob a licença MIT. Consulte [`LICENSE`](LICENSE).
