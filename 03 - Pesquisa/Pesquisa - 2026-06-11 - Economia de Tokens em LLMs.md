---
tipo: pesquisa
status: ativo
criado: 2026-06-11
atualizado: 2026-06-11
tags: [ia, dev, economia, tokens, custo]
pergunta-central: Como otimizar o custo de tokens LLM em produção em junho de 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-10 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-06-11

## Estrutura de Preços em 2026

- **Ratio output/input**: mediana **4×**, até **8×** em modelos premium
- Controlar tokens de saída é a alavanca mais subestimada
- Fable 5: $10/$50 → output ainda mais caro relativamente; context engineering crítico

## Desperdício Atual nas Equipes

- **40–60% dos budgets** de LLM desperdiçados em implementações subótimas
- **Maior fonte**: context bloat — enviar muito mais contexto do que o necessário
- Tool schemas ociosos: podem representar 20–40% do contexto total

## Estratégias de Otimização (Ranking por Impacto)

### 1. Prompt Caching (Anthropic)
- Cache reads: $0,30/MTok — **90% off** vs $3,00/MTok base
- Impacto: economia imediata em prompts repetitivos e contextos longos

### 2. RAG Otimizado
- Padrão ruim: 4–8 documentos completos no prompt
- Padrão correto: 2–3 chunks relevantes → redução >50% nos tokens de input sem perda de precisão

### 3. Model Routing
- Tarefas simples (classificação, extração) → modelos pequenos e baratos
- Raciocínio complexo → modelos grandes
- Economia: 40–60% com routing bem implementado

### 4. Context Management
- Limpar histórico obsoleto, remover tool schemas não usados na sessão
- Compaction API para sessões longas

## Tendência de Uso de Tokens

- **Programação** = 50%+ de todo uso de tokens no OpenRouter desde late 2025
- Uso em coding mantém crescimento em 2026
- Fable 5 ($10/$50) torna context engineering ainda mais crítico que Opus ($5/$25)

## Combinação Realista

| Técnica | Economia isolada |
|---------|-----------------|
| Prompt caching Anthropic | ~90% nos tokens cacheados |
| RAG otimizado | ~50% no input |
| Model routing | 40–60% geral |
| **Combinado (realista)** | **70–80%** |

## Links

- [[Pesquisa - 2026-06-10 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-11 - Claude API e Anthropic SDK]]
