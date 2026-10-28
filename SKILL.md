---
name: funil-erika-viegas-maquina-de-vendas
description: Build reusable client-specific Funil Érika Viegas sales-machine presentations and campaign sites. Use when creating or adapting a complete acquisition operation with funnel campaigns, native Instagram/Google/YouTube creatives, headline options, offer positioning, landing-page capture, CRM source tracking, relationship nurture, sales playbook, KPI guidance, interactive galleries and client-ready WebDev delivery.
---

# Funil Érika Viegas para Máquina de Vendas — skill reutilizável

Use esta skill para transformar a landing page, identidade visual e operação comercial de um cliente em um sistema apresentado em um único site: aquisição → captura → contexto no CRM → relacionamento → venda.

## Resultado obrigatório

Entregue uma operação documentada e apresentável, não apenas um conjunto de anúncios:

1. **Identidade e oferta:** leitura da landing page, referências visuais, posicionamento, público, diferenciais, serviços, prova e CTA.
2. **Arquitetura do funil:** campanhas de atração, consideração e conversão, com objetivo, público, promessa, formatos, destino e passagem entre etapas.
3. **Criativos nativos:** peças compostas para cada placement solicitado, por etapa do funil e canal, sem reduzir tudo a cortes da mesma arte.
4. **Conversão:** landing page/formulário, oferta de entrada, headline aprovada e eventos de origem.
5. **Operação comercial:** CRM, origem da campanha/anúncio, régua de relacionamento, playbook, responsáveis e estágios.
6. **Site de apresentação:** primeira dobra conceitual, campanhas abaixo da dobra, filtros, navegação lateral, galeria, KPIs, lightbox e seções navegáveis.
7. **Pacote de entrega:** site funcional, matriz de ativos, headlines para aprovação, mapa de campanhas, régua, playbook, checklist de tracking e checkpoint salvo.

## Entradas do cliente

Solicite ou extraia da landing page e dos materiais fornecidos:

- nome da marca, logo, cores, fontes, referências e restrições de uso;
- URL da landing page principal e páginas de serviço;
- serviços/ofertas, ticket ou faixa de valor, diferenciais, prova e garantias permitidas;
- público, regiões, segmentos, decisores e objeções;
- canais, orçamento/faixa de mídia, objetivo e prazo;
- nomes reais das campanhas, ofertas, responsáveis e ferramentas do CRM;
- estágios atuais do CRM e eventos disponíveis de conversão;
- tom de voz, termos proibidos, claims legais e aprovações necessárias;
- formato de captura, campos obrigatórios, destino do lead e SLA de atendimento.

Se algum dado crítico não estiver disponível, marque-o como `PENDENTE DE APROVAÇÃO`; não invente nome, preço, responsável, prova, depoimento ou integração.

## Fluxo principal

### 1. Diagnosticar o cliente

1. Acesse a landing page e registre headline, subheadline, oferta, CTA, campos, provas, serviços, contatos e destino do formulário.
2. Inspecione referências visuais e crie um mini design brief: paleta, tipografia, tratamento de imagem, grid, contraste, textura, ícones e tom.
3. Separe fatos encontrados, hipóteses estratégicas e campos ausentes.
4. Faça uma auditoria de conversão: clareza da oferta, fricção do formulário, prova, CTA, origem do lead e continuidade para o comercial.
5. Gere um diagnóstico curto antes de produzir qualquer criativo.

### 2. Criar headlines para aprovação

Produza de 5 a 10 opções agrupadas por ângulo, antes de gerar artes:

- problema/risco;
- ganho operacional;
- autoridade/método;
- urgência qualificada;
- prova/resultado autorizado;
- oferta/diagnóstico;
- posicionamento institucional.

Para cada opção, informe headline, subheadline, CTA, etapa do funil, canal recomendado, hipótese e risco de interpretação. Marque uma opção recomendada e aguarde aprovação quando o usuário pedir aprovação prévia. Nunca cristalize uma headline em todas as artes sem registrar a versão aprovada.

### 3. Definir a oferta e a arquitetura

Construa uma matriz por etapa:

| Etapa | Objetivo | Público | Mensagem | Oferta/CTA | Destino | Handoff |
|---|---|---|---|---|---|---|
| Atração | tornar o problema relevante | audiência fria | contexto, dor, oportunidade | conhecer, assistir, visitar | conteúdo/landing | audiência engajada |
| Consideração | explicar método e gerar confiança | engajados/remarketing | checklist, prova, serviço, processo | comparar, pedir material, conversar | página de serviço | lead interessado |
| Conversão | transformar intenção em oportunidade | alta intenção | diagnóstico, orçamento, revisão | formulário, WhatsApp, reunião | captura | CRM + responsável |

Use os nomes reais de campanha e oferta aprovados pelo cliente. Abaixo de cada etapa, liste mensagens, formatos, público, evento de conversão e critério de passagem.

### 4. Mapear ecossistema de mídia

Diferencie campanha, placement, formato e asset. No mínimo avalie:

- **Instagram/Meta:** Feed, Stories, Reels, Explore Home, Search, Profile Feed quando elegível, Collection e carrossel;
- **Google:** Search/RSA, Display, Demand Gen, Performance Max como combinação de assets, recursos de chamada e sitelinks;
- **YouTube:** in-feed, in-stream pulável, in-stream não pulável, bumper, Shorts e Masthead quando aplicável.

Inclua somente superfícies compatíveis com a oferta e o objetivo. Shopping, App, Travel e inventários dependentes de catálogo devem ser marcados como não aplicáveis quando não houver feed ou produto elegível. Confirme especificações atuais antes da publicação.

### 5. Criar a matriz de criativos

Use uma fonte única de verdade. Cada asset deve conter:

```ts
{
  id, client, campaign, offer, owner,
  stage: "tof" | "mof" | "bof",
  channel: "instagram" | "google" | "youtube",
  placement, format, ratio, dimensions,
  headlineVersion, headline, support, cta,
  destination, description, safeZone,
  image, status: "draft" | "review" | "approved" | "delivered",
  kpi: { primary, secondary, estimate, assumption, caution },
  tracking: { utmSource, utmMedium, utmCampaign, utmContent, event }
}
```

Gere uma composição própria para cada proporção e contexto. Priorize 4:5, 9:16, 1:1, 1,91:1 e 16:9 conforme o placement. Para vídeo, diferencie still, storyboard e MP4 final; não apresente key visual como vídeo pronto.

### 6. Produzir e revisar os criativos

1. Use a identidade aprovada e a headline aprovada.
2. Gere em lotes pequenos e mantenha o texto exato em português-Brasil.
3. Verifique hierarquia, contraste, safe zones, legibilidade, número, CTA, logo e proporção.
4. Confirme se o criativo corresponde à etapa: atração não deve parecer venda agressiva; consideração deve explicar; conversão deve orientar ação.
5. Registre cada revisão como `draft`, `review`, `approved` ou `delivered`.
6. Regenerar apenas falhas materiais; não substituir arbitrariamente uma peça aprovada.

### 7. Projetar captura e tracking

Defina o formulário e a passagem de dados:

- campos mínimos e campos condicionais;
- consentimento e aviso de privacidade;
- origem da campanha, conjunto/grupo, anúncio, placement e headline;
- UTMs e evento de conversão;
- evento de envio, contato, reunião, proposta e venda;
- responsável, SLA e destino no CRM.

Se houver WebDev full-stack, use Drizzle + tRPC, armazene timestamps em UTC e persista somente metadados/URLs de arquivos; não armazene bytes de mídia no banco.

### 8. Estruturar CRM, régua e playbook

Crie uma seção navegável para cada item:

**CRM e origem:** Lead novo → triagem → primeiro contato → diagnóstico/reunião → proposta → negociação → ganho/perdido. Para cada estágio, informe entrada, responsável, SLA, evento e critério de saída.

**Régua de relacionamento:** defina mensagem, canal, intervalo, gatilho, objetivo e condição de parada. Inclua pelo menos: confirmação da captura, primeiro contato, conteúdo de prova, esclarecimento de objeção, convite para reunião, follow-up de proposta e reativação.

**Playbook comercial:** roteiro de primeiro contato, perguntas de qualificação, critérios de fit, tratamento de objeções, preparação da reunião, envio de proposta, follow-up, motivos de perda e retorno para marketing.

Nunca declare automação real se a integração não foi configurada. Use `desenhado`, `conectado`, `testado` ou `pendente`, conforme evidência.

### 9. Construir o site único de apresentação

Use a estrutura editorial abaixo, mantendo o layout base e substituindo conteúdo/tema por cliente:

1. **Primeira dobra:** nome da máquina, promessa, três colunas ou fluxo visual entre funil, captura e comercial.
2. **Funil clicável:** Atração, Consideração e Conversão levam às galerias correspondentes.
3. **Campanhas abaixo da dobra:** três cards com nomes reais, objetivo, oferta, CTA e destino.
4. **Mapa de formatos:** cards por canal com função e quantidade.
5. **Galerias por etapa:** TOF, MOF e BOF com lightbox.
6. **Filtros:** interseção de canal + etapa + placement/formato, contagens, estado “todos” e reset.
7. **KPI cards/tooltips:** objetivo, métrica, faixa de planejamento, hipótese e cuidado.
8. **Régua e playbook:** páginas/seções navegáveis com fluxo, responsáveis e status.
9. **Pré-diagnóstico/captura:** formulário conectado ao banco quando solicitado.
10. **Fontes e ressalvas:** referências, claims condicionais e limitações de assets.

Mantenha uma fonte única de metadados para alimentar cards, filtros, contagens, lightbox, navegação e tracking. Use armazenamento gerenciado para imagens e vídeos; não coloque mídia grande em `client/public`.

### 10. Validar e entregar

Execute:

- `pnpm check`;
- `pnpm build`;
- `pnpm test`;
- smoke test do servidor e domínio público;
- teste de filtro por canal, etapa e combinação;
- teste de navegação lateral e âncoras;
- teste de lightbox e KPIs;
- teste de formulário, persistência e origem do lead, quando aplicável;
- verificação de assets representativos e status de aprovação;
- checkpoint WebDev antes da entrega.

Entregue o site, matriz de criativos, opções de headlines, mapa de campanhas, oferta, ecossistema de mídia, régua, playbook, tracking e relatório de pendências/aprovações.

## Regras de segurança e qualidade

- Valide multas, normas, números, resultados e claims em fontes oficiais ou marque-os como hipótese.
- Nunca transforme exemplo condicional em promessa ou multa automática.
- Não invente KPIs históricos; use faixas de planejamento e assunções.
- Não invente integração CRM, automação, MP4, depoimento ou aprovação.
- Preserve a identidade do cliente sem copiar logotipos ou materiais de terceiros sem autorização.
- Mantenha o conteúdo em português-Brasil salvo instrução contrária.
- Use acessibilidade básica: contraste, foco visível, alt text, teclado e redução de movimento.

## Recursos

Leia `references/implementation-plan.md` para o plano completo por fase, aprovações e entregáveis.
Leia `references/client-config.example.json` para o contrato de dados de cada cliente.
Leia `references/funnel-playbook.md` para mensagens, KPIs e hipóteses por formato.
Leia `references/approval-gates.md` para controlar headlines, oferta, claims e publicação.
