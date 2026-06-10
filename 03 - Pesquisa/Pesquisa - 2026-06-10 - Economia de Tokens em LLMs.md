---
tipo: pesquisa
status: em-andamento
criado: 2026-06-10
atualizado: 2026-06-10
tags: [ia, dev, economia-tokens]
pergunta-central: Quais são as melhores práticas de otimização de custos com tokens LLM em 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-09 - Economia de Tokens em LLMs]]", "[[Pesquisa - 2026-06-10 - Claude API e Anthropic SDK]]"]
---

# Economia de Tokens em LLMs — 2026-06-10

## Resumo Consolidado 2026

Prompt caching deixou de ser opcional — é a maior otimização única disponível, superando até trocar para um modelo mais barato ou comprimir prompts.

## Potencial de Economia por Técnica

| Técnica | Economia |
|---|---|
| Model routing (tarefa→modelo certo) | 40–70% |
| Context compaction (compressão de contexto) | 50–70% de redução tokens |
| Prompt caching (cache hits) | até 90% |
| Batching (processamento em lote) | 50% de desconto |
| Combinação de técnicas | **70–85%** |

## Dados Práticos

- Uma sessão de coding de 100 turnos custa $13–31 em stack não-otimizada
- Com roteamento + cache + compressão: **< $3** — sem perda de qualidade em 80% dos turnos
- 40–60% do budget LLM típico é desperdiçado em contexto inflado

## 6 Alavancas Principais (2026)

1. **Model routing** — usar o modelo mais barato que resolve a tarefa
2. **Prompt caching** — Anthropic 90% off em cache hits ($0,30/MTok vs $3,00 base)
3. **Context hygiene** — remover histórico obsoleto, tool schemas ociosos
4. **Plan-then-execute** — planejar antes de agir reduz iterações
5. **Structured output** — YAML usa ~50% dos tokens de JSON
6. **MCP audit** — tool schemas ociam 20–40% do contexto

## Impacto do Claude Fable 5 / Mythos 5

- Novo tier de preços: $10/$50 MTok (2× o Opus 4.8)
- Context engineering ainda mais crítico nesse nível de preço
- 1M context window disponível — risco de contexto inflado aumenta

## Nota Importante sobre Caching Anthropic

- Anthropic cobra **25% a mais** no cache write inicial
- Sem vantagem em chamadas one-shot (sem reutilização do cache)
- Ideal para: system prompts longos, documentação, histórico recorrente

## Fontes
- [Token Optimization 2026 — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [Prompt Caching Cost Optimization 2026 — web2md.org](https://web2md.org/blog/prompt-caching-cost-optimization-guide-2026)
- [LLM Cost Optimization 5 Levers — Morph](https://www.morphllm.com/llm-cost-optimization)
- [LLM Token Optimization: Routing and Caching — pristren.com](https://pristren.com/blog/llm-token-optimization-2026-model-routing-caching/)
- [LLM Caching Strategies — CallSphere](https://callsphere.ai/blog/llm-caching-strategies-cost-optimization-2026)
- [LLM Token Optimization — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
