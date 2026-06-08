---
tipo: pesquisa
status: em-andamento
criado: 2026-06-08
atualizado: 2026-06-08
tags: [ia, dev, produtividade]
pergunta-central: Como otimizar custos e uso de tokens em LLMs em 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-07 - Economia de Tokens em LLMs]]", "[[Pesquisa - 2026-06-08 - Claude API e Anthropic SDK]]"]
---

# Economia de Tokens em LLMs — 2026-06-08

## Preços de Referência (junho 2026)

| Modelo | Input | Output |
|---|---|---|
| Claude Opus 4.8 | $5/MTok | $25/MTok |
| Claude Sonnet 4.6 | $3/MTok | $15/MTok |
| Claude Haiku 4.5 | $1/MTok | $5/MTok |
| GPT-4o | $2,50/MTok | ~$10/MTok |
| Gemini 3.5 Flash | $1,50/MTok | $9/MTok |
| Claude cache reads | $0,30/MTok | — |

**Tendência macro**: preços LLM caíram ~80% em 2026 vs 2025 para capacidade equivalente.

## Assimetria Output/Input

- Output custa **3–8× mais** que input (mediana 4:1)
- Controlar saída (comprimir respostas, usar structured output, limitar reasoning) é a **alavanca mais subestimada**
- Tool schemas podem representar **20–40% do contexto** total — minimizar schemas desnecessários

## Prompt Caching

- Anthropic: leituras de cache = **$0,30/MTok** (0,1× base = 90% off)
- Aplicar `cache_control` em prompts de sistema e schemas de ferramentas que não mudam
- Em loops de agente com sistema estático: economia de **50–90% em tokens de entrada**
- Cache TTL padrão: 5min (1,25× base); cache estendido: 1h (2× base)

## Semantic Caching

- **Redis LangCache** — ~73% de redução de custo em cargas de alta repetição; cache hits em milissegundos
- Confidence threshold: 70% similaridade + 30% frescor
- Complementa prompt caching exato para queries semanticamente similares mas textualmente diferentes

## Otimização Multi-Sessão

- **Memory tool** (beta pública, abril/2026) — agentes mantêm fatos curados em sistema de arquivos do servidor
- **Dreaming** (maio/2026) — consolida memória de forma assíncrona entre sessões; substitui replay de histórico
- Combinação Memory + Dreaming = maior ganho para aplicações de agente com estado persistente

## Diagnóstico

- **Cache Diagnostics** (`cache_miss_reason`) — em beta público; facilita debug de misses
- 40–60% dos budgets são desperdiçados sem instrumentação adequada
- Combinado de técnicas (caching + routing + output control) = **70–80% de economia real**

## Links

- [LLM Token Optimization 2026 — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [Token Optimization Saves 80% — ObviousWorks](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Optimization Strategies 2026](https://www.tokenoptimize.dev/guides/llm-token-optimization-strategies)
- [LLM Token Optimization: Routing & Caching](https://pristren.com/blog/llm-token-optimization-2026-model-routing-caching/)
