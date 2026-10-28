# Plano de implementação — Funil Érika Viegas por cliente

## Visão

Repetir a arquitetura CTS sem copiar o conteúdo: manter o esqueleto editorial e adaptar identidade, oferta, campanhas, assets, tracking e operação comercial de cada cliente.

## Fase 0 — Intake e diagnóstico

**Entradas:** landing page, logo, referências, serviços, público, regiões, CRM, responsáveis, orçamento, canais e regras de aprovação.

**Ações:** extrair fatos da landing page; salvar screenshots/URLs; catalogar claims; preencher `client-config.example.json`; separar `confirmado`, `hipótese` e `pendente`.

**Saída:** briefing do cliente, mini design brief, auditoria da landing page e lista de perguntas.

**Gate A — aprovação de posicionamento:** cliente confirma público, oferta, diferencial, CTA, tom e responsáveis.

## Fase 1 — Posicionamento e headlines

Criar 5–10 headlines por ângulo: problema, ganho, método, autoridade, prova, urgência qualificada e oferta. Para cada uma, registrar etapa, canal, subheadline, CTA, hipótese e risco.

**Saída:** matriz de headlines com versão recomendada e alternativas.

**Gate B — aprovação de copy:** selecionar headline, subheadline, CTA, termos permitidos e claims que podem aparecer nas artes.

## Fase 2 — Oferta e funil de aquisição

Definir três campanhas: atração, consideração e conversão. Para cada campanha registrar nome real, objetivo, público, mensagem, oferta, destino, evento, orçamento/faixa e critério de passagem.

**Saída:** mapa TOF/MOF/BOF, nomes oficiais das campanhas, ofertas e destinos.

## Fase 3 — Ecossistema de mídia e proporções

Mapear cada campanha para Meta/Instagram, Google e YouTube. Separar formato, placement e asset. Selecionar proporções nativas: 4:5, 9:16, 1:1, 1,91:1 e 16:9 conforme inventário.

**Saída:** matriz de mídia com canais, placements, dimensões, finalidade e dependências.

## Fase 4 — Produção de criativos

Criar uma peça própria por placement e etapa, com headline aprovada, safe zone, CTA e destino. Gerar imagens em lotes controlados. Para vídeo, registrar se o arquivo é MP4, storyboard ou key visual.

**Saída:** diretório de assets, matriz de criativos e status por peça.

**Gate C — revisão visual e legal:** conferir texto, número, logo, contraste, proporção, claim, safe zone e adequação à etapa.

## Fase 5 — Landing page, captura e tracking

Mapear campos, consentimento, evento de envio, UTMs, origem da campanha/anúncio, headline, placement e destino CRM. Quando houver banco, persistir lead e metadados via tRPC/Drizzle.

**Saída:** especificação do formulário, mapa de eventos, convenção UTM e teste de passagem.

## Fase 6 — CRM, régua e playbook

Configurar ou documentar estágios: novo lead, triagem, contato, reunião, proposta, negociação, ganho/perdido. Atribuir responsáveis e SLA. Criar régua com gatilho, canal, intervalo, mensagem e condição de parada. Criar playbook com roteiro, qualificação, objeções, follow-up e motivos de perda.

**Saída:** mapa do CRM, régua de relacionamento e playbook comercial navegáveis no site.

**Gate D — aprovação operacional:** responsáveis confirmam estágios, prazos, textos, ferramentas e critérios de passagem.

## Fase 7 — Site de apresentação

Preservar o layout base: primeira dobra com conceito da máquina; funil clicável; campanhas abaixo; mapa de formatos; galerias; filtros; navegação flutuante; lightbox/KPIs; captura; régua; playbook; fontes.

Usar dados de uma única matriz para renderizar todos os cards e filtros. Personalizar paleta, tipografia, copy, logo, nomes e imagens sem duplicar componentes.

**Saída:** apresentação client-ready em WebDev.

## Fase 8 — Validação e publicação

Executar checks de código, build, testes, smoke tests, filtros, âncoras, lightbox, formulário, assets, domínio e responsividade. Salvar checkpoint. Registrar limitações e pendências.

**Saída final:**

- site publicado e checkpoint;
- pacote de criativos por canal/etapa/placement;
- matriz de assets e proporções;
- headlines aprovadas e alternativas;
- mapa de campanhas e oferta;
- tracking/UTMs/eventos;
- CRM com origem;
- régua de relacionamento;
- playbook comercial;
- KPIs como faixas de planejamento;
- log de aprovações e pendências.

## Automação recomendada

Automatizar extração e catalogação de landing page, criação de matriz, nomes de arquivos, cálculo de contagens, geração de UTMs, validação de campos, criação de rotas/âncoras e relatório de QA. Manter aprovação humana para headline, oferta, identidade, claims, valores, responsáveis, publicação e mudanças no CRM.
