---
tipo: pesquisa
criado: 2026-05-28
atualizado: 2026-05-28
pergunta-central: Quais são as melhores técnicas para reduzir custo de tokens em LLMs em 2026?
relacionado-a: [claude-api, dev, ia]
tags: [pesquisa, ia, dev, economia]
---

# Pesquisa - Economia de Tokens em LLMs — 2026-05-28

## ❓ Pergunta central
Quais são as melhores técnicas para reduzir custo de tokens em LLMs em 2026?

## 🎯 Síntese
Combinação de prompt caching + semantic caching + controle de output entrega 60-80% de redução real. Prompt caching Anthropic ainda é o maior lever individual (90% off em cache reads). Chain of Draft usa apenas 7,6% dos tokens do Chain of Thought mantendo a precisão. Estrutura de dados importa: YAML usa ~50% menos tokens que JSON equivalente.

## 🔬 Detalhes

### Prompt Caching — maior lever individual
- Anthropic cache reads: $0,30/MTok vs $3,00/MTok base (90% desconto)
- Cache 1h: 2× base | Cache 5min: 1,25× base
- Ativar para qualquer system prompt > 1000 tokens
- OpenAI: 50% desconto em tokens cacheados
- Cache Diagnostics beta: `cache_miss_reason` para debug de misses

### Semantic Caching
- Redis LangCache: ~73% redução em chamadas à API
- Queries semelhantes ("Qual o tempo?", "Me diz a temperatura hoje") batem no mesmo cache
- Confidence score = 70% similaridade semântica + 30% frescor do cache
- Threshold recomendado: 0,85 para produção

### Exact-Match Caching
- Hash do prompt completo → cache da resposta
- 100% redução no custo quando hit
- Ideal para prompts repetitivos (RAG com contexto fixo, templates)

### Chain of Draft (CoD)
- Substituto para Chain of Thought em tarefas de raciocínio
- Usa apenas 7,6% dos tokens do CoT com mesma precisão
- Técnica: pedir ao modelo que esboce em passos mínimos antes de responder

### Controle de Output
- Tokens de output custam 2-5× mais que tokens de input
- Controlar verbosidade da saída é alavanca subestimada
- Usar JSON estruturado quando possível (previne explicações desnecessárias)
- YAML usa ~50% menos tokens que JSON equivalente

### Model Routing
- 40-60% de economia ao rotear queries simples para modelos menores
- Haiku 4.5 para tarefas de classificação/extração simples
- Sonnet 4.6 para raciocínio médio
- Opus 4.7 apenas para tarefas que exigem máxima capacidade

### Combinação de técnicas — resultados reais
| Técnica | Redução individual |
|---------|-------------------|
| Prompt caching | 30-90% |
| Semantic caching | 50-73% |
| Model routing | 40-60% |
| CoD vs CoT | ~92% em raciocínio |
| **Combinado** | **60-80% real** |

### Prompt Tightening
- Eliminar verbosidade desnecessária no prompt
- Remover exemplos redundantes
- Subword tokenization awareness (palavras compostas, underscores, hífens)

## 🔗 Conexões
- [[Pesquisa - 2026-05-28 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-28 - Deploy e Infraestrutura Cloud]]
- [[Pesquisa - 2026-05-27 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [Token optimization 2026: Saving up to 80%](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Cost Optimization: 8 Strategies — PremAI](https://blog.premai.io/llm-cost-optimization-8-strategies-that-cut-api-spend-by-80-2026-guide/)
- [LLM Token Optimization — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [LLM Caching Strategies — CallSphere](https://callsphere.ai/blog/llm-caching-strategies-cost-optimization-2026)
- [LLM Token Optimization Complete Guide 2026](https://www.tokenoptimize.dev/guides/llm-token-optimization-strategies)

## 🚧 Lacunas
- Benchmarks comparativos entre Redis LangCache e pgvector para semantic caching
- Custo de overhead do semantic caching em latência (p99)
- Suporte a CoD em modelos não-Anthropic
