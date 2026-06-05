---
tipo: pesquisa
status: em-andamento
criado: 2026-06-05
atualizado: 2026-06-05
tags: [pesquisa, economia-tokens, llm, prompt-caching, automatico]
related: ["[[Pesquisa - 2026-06-03 - Economia de Tokens em LLMs]]"]
pergunta-central: "Quais são as melhores técnicas de economia de tokens em LLMs em 2026?"
relacionado-a: [economia-tokens, llm, anthropic]
---

# Economia de Tokens em LLMs — 2026-06-05

## Destaque principal

**Context engineering > prompt shortening**: o maior insight consolidado em 2026 é que a alavanca real não é reduzir o prompt — é eliminar **contexto inflado**, **tool schemas ociosos** e **histórico de conversa obsoleto**. Equipes que aplicam isso cortam 40-60% do custo sem perda de qualidade.

## Benchmark consolidado (estado atual)

| Técnica | Economia Real | Complexidade |
|---------|--------------|--------------|
| Prompt caching Anthropic | ~90% (leituras de cache) | Baixa |
| Semantic caching Redis LangCache | ~70% (queries similares) | Média |
| Caching exact + semantic combinado | 50–90% | Média |
| Controle de output tokens | 2–5× (output > input) | Baixa |
| Memory tool + Dreaming (agentes) | Maior ganho multi-sessão | Alta |
| Combinado realista | **70–80%** | Variável |

## Técnicas e novidades (semana de 04–05/06)

### Prompt Caching
- **Automatic caching multi-turn**: um único `cache_control` top-level gerencia breakpoints automaticamente em conversas multi-turno — reduz esforço de implementação
- **Anthropic**: leituras de cache = $0,30/MTok (vs $3,00 base) — 90% de desconto
- **OpenAI**: até 50% de desconto em tokens cacheados

### Memory Tool + Dreaming (agentes)
- **Memory tool** (beta público, abr/2026): agentes mantêm fatos curados em filesystem server-side — substitui tens de milhares de tokens de histórico replicado por carga compacta
- **Dreaming** (anunciado mai/2026): memória persistente cross-session para agentes — maior ganho para workflows multi-sessão
- Combinação Memory + Dreaming = substituição do replay de histórico por contexto compacto

### Otimização de output
- Tokens de output custam 2–5× mais que input — controlar o tamanho da resposta é alavanca subestimada
- **YAML usa ~50% menos tokens que JSON** para mesma estrutura de dados

### Semantic Caching
- Redis LangCache: ~70% de redução para queries semanticamente similares
- Confiança: 70% similaridade + 30% frescor (heurística recomendada)

## Insight chave para 2026

> "Token optimization é um problema de **context engineering**, não de encurtamento de prompt."

Os principais desperdiçadores de tokens em produção:
1. Contexto inflado (histórico irrelevante)
2. Tool schemas ociosos incluídos em toda chamada
3. Histórico de conversa obsoleto que deveria ser sumarizado

## Links relacionados

- [[Pesquisa - 2026-06-03 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-01 - Economia de Tokens em LLMs]]

## Fontes

- [Token Optimization 2026: Saving up to 80% LLM Costs — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Optimization: Cut Costs & Latency 2026 — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [LLM Token Optimization Strategies: Complete Guide 2026 — TokenOptimize](https://www.tokenoptimize.dev/guides/llm-token-optimization-strategies)
- [LLM Caching Strategies 2026 — CallSphere](https://callsphere.ai/blog/llm-caching-strategies-cost-optimization-2026)
- [LLM Cost Optimization — Adaline](https://www.adaline.ai/blog/llm-cost-optimization-token-efficiency-caching-prompt-design)
