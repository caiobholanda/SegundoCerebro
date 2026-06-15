---
tipo: pesquisa
status: ativo
criado: 2026-06-15
atualizado: 2026-06-15
tags: [tokens, economia, custo, llm, otimizacao]
pergunta-central: Quais são as melhores estratégias de economia de tokens em LLMs em junho de 2026?
relacionado-a: Claude API, Deploy e Infraestrutura Cloud
related: ["[[Pesquisa - 2026-06-14 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-06-15

## Preços de Referência (Junho 2026)

| Modelo | Input ($/MTok) | Output ($/MTok) | Ratio |
|---|---|---|---|
| Claude Opus 4.8 | $5,00 | $25,00 | 5× |
| Claude Sonnet 4.6 | $3,00 | $15,00 | 5× |
| GPT-5.5 | $5,00 | $30,00 | 6× |
| Gemini 3.5 Flash | $1,50 | $9,00 | 6× |
| DeepSeek V3.2 | $0,14 | $0,28 | 2× |

- Padrão de mercado: flagship = $2-3 input / $10-15 output (multiplicador 4-5×)
- Output sempre mais caro — **controlar tokens de saída é a maior alavanca de economia**

## Estratégias de Otimização

### Prompt Caching (maior ganho)
- Anthropic: cache reads a $0,30/MTok (90% off vs $3,00 base)
- OpenAI: 50% de desconto em tokens cached
- Savings reais: 50-90% em workflows com contexto estável
- Colocar contexto estático no **início** de cada request maximiza cache hits

### Router Strategy (híbrida)
- 80% do tráfego de rotina → modelos budget (DeepSeek V3.2, Gemini Flash)
- 20% de tarefas críticas → frontier (Claude Opus 4.8, GPT-5.5)
- Economia projetada: 60-80% vs usar modelo único premium para tudo

### Context Control
- Limitar chunks de RAG a 2-3 fragmentos curtos: corta input tokens pela metade
- YAML usa 50% menos tokens que JSON equivalente
- Truncar histórico obsoleto antes de cada turno agêntico

### Batch Processing
- Non-urgent tasks em batch endpoint: até 50% adicional de economia
- Ideal para processamentos noturnos ou assíncronos

## Combinado Realista

Com todas as técnicas:
- **70-80%** de economia vs baseline sem otimização
- Caso extremo documentado: 99,98% de economia (base de 2MB, 1.000 req/dia: $200k → $40/mês)

## Impacto do Billing Split (HOJE)

- Agent SDK e `claude -p` agora têm **custo direto** via crédito separado (Pro: $20/mês)
- Context engineering em workflows agênticos deixou de ser "bom ter" → **obrigatório**
- Usuário Pro com $20/mês a $3/MTok input: ~6,67M tokens antes de esgotar o crédito
- Priorizar context compression antes de cada `claude -p` em automações

## Links

- [LLM Token Optimization — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [Token Optimization 80% Savings — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Optimization 2026 — Pristren](https://pristren.com/blog/llm-token-optimization-2026-model-routing-caching/)
- [LLM API Pricing Cheat-Sheet June 2026 — Decodes Future](https://www.decodesfuture.com/articles/llm-api-pricing-guide-2026-every-major-model-compared)
- [How I Cut LLM Costs 80% — Towards AI](https://pub.towardsai.net/how-i-cut-my-llm-costs-by-80-without-sacrificing-quality-85f8505eec96)
