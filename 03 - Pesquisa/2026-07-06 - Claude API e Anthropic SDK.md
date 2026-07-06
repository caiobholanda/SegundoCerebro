---
tipo: pesquisa
status: em-andamento
criado: 2026-07-06
atualizado: 2026-07-06
pergunta-central: Quais são as novidades da Claude API e modelos Anthropic em julho 2026?
relacionado-a: [Claude Code e Claude.ai, Economia de Tokens em LLMs]
related: ["[[2026-07-06 - Claude Code — CLI e agentes]]", "[[2026-07-06 - Economia de Tokens em LLMs]]"]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK (2026-07-06)

## Síntese

Dois novos modelos de topo lançados: **Claude Fable 5** (GA em 9/jun/2026) e **Claude Mythos 5** (acesso limitado). Ambos têm janela de 1M tokens e até 128k output, com **adaptive thinking** sempre ativo. Preço padrão $10/$50 por MTok — com promoção introdutória até 31/ago em $2/$10.

## Novos Modelos

| Modelo | Lançamento | Input (MTok) | Output (MTok) | Contexto |
|---|---|---|---|---|
| Claude Fable 5 | 09/jun/2026 | $10 | $50 | 1M tokens |
| Claude Mythos 5 | jun/2026 | $10 | $50 | 1M tokens (limitado) |
| Claude Opus 4.8 | 28/mai/2026 | $5 | $25 | — |
| Claude Sonnet 4.6 | — | $3 | $15 | — |
| Claude Haiku 4.5 | — | $1 | $5 | — |

- **Claude Fable 5**: GA, disponível na API para todos
- **Claude Mythos 5**: Project Glasswing — disponibilidade limitada para clientes aprovados, mesmas specs do Fable 5
- **Opus 4.8 Fast Mode**: $10/$50 por MTok (2x preço padrão)
- **Promoção até 31/ago/2026**: Sonnet 4.6 com desconto introdutório $2/$10 → volta para $3/$15 em setembro

## Destaques Técnicos

- Fable 5 e Mythos 5 têm **adaptive thinking** sempre ativo (sem flag de ativação)
- Output máximo: 128k tokens por resposta
- Janela de contexto: 1M tokens por padrão

## Lacunas

- Benchmarks comparativos Fable 5 vs GPT-5.4 vs Gemini 3.5 Flash ainda escassos
- Disponibilidade do Project Glasswing para novos clientes não confirmada
- Detalhes de pricing de batch para Fable 5

## Conexões

- [[2026-07-06 - Claude Code — CLI e agentes]]
- [[2026-07-06 - Economia de Tokens em LLMs]]
- [[2026-07-06 - Inteligência Artificial — avanços]]

## Fontes

- [Visão geral dos modelos - Claude Platform Docs](https://platform.claude.com/docs/pt-BR/about-claude/models/overview)
- [Anthropic API Pricing in 2026 - Finout](https://www.finout.io/blog/anthropic-api-pricing)
- [Claude API Cost 2026 - APIdog](https://apidog.com/blog/claude-api-cost/)
