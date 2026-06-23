---
tipo: pesquisa
status: ativo
criado: 2026-06-23
atualizado: 2026-06-23
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 23 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-20 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-23

## Fable 5 — Pós-período Gratuito

- Fable 5 grátis para Pro/Max/Team **encerrou em 22/06** — a partir de hoje consome créditos medidos
- Preço: $10/MTok input, $50/MTok output
- 1M tokens de contexto padrão, 128K output máximo
- Disponível: API direta, AWS Bedrock, Vertex AI, Microsoft Foundry
- **Mythos 5**: restrito a parceiros aprovados no Projeto Glasswing

## Billing Split — D+8

- Vigente desde 15/06 — hoje é D+8
- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consumindo crédito separado
- Pro $20/mês | Max5x $100/mês | Max20x $200/mês (não acumula entre meses)
- Sem cobrança por recusas: desde 02/06, requisições com `stop_reason: "refusal"` sem output não são cobradas

## Mudanças Técnicas Recentes

- **Código execution**: limite de 90 segundos por célula
- **Web tool**: novo parâmetro `response_inclusion` (11/06) — controla o que é retornado da ferramenta web
- **Contexto 1M padrão**: Opus 4.8 envia 1M tokens como padrão (não requer mais header beta opt-in)

## Depreciações Ativas (desde 15/06)

- `claude-sonnet-4` e `claude-opus-4` originais **desativados** — chamadas falham
- Migração obrigatória:
  - `claude-sonnet-4` → `claude-sonnet-4-6`
  - `claude-opus-4` → `claude-opus-4-8`

## Modelos Ativos por Tier

| Tier | Modelo | Preço Input/Output |
|------|--------|--------------------|
| Mythos-class | claude-fable-5 | $10 / $50 MTok |
| Flagship | claude-opus-4-8 | $5 / $25 MTok |
| Balanced | claude-sonnet-4-6 | $3 / $15 MTok |
| Fast | claude-haiku-4-5 | $1 / $5 MTok |

## Links

- [Introducing Claude Fable 5 and Mythos 5 — Docs](https://platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5)
- [Anthropic Release Notes junho 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Latest Anthropic API release notes (June 2026)](https://fazm.ai/t/latest-anthropic-api-release-notes-june-2026)
