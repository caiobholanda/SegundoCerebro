---
tipo: pesquisa
status: ativo
criado: 2026-06-15
atualizado: 2026-06-15
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 15 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-14 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-15

## Billing Split — HOJE (15/06/2026) — ATIVO AGORA

- **Mudança entra em vigor hoje**: Agent SDK, `claude -p`, Claude Code GitHub Actions e apps de terceiros (OpenClaw, Conductor, Zed, Jean) saem do pool de subscription e entram em crédito separado
- Créditos mensais por plano (billed at standard API rates):
  - Pro: **$20/mês**
  - Max 5x: **$100/mês**
  - Max 20x: **$200/mês**
- Créditos **não acumulam** mês a mês e são por usuário (não pooled)
- Quando crédito esgota: uso continua à taxa de API (ou para, se usage credits não estiver habilitado)
- **Não afetado**: chat web/desktop/mobile e Claude Code interativo no terminal permanecem em subscription
- Claim era **opt-in** — quem não reclamou por e-mail antes de hoje pode não ter o allowance

## Depreciações — HOJE (15/06/2026)

- **Sonnet 4** e **Opus 4** originais descontinuados hoje — chamadas falham a partir de agora
- Migração obrigatória:
  - `claude-sonnet-4` → `claude-sonnet-4-6`
  - `claude-opus-4` → `claude-opus-4-8`

## Claude Fable 5 — Status

- Grátis para Pro/Max/Team/Enterprise **até 22/06** → após isso, consome créditos medidos
- Preço pós-gratuidade: $10/$50 MTok (input/output)
- Context window: 1M tokens; output máximo: 128K tokens
- Alerta de controle de exportações EUA ainda em vigor — estrangeiros bloqueados

## Impacto do Billing Split na Prática

- Agentes headless, scripts `-p` e GitHub Actions agora têm custo explícito mensal
- Usuário Pro com $20/mês a $3/MTok input → ~6,67M tokens de input/mês antes de esgotar
- Context engineering crítico: cada token em workflow agêntico agora tem custo direto
- Multi-model routing ganha ainda mais valor como estratégia de economia

## Links

- [Anthropic Ends Subscription Subsidy for Agents — TechTimes](https://www.techtimes.com/articles/317625/20260602/anthropic-ends-subscription-subsidy-agents-june-15-credit-pool-replaces-flat-rate-access.htm)
- [Billing Split Break-Even Decision — Context Studios](https://www.contextstudios.ai/blog/anthropics-june-15-billing-split-your-break-even-decision)
- [June 15 Billing Change Explained — Pravinkumar](https://www.pravinkumar.co/blog/claude-june-15-billing-change-explained-2026)
- [Claude Credit Overhaul 2026 — Digital Applied](https://www.digitalapplied.com/blog/anthropic-claude-credit-overhaul-june-15-2026)
- [Claude Agent SDK Billing Splits — VantagePoint](https://vantagepoint.io/blog/ai/claude-agent-sdk-billing-change-june-15)
