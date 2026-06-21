---
tipo: pesquisa
status: ativo
criado: 2026-06-20
atualizado: 2026-06-20
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 20 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-17 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-20

## Billing Split — D+5

- Vigente desde 15/06 — hoje é D+5
- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consumindo crédito separado
- Pro $20/mês, Max5x $100/mês, Max20x $200/mês (não acumula)
- Fable 5 grátis até **22/06** (2 dias restantes) → após: $10/$50 MTok medidos

## WIF e Service Accounts

- **Workload Identity Federation (WIF)**: substitui chaves API estáticas por credenciais de curta duração emitidas no momento da requisição
- Permite autenticar com a Claude Platform da mesma forma que com o resto da infraestrutura cloud
- **Service accounts**: cada carga de trabalho tem identidade própria, funções e trilha de auditoria — sem chave API compartilhada

## Managed Connectors MCP

- Anthropic adicionou conectores MCP gerenciados pela empresa, começando com **Okta**
- Admins provisionam uma vez → usuários obtêm acesso automaticamente, sem ação manual
- Expansão para outros provedores prevista

## Fable 5 / Mythos 5 — Acesso Restrito

- Claude Fable 5 disponível na API, AWS Bedrock, Vertex AI, Microsoft Foundry desde 09/06
- **Diretiva de exportações EUA (12/06)**: Anthropic suspendeu acesso estrangeiro ao Fable 5 e Mythos 5 no Bedrock
- Mythos 5: restrito a parceiros aprovados no Projeto Glasswing
- Capacidades: 1M tokens de contexto, 128K output, pensamento adaptativo sempre ativo

## Depreciações — Vigentes desde 15/06

- **Sonnet 4** e **Opus 4** originais desativados — chamadas falham
- Migrar: `claude-sonnet-4` → `claude-sonnet-4-6` | `claude-opus-4` → `claude-opus-4-8`

## Apple Foundation Models Framework

- Claude integrado nativamente no Apple Foundation Models Framework
- Disponível em iOS 27, iPadOS 27, macOS 27, visionOS 27, watchOS 27
- Suporte a streaming, chamadas de ferramenta e respostas estruturadas em SwiftUI
- Apps Apple usam Claude sem chamada direta à API externa

## Modelo mais recente por tier

| Tier | Modelo |
|------|--------|
| Frontier | claude-fable-5 (Mythos-class) |
| Flagship | claude-opus-4-8 |
| Balanced | claude-sonnet-4-6 |
| Fast | claude-haiku-4-5 |

## Links

- [Introducing Claude Fable 5 and Mythos 5 — Docs](https://platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5)
- [Anthropic Release Notes junho 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Suspensão Fable 5/Mythos 5 — Export Control](https://www.gtlaw.com/en/insights/2026/6/ai-company-anthropic-suspends-access-to-claude-fable-5-claude-mythos-5-following-us-export-control-directive)
