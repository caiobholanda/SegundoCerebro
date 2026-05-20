---
tipo: pesquisa
status: ativo
criado: 2026-05-17
atualizado: 2026-05-17
tags: [ia, dev, claude, produtividade, financas]
pergunta-central: Quais são as técnicas mais eficazes em 2026 para reduzir custo e consumo de tokens em LLMs?
relacionado-a: Claude API, Deploy e Infraestrutura
---

# Pesquisa — Economia de Tokens (maio 2026)

## Resultado combinado típico

| Estratégia | Redução de custo | Trade-off |
|---|---|---|
| Prompt caching (Anthropic) | até 90% | TTL 5min, estrutura rígida |
| Semantic caching (Redis LangCache) | até 70% | Threshold similaridade tunável |
| Compressão leve (2–3×) | ~80% | <5% impacto na qualidade |
| Compressão moderada (5–7×) | 85–90% | Aceitável para muitas apps |
| Model routing inteligente | 60–80% | Requer classificador de tasks |
| Combinado (todas as técnicas) | **50–80%** | Depende do workload |

## 1. Prompt Caching (Anthropic)

Cache reads custam **0,1× o preço base de input** — 90% de desconto. TTL: 5 minutos.

Estrutura ideal: colocar conteúdo estático (system prompt, documentos de referência) no início da mensagem com `"cache_control": {"type": "ephemeral"}`.

**Compaction API** (complementar): compacta contexto de conversas longas preservando informação essencial. Suporta Opus 4.7, Opus 4.6, Sonnet 4.6.

## 2. Semantic Caching

Redis LangCache e equivalentes reconhecem queries semanticamente similares (não idênticas) e retornam resultado cacheado sem chamar a API.

- Threshold típico: **cosine similarity ≥ 0,85**
- Fórmula de confiança usada em produção: `70% similaridade + 30% frescor`
- Redução em LLM calls: até 70%

```python
# Exemplo com Redis LangCache
from langcache import SemanticCache

cache = SemanticCache(threshold=0.85, ttl=3600)

def ask(query: str) -> str:
    cached = cache.get(query)
    if cached:
        return cached
    result = claude.complete(query)
    cache.set(query, result)
    return result
```

## 3. Compressão de Prompts (LLMLingua)

| Versão | Compressão | Overhead latência | Recomendação |
|---|---|---|---|
| LLMLingua (original) | até 20× | ~21s | Batch/offline |
| LLMLingua-2 | até 20× | <3s | Near-realtime viável |

Caso documentado: 800 tokens → 40 tokens (95% redução) com perda mínima de qualidade para tarefas estruturadas.

**Inviável para tempo real** com APIs comerciais em casos sensíveis à latência — use em pipelines assíncronos ou batch.

## 4. Model Routing Inteligente

Classificador leve avalia a complexidade da query antes de rotear para o modelo:

```python
def route(query: str) -> str:
    complexity = classifier.score(query)  # 0-1
    if complexity < 0.3:
        return "claude-haiku-4-5"     # $1/$5
    elif complexity < 0.7:
        return "claude-sonnet-4-6"    # $3/$15
    else:
        return "claude-opus-4-7"      # $5/$25
```

Resultado: 60–80% de economia com qualidade equivalente ou superior por task.

## 5. Context Management

- Limitar retrieval RAG a um **budget fixo de tokens** (ex.: 8K máximo por chamada)
- Priorizar relevância sobre volume ao montar contexto
- Usar `claude project purge` para limpar histórico de projetos antigos

## 6. Batch Processing

- 50% de desconto no preço padrão da API Anthropic
- Resultados em até 24h
- Ideal para: avaliações offline, geração em lote, pipelines assíncronos

## Fontes

- [LLM Token Optimization 2026 (Redis)](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [Token Optimization: 80% savings (ObviousWorks)](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [8 Strategies 80% Cut (PremAI)](https://blog.premai.io/llm-cost-optimization-8-strategies-that-cut-api-spend-by-80-2026-guide/)
- [LLM Caching Strategies 2026 (CallSphere)](https://callsphere.ai/blog/llm-caching-strategies-cost-optimization-2026)
- [How I Cut LLM Costs 80% (Towards AI)](https://pub.towardsai.net/how-i-cut-my-llm-costs-by-80-without-sacrificing-quality-85f8505eec96)

## Conexões

- [[Pesquisa - 2026-05-16 - Economia de Tokens]]
- [[Pesquisa - 2026-05-17 - Claude API]]
- [[Pesquisa - 2026-05-16 - Claude API]]
