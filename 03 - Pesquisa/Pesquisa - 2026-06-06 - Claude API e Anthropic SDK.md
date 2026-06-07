---
tipo: pesquisa
status: em-andamento
criado: 2026-06-06
atualizado: 2026-06-06
tags: [pesquisa, claude, anthropic, api, automatico]
related: ["[[Pesquisa - 2026-06-05 - Claude API e Anthropic SDK]]"]
pergunta-central: "Quais são as principais novidades na Claude API e Anthropic SDK em 06/06/2026?"
relacionado-a: [claude-api, anthropic]
---

# Claude API e Anthropic SDK — 2026-06-06

## Destaque principal

**Depreciação de Sonnet 4 e Opus 4 em 9 dias**: `claude-sonnet-4-20250514` e `claude-opus-4-20250514` serão removidos em **15/06/2026 às 9h PT**. Após essa data, chamadas a esses model IDs retornam erro. Consumer Claude.ai e Claude Code gerenciado não são afetados — Anthropic seleciona modelo automaticamente nesses produtos.

## Novidades (semana de 05–06/06)

- **Migração de uma linha**: substituir o model string é a única mudança necessária na maioria dos casos — Sonnet 4 → `claude-sonnet-4-6`, Opus 4 → `claude-opus-4-8`
- **Billing split em 9 dias também**: a partir de 15/06, workloads automáticos param de consumir o mesmo pool da assinatura — crédito separado por plano (Pro $20, Max5x $100, Max20x $200)
- **Files API (beta)**: upload e referência de documentos em conversas sem reenviar contexto
- **Skills (beta)**: ensinar ao Claude melhores práticas específicas da organização
- **MCP Connector (beta)**: conectar Claude a qualquer servidor MCP remoto
- **Self-Hosted Sandboxes (public beta)**: execução de ferramentas move para ambiente próprio; loop do agente permanece na infraestrutura Anthropic
- **MCP Tunnels (research preview)**: agentes acessam servidores MCP em rede privada sem exposição pública
- **Anthropic: 80% do novo código em produção criado por Claude** — declaração publicada em VentureBeat

## Modelos recomendados pós-migração

| Legado (deprecado em 15/06) | Substituto recomendado | Preço |
|---|---|---|
| claude-sonnet-4-20250514 | claude-sonnet-4-6 | $3/$15 MTok |
| claude-opus-4-20250514 | claude-opus-4-8 | $5/$25 MTok |

## O que mudou desde 2026-06-05

- Contagem regressiva: 10 dias → **9 dias**
- Billing split e depreciação de modelos chegam **no mesmo dia** — impacto duplo em 15/06
- Anthropic Files API + Skills + MCP Connector todos em beta simultâneo

## Links relacionados

- [[Pesquisa - 2026-06-05 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-06-03 - Claude API e Anthropic SDK]]

## Fontes

- [Claude Sonnet 4 and Opus 4 Deprecation: Migration Guide — MindStudio](https://www.mindstudio.ai/blog/claude-sonnet-4-opus-4-deprecation-migration-guide)
- [Claude 4 Deprecated: 13-Day Countdown — APIpulse](https://www.getapipulse.com/blog-claude-4-deprecated-countdown.html)
- [Anthropic Ends Subscription Subsidy for Agents June 15 — TechTimes](https://www.techtimes.com/articles/317625/20260602/anthropic-ends-subscription-subsidy-agents-june-15-credit-pool-replaces-flat-rate-access.htm)
- [Anthropic says 80% of new production code is now authored by Claude — VentureBeat](https://venturebeat.com/technology/anthropic-says-80-of-its-new-production-code-is-now-authored-by-claude-how-your-enterprise-can-keep-up)
- [Claude Platform Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
