---
tipo: pesquisa
status: ativo
criado: 2026-07-01
atualizado: 2026-07-01
tags: [ia, claude, api, anthropic]
related: []
pergunta-central: Quais são as novidades da Claude API em julho de 2026?
relacionado-a: Claude Code
---

# Claude API — Novidades Julho 2026

Cobertura a partir de 28/06/2026. Itens anteriores (Fable 5, Mythos 5, Billing split, MCP Connector Okta, Azure/Foundry GA) já documentados.

---

## Claude Sonnet 5 — Lançamento (30/06/2026)

Anthropic lançou o **Claude Sonnet 5** em 30 de junho de 2026, posicionado como o modelo mais agêntico da família Sonnet até agora.

**Preços introdutórios** (válidos até 31 de agosto de 2026):
- Input: **$2 / milhão de tokens**
- Output: **$10 / milhão de tokens**

**Preços padrão** a partir de 1º de setembro de 2026:
- Input: **$3 / milhão de tokens**
- Output: **$15 / milhão de tokens**

**Especificações técnicas:**
- Janela de contexto: **1 milhão de tokens**
- Max output: **128 mil tokens**
- Cutoff de treinamento: janeiro de 2026

**Benchmark agentic coding:** 63,2% — acima do Sonnet 4.6 (58,1%) e abaixo do Opus 4.8 (69,2%).

O modelo foi designado como **default no Claude Code** e suporta as mesmas ferramentas e recursos de plataforma do Sonnet 4.6, com exceção do **Priority Tier**, que não está disponível no Sonnet 5.

---

## Consolidação de Tiers e Unificação de Rate Limits (26/06/2026)

Em 26 de junho de 2026, a Anthropic publicou uma nova estrutura de rate limits que:

- Reduziu de **4 tiers numéricos** (Tier 1, 2, 3, 4) para **3 tiers nomeados**: **Start**, **Build** e **Scale**
- Igualou os limites de RPM, ITPM e OTPM do **Claude Sonnet e Haiku** aos do **Claude Opus** em todos os tiers
- Nenhuma organização teve seus limites reduzidos — a maioria foi movida para um tier mais alto

Organizações que precisam de mais do que o Scale podem contatar o time comercial para um tier **Custom** sem teto definido.

---

## Depreciação do Fast Mode no Opus 4.7

- **Fast mode para Claude Opus 4.7 foi depreciado**
- Remoção agendada: **24 de julho de 2026**
- Após essa data, requisições com `speed: "fast"` para `claude-opus-4-7` retornarão erro
- Migração recomendada: Fast mode no **Claude Opus 4.8**

---

## Mudança no Billing de Recusas (Refusals)

- Requisições que retornam `stop_reason: "refusal"` **sem nenhum output gerado** não são mais cobradas
- Mudança reduz custo em pipelines com alta taxa de content filtering

---

## Cache Diagnostics — Beta Público

Nova feature em **public beta**: ao passar `diagnostics.previous_message_id` em uma requisição Messages, a API retorna `cache_miss_reason` explicando onde o prefixo do prompt cache divergiu da conversa anterior. Útil para depurar eficiência de caching em conversas longas.

---

## Parâmetro max_tokens no Advisor Tool

O **advisor tool** passou a suportar o parâmetro `max_tokens`, permitindo limitar o output do modelo advisor por chamada. Reduz latência e custo em pipelines que não precisam de respostas de tamanho completo.

---

## Melhorias no Claude Code (late junho/julho 2026)

- **Stream-stall hint**: wording ajustado para "Waiting for API response" e delay aumentado para **20 segundos** de silêncio de API (antes era imediato)
- **Streaming idle watchdog** ativado por padrão em todos os providers: aborta e retenta quando o stream não produz eventos por **5 minutos**
- Sonnet 5 agora é o modelo padrão no Claude Code

---

## Infraestrutura e Autenticação

Em rollout gradual ao longo de 2026:

- **WIF (Workload Identity Federation)**: substitui API keys estáticas por credenciais de curta duração emitidas por request — permite autenticar no Claude Platform da mesma forma que no restante do stack
- **Service Accounts**: cada workload pode ter sua própria identidade, roles e audit trail, sem compartilhar API key

---

## Fontes

- [Introducing Claude Sonnet 5 — Anthropic](https://www.anthropic.com/news/claude-sonnet-5)
- [Anthropic launches Claude Sonnet 5 as a cheaper way to run agents — TechCrunch](https://techcrunch.com/2026/06/30/anthropic-launches-claude-sonnet-5-as-a-cheaper-way-to-run-agents/)
- [Claude Sonnet 5 closes the gap to Opus — The Decoder](https://the-decoder.com/anthropics-new-claude-sonnet-5-closes-the-gap-to-the-pricier-opus-model-series/)
- [Claude API release notes — Platform Docs](https://platform.claude.com/docs/en/release-notes/overview)
- [Anthropic Rate Limits Unified — ChatForest](https://chatforest.com/builders-log/anthropic-rate-limits-start-build-scale-sonnet-haiku-opus-unified-june-2026-builder-guide/)
- [Claude Code Updates July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Anthropic Release Notes June 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Sonnet 5 pricing — Requesty](https://www.requesty.ai/models/anthropic/claude-sonnet-5)
