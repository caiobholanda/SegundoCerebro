---
tipo: pesquisa
status: ativo
criado: 2026-06-20
atualizado: 2026-06-20
tags: [llm, tokens, custo, otimizacao]
pergunta-central: Quais são as melhores estratégias de otimização de custo de tokens em LLMs em 2026?
relacionado-a: Claude API, Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-17 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-06-20

## Custo Base (Anthropic — junho 2026)

| Modelo | Input | Output |
|--------|-------|--------|
| claude-fable-5 | $10/MTok | $50/MTok |
| claude-opus-4-8 | $5/MTok | $25/MTok |
| claude-sonnet-4-6 | $3/MTok | $15/MTok |
| claude-haiku-4-5 | $1/MTok | $5/MTok |
| Cache reads | $0,30/MTok | — |

Output tokens: **mediana 4× mais caro** que input (até 8× em casos premium)

## Estratégias de Alto Impacto

### 1. Prompt Caching (90% off em cache hits)
- Cache reads Anthropic: $0,30/MTok vs $3,00 base (90% desconto)
- Cache write: +25% sobre o preço base — sem vantagem em one-shots
- Cache TTL: 5 min (1,25×) ou 1 hora (2×) de base
- Melhor resultado: contexto estável reutilizado em múltiplas requisições

### 2. Semantic Caching
- Redis LangCache: ~70-73% de economia em cache hits semânticos
- Elimina chamada ao LLM em cache hits (não apenas reduz tokens)
- Combinado com exact caching: cobertura de 50-90%

### 3. Model Routing
- Roteamento de subtarefas simples para modelos baratos: 70-80% de economia
- Agentes usam ~7× mais tokens que sessões padrão → routing ainda mais crítico
- Regra: sub-agentes de triagem = Haiku; raciocínio complexo = Opus/Fable

### 4. Context Optimization
- Persistent memory substitui replay de histórico (single most impactful para agentes multi-sessão)
- Limitar RAG a budget fixo de tokens — pipelines RAG por padrão passam 4-8 docs quando snippet basta
- Tool schemas ociosos consomem 20-40% do contexto — remover ferramentas não usadas

### 5. Controle de Output
- Output 2-8× mais caro que input: controlar saída é alavanca subestimada
- Billing split D+5: context engineering agora crítico para workflows agênticos

## Realidade Combinada

- Combinando técnicas: **70-80% de economia real** em produção
- 40-60% dos budgets desperdiçados (context bloat + tool schemas ociosos + histórico obsoleto)
- Contexto inflado = maior fonte individual de desperdício

## Links

- [LLM Token Optimization — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [Token optimization 2026: até 80% economia — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Management 2026 — Silent Infotech](https://silentinfotech.com/blog/ai-9/guide-to-llm-token-management-347)
- [LLM Optimization Guide: Token Budgets — Medium](https://medium.com/@QuarkAndCode/llm-optimization-guide-token-budgets-latency-and-cost-7ed701283ce5)
