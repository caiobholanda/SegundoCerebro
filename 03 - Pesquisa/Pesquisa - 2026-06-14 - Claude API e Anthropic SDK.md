---
tipo: pesquisa
status: ativo
criado: 2026-06-14
atualizado: 2026-06-14
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 14 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-13 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-14

## Billing Split — AMANHÃ 15/06/2026 (CRÍTICO)

- **Agent SDK, claude -p, Claude Code GitHub Actions e apps de terceiros** (OpenClaw, Conductor, Zed, Jean) saem do pool de subscription e entram em pool de crédito separado
- Créditos mensais por plano:
  - Pro: **$20/mês**
  - Max 5x: **$100/mês**
  - Max 20x: **$200/mês**
- Créditos expiram mensalmente — não acumulam
- Quando crédito esgota: continua a taxas de API (ou para se usage credits não estiver habilitado)
- **Não afeta**: chat web/desktop/mobile e Claude Code no terminal interativo → permanecem nos limites de subscription
- Claim necessário por e-mail antes de 15/06 para receber o allowance

## Depreciações em 15/06/2026

- Modelos Sonnet 4 e Opus 4 originais são descontinuados **amanhã** — chamadas falham após essa data
- Migrar imediatamente para `claude-sonnet-4-6` e `claude-opus-4-8`

## Claude Fable 5

- Lançado em 09/06/2026 como primeiro modelo Mythos público
- Preço: $10/$50 MTok (input/output)
- Context window: 1M tokens; output máximo: 128K tokens
- **Grátis em Pro/Max/Team/Enterprise até 22/06** → a partir de 23/06 consome créditos medidos
- Classificadores automáticos de segurança (ciberseg/bio/quím/destilação) → redireciona para Opus 4.8 em >95% das sessões
- Disponível via API, AWS Bedrock, Google Vertex AI, Azure AI Foundry
- **Alerta**: governo dos EUA emitiu diretiva de controle de exportações suspendendo acesso de estrangeiros ao Fable 5 e Mythos 5 logo após o lançamento

## Claude Mythos 5

- Disponibilidade limitada apenas via Project Glasswing (parceiros aprovados)
- Sem data de GA anunciada

## Managed Agents — Novidades

- **Scheduled deployments**: agentes Managed agora rodam em cron
- **Vault environment variables**: armazenamento seguro de credenciais
- **Richer webhook events**: eventos mais granulares por sessão de agente
- Integrações com browser e CLI tools autenticadas

## Links

- [Anthropic Billing Split — The New Stack](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [Billing Change June 15 — UsageBox](https://usagebox.com/articles/anthropic-june-15-agent-sdk-credit-split-claude-4-retirement)
- [Claude Fable 5 Preços — Apidog](https://apidog.com/blog/claude-fable-5-pricing/)
- [Claude Fable 5 — MacMagazine](https://macmagazine.com.br/post/2026/06/09/anthropic-lanca-modelos-avancados-fable-5-e-mythos-5-para-o-claude/)
- [Claude API Pricing Overview — Anthropic Docs](https://platform.claude.com/docs/pt-BR/about-claude/pricing)
