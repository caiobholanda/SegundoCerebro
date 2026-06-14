---
tipo: pesquisa
status: ativo
criado: 2026-06-13
atualizado: 2026-06-13
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-12 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-13

## Modelo Claude Fable 5 (Mythos público)

- **Claude Fable 5** confirmado como primeiro modelo Mythos disponível ao público geral
- Lançado em 09/06/2026, ainda amplamente discutido/adotado na semana de 13/06
- Preço: $10/$50 MTok (input/output)
- Context window: 1M tokens; output máximo: 128K tokens
- Inclui **always-on adaptive thinking** e classificadores de segurança automáticos
- Classifica requests de ciberseg/bio/quím/destilação → redireciona para Opus 4.8 (+95% sessões não acionam)
- Disponível via API, AWS Bedrock, Google Vertex AI, Azure AI Foundry
- **Claude Mythos 5** ainda em disponibilidade limitada via Project Glasswing (parceiros selecionados)

## Billing Split — 15/06/2026 (EM DOIS DIAS)

- Agent SDK, Claude Code headless, GitHub Actions e agentes de terceiros → **crédito separado à taxa de API**
- Chat interativo no Claude.ai e terminal Claude Code → mantidos nos planos existentes
- Pro: $20/mês crédito API; Max 5x: $100/mês; Max 20x: $200/mês
- **Crítico**: sem claim por e-mail antes de 15/06 = sem allowance de crédito separado

## Managed Agents — Novidades

- **Scheduled deployments** de Managed Agents agora disponíveis na plataforma
- **Vault environment variable credentials** — armazenamento seguro de credenciais em agentes
- **Richer session thread webhook events** — eventos de webhook mais granulares para sessões de agente

## Depreciações em 15/06/2026

- Modelos deprecated em 15/06 (Sonnet 4 + Opus 4 originais) — após essa data, chamadas falham
- Migrar imediatamente para Sonnet 4.6 / Opus 4.8

## Links
- [Anthropic Claude News June 2026](https://blog.mean.ceo/anthropic-claude-news-june-2026/)
- [Release Notes Anthropic — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Billing Change June 15 — Explicado](https://www.pravinkumar.co/blog/claude-june-15-billing-change-explained-2026)
- [Claude Fable 5 — TechCrunch](https://techcrunch.com/2026/06/09/anthropics-claude-fable-5-is-a-version-of-mythos-the-public-can-access-today/)
