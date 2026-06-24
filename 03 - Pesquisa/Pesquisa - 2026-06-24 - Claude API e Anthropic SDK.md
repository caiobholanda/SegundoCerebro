---
tipo: pesquisa
status: ativo
criado: 2026-06-24
atualizado: 2026-06-24
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 24 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-23 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-24

## Fable 5 — D+2 Pós-Período Gratuito

- Fable 5 encerrou o acesso gratuito em 22/06 — hoje é D+2 cobrando créditos
- Preço: $10/MTok input, $50/MTok output (Mythos-class)
- 1M tokens de contexto padrão, 128K output máximo
- Disponível: API direta, AWS Bedrock, Vertex AI, Microsoft Foundry
- **Mythos 5**: restrito a parceiros aprovados no Project Glasswing (sem disponibilidade geral)

## Billing Split — D+9

- Vigente desde 15/06 — hoje é D+9
- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros em crédito separado
- Pro $20/mês | Max5x $100/mês | Max20x $200/mês (não acumula entre meses)
- Sem cobrança por recusas: requisições com `stop_reason: "refusal"` sem output não são cobradas (desde 02/06)

## Preços Atuais por Modelo

| Tier | Modelo | Input / Output (MTok) |
|------|--------|-----------------------|
| Mythos-class | claude-fable-5 | $10 / $50 |
| Flagship | claude-opus-4-8 | $5 / $25 |
| Balanced | claude-sonnet-4-6 | $3 / $15 |
| Fast | claude-haiku-4-5 | $1 / $5 |

## Estratégias de Economia Disponíveis

- **Batch API**: 50% desconto fixo, processamento assíncrono em janela de 24h
- **Prompt Caching**: leituras em cache a ~10% do input normal (~90% off)
- Combinando ambas: custo real reduzido 40–80% em produção

## Mudanças Técnicas Recentes

- **Código execution**: limite de 90 segundos por célula
- **Web tool**: parâmetro `response_inclusion` (11/06) — controla retorno da ferramenta web
- **Opus 4.8 contexto 1M padrão**: sem necessidade de header beta opt-in

## Depreciações Ativas (desde 15/06)

- `claude-sonnet-4` e `claude-opus-4` originais **desativados** — chamadas falham
- Migração: `claude-sonnet-4` → `claude-sonnet-4-6` | `claude-opus-4` → `claude-opus-4-8`

## Links

- [Claude Fable 5 and Mythos 5 — Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Visão geral dos modelos — Claude API Docs](https://platform.claude.com/docs/pt-BR/about-claude/models/overview)
- [Preços — Claude API Docs](https://platform.claude.com/docs/pt-BR/about-claude/pricing)
- [Quanto Custa a API Claude em 2026 — APIdog](https://apidog.com/blog/claude-api-cost/)
