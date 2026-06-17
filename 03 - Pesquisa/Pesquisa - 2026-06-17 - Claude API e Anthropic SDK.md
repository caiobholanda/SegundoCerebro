---
tipo: pesquisa
status: ativo
criado: 2026-06-17
atualizado: 2026-06-17
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 17 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-16 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-17

## Billing Split — D+2

- Billing split está em vigor desde 15/06 — hoje é D+2
- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consumindo crédito separado
- Quem não fez claim por e-mail pode estar sem allowance — verificar via `/usage`
- Pro $20/mês, Max5x $100/mês, Max20x $200/mês de crédito separado (não acumula)

## Fable 5 / Mythos 5 — Status

- Claude Fable 5 disponível na API, AWS Bedrock, Vertex AI e Microsoft Foundry desde 09/06
- Grátis Pro/Max/Team/Enterprise **até 22/06** → após: $10/$50 MTok medidos
- Context window 1M tokens, output máximo 128K tokens, pensamento adaptativo sempre ativo
- Mythos 5: acesso restrito a parceiros aprovados no Projeto Glasswing
- **Controle de exportações EUA**: diretiva emitida em 12/06 suspende acesso estrangeiro ao Fable 5 e Mythos 5

## Depreciações — Vigentes desde 15/06

- **Sonnet 4** e **Opus 4** originais desativados — chamadas falham
- Migrar: `claude-sonnet-4` → `claude-sonnet-4-6` | `claude-opus-4` → `claude-opus-4-8`

## Managed Agents

- Scheduled deployments disponíveis
- Vault env credentials para variáveis de ambiente em runtime
- Session thread webhooks mais ricos

## Apple Foundation Models Framework

- Claude integrado nativamente no Apple Foundation Models Framework
- Disponível em iOS 27, iPadOS 27, macOS 27, visionOS 27, watchOS 27
- Apps Apple podem usar Claude sem chamar a API externa diretamente

## Modelo mais recente por tier

| Tier | Modelo |
|------|--------|
| Frontier | claude-fable-5 (Mythos) |
| Flagship | claude-opus-4-8 |
| Balanced | claude-sonnet-4-6 |
| Fast | claude-haiku-4-5 |

## Links

- [Visão geral dos modelos — Claude API Docs](https://platform.claude.com/docs/pt-BR/about-claude/models/overview)
- [Introducing Claude Fable 5 and Mythos 5 — Docs](https://platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5)
- [Anthropic Release Notes junho 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
