---
tipo: pesquisa
status: em-andamento
criado: 2026-06-05
atualizado: 2026-06-05
tags: [pesquisa, claude, anthropic, api, automatico]
related: ["[[Pesquisa - 2026-06-03 - Claude API e Anthropic SDK]]"]
pergunta-central: "Quais são as principais novidades na Claude API e Anthropic SDK em 05/06/2026?"
relacionado-a: [claude-api, anthropic]
---

# Claude API e Anthropic SDK — 2026-06-05

## Destaque principal

**Depreciação de Sonnet 4 e Opus 4 em 10 dias**: `claude-sonnet-4-0` e `claude-opus-4-0` serão removidos da API em **15/06/2026**. Chamadas com esses identificadores passarão a retornar erro. Migração recomendada: Sonnet 4 → **Sonnet 4.6**, Opus 4 → **Opus 4.8**.

## Novidades (semana de 04–05/06)

- **Prazo crítico confirmado**: 10 dias para migrar de Sonnet 4 / Opus 4 — sem exceções anunciadas
- **Auto mode para Pro com Sonnet 4.6**: background safety checks automáticos + insights de uso via `/usage` + `/code-review` como novo comando disponível
- **Opus 4.8 padrão consolidado**: Max, Team Premium, Enterprise pay-as-you-go e API direta — preços inalterados ($5/$25 MTok)
- **Mythos Preview ativo**: pequeno conjunto de organizações usando via Project Glasswing; lançamento público "nas próximas semanas" (ainda sem data)
- **Dynamic Workflows**: orquestração de centenas de subagentes paralelos em sessão única — verificação de saídas antes de retornar resultados (Research Preview)

## Preços (sem alteração)

| Modelo | Input | Output | Fast Mode Input | Fast Mode Output |
|--------|-------|--------|-----------------|-----------------|
| Opus 4.8 | $5/MTok | $25/MTok | $10/MTok | $50/MTok |
| Sonnet 4.6 | $3/MTok | $15/MTok | — | — |
| Haiku 4.5 | $1/MTok | $5/MTok | — | — |

## O que mudou desde 2026-06-03

- Depreciação de Sonnet 4 / Opus 4 mais urgente: 12 dias → **10 dias**
- Auto mode (Pro + Sonnet 4.6) confirma rollout mais amplo
- Pesquisa Sacra (atualizada 02/06): Anthropic projetado em crescimento acelerado de ARR

## Links relacionados

- [[Pesquisa - 2026-06-03 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-06-01 - Claude API e Anthropic SDK]]

## Fontes

- [Model deprecations — Claude API Docs](https://platform.claude.com/docs/en/about-claude/model-deprecations)
- [Claude Sonnet 4 and Opus 4 Deprecation: Migration Guide — MindStudio](https://www.mindstudio.ai/blog/claude-sonnet-4-opus-4-deprecation-migration-guide)
- [Anthropic Release Notes June 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Platform Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
- [Anthropic Claude API Pricing 2026 — CloudZero](https://www.cloudzero.com/blog/claude-api-pricing/)
