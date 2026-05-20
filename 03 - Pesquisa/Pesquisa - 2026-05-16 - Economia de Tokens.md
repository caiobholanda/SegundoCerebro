---
tipo: pesquisa
status: ativo
criado: 2026-05-16
atualizado: 2026-05-16
tags: [ia, dev, claude, produtividade, financas]
pergunta-central: Quais técnicas concretas reduzem custo de tokens em LLMs em 2026?
relacionado-a: Claude API
---

# Economia de Tokens — Técnicas 2026

## Resultado Geral Alcançável

Com a combinação das técnicas abaixo, a maioria das aplicações atinge **60–80% de redução de custo** sem perda perceptível de qualidade.

## 1. Prompt Compression — LLMLingua

**LLMLingua** (Microsoft Research) é o estado da arte em 2026 para compressão de prompts:

- Usa um modelo classificador pequeno para identificar e remover tokens de baixo valor antes de enviar ao LLM principal
- **20× de compressão** com apenas 1,5 ponto de queda em accuracy nos benchmarks
- Na prática, workloads de produção usam 4–10× de compressão (qualidade degrada além disso)

**Caso real**: redução de custo de $42K para $2,1K em um workload real de produção.

```python
# Exemplo conceitual de uso
from llmlingua import PromptCompressor

compressor = PromptCompressor()
compressed = compressor.compress_prompt(
    prompt,
    ratio=0.5,  # reduz prompt à metade
    target_token=300
)
```

## 2. Relevance Filtering

Antes de enviar contexto ao LLM, medir relevância de cada trecho e incluir apenas o que é genuinamente necessário para a tarefa:

- Evita dump de documentos inteiros quando apenas uma seção importa
- Combina bem com RAG (Retrieval Augmented Generation): buscar apenas os chunks mais relevantes

## 3. Prompt Caching (específico Claude)

A alavanca mais poderosa para aplicações Claude com contexto reutilizado:

- Cache reads custam **0,10×** o preço base (90% de desconto)
- Aplicar em: system prompts longos, documentação, código de contexto
- Cache de 5 min: 1,25× para escrever; Cache de 1 hora: 2× para escrever

**ROI**: se um system prompt de 10K tokens é usado em 100 chamadas/dia, o cache paga em menos de 2 chamadas.

## 4. Semantic Caching

Cache baseado em similaridade semântica, não igualdade exata:

- "Qual o tempo hoje?" e "Me diz a temperatura agora" → mesma resposta em cache
- Reduz chamadas LLM em até **70%** para aplicações com consultas similares recorrentes
- Ferramentas: Redis com vector similarity, Qdrant, Pinecone

## 5. Compaction API — Anthropic (beta, fev 2026)

- Opus 4.6 comprime automaticamente o histórico de conversa quando o contexto fica grande
- Viabiliza conversas praticamente infinitas sem reset manual
- Crítico para agentes de longa duração

## 6. Seleção de Modelo por Task

Usar o modelo mínimo suficiente para cada subtask:

| Task | Modelo recomendado |
|---|---|
| Classificação simples | Haiku 4.5 ($1/$5) |
| Raciocínio intermediário | Sonnet 4.6 ($3/$15) |
| Tarefas complexas, agentes | Opus 4.7 ($5/$25) |

## 7. Batching

- Message Batches API da Anthropic: **50% de desconto** fixo
- Para workloads assíncronos (avaliação, geração em massa): sempre usar batch

## 8. Limite de Context Window (Context Management)

- Definir um budget fixo de tokens por request e forçar truncamento/sumarização além dele
- Mais simples que compressão, mas eficaz para controlar custos máximos

## 🔄 Complemento — Técnicas Adicionais (16/05)

### Chain of Draft (CoD) — Substituto do Chain of Thought
- O modelo "rascunha" cada passo em ~5 palavras em vez de parágrafos completos
- **Usa apenas 7,6% dos tokens de raciocínio do CoT** com a mesma precisão
- Aplicação: problemas de lógica, matemática, código — onde CoT ajuda mas é verboso
- Implementação: instrução explícita no prompt pedindo rascunhos curtos por etapa

### Model Routing — Detalhamento
- Redução de 20–60% mantendo qualidade ao rotear entre modelos
- Ferramentas para implementar: LiteLLM, OpenRouter, RouteLLM (open-source)
- Estratégia: triagem com Haiku → se score alto de complexidade, escalar para Opus

### Estrutura de Preços de Output vs. Input
- Output tokens custam em média **4× mais** que input tokens (ratio mediano entre modelos)
- Implicação: cada token de output economizado tem ROI 4× maior que reduzir input

### Stack Combinada para Máxima Economia
1. Prompt caching Anthropic — para system prompts longos e fixos
2. Semantic caching (Redis) — para queries semanticamente similares
3. Model routing — Haiku para triagem, Opus para raciocínio pesado
4. CoD em vez de CoT — para tarefas que exigem raciocínio passo a passo
5. Retrieval enxuto — 2–3 chunks curtos, não dump de contexto completo

#### Fontes adicionais
- [Model Routing 7 Strategies 2026 — Abhyash Suchi](https://abhyashsuchi.in/model-routing-llm-2026-best-practices/)
- [LLM Cost Per Token Guide 2026 — Silicon Data](https://www.silicondata.com/blog/llm-cost-per-token)

## Conexoes

- [[Pesquisa - 2026-05-16 - Claude API]]
- [[Pesquisa - 2026-05-16 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-16 - Inteligencia Artificial]]

## Fontes

- [LLM Token Optimization — Redis Blog](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [LLMLingua 2026: 20x Compression — TokenMix](https://tokenmix.ai/blog/llmlingua-prompt-compression-2026)
- [How I Cut LLM Costs by 80% — Towards AI](https://pub.towardsai.net/how-i-cut-my-llm-costs-by-80-without-sacrificing-quality-85f8505eec96)
- [Token Optimization Strategies — TokenOptimize](https://www.tokenoptimize.dev/guides/llm-token-optimization-strategies)
- [Prompt Compression 8 Techniques — Morph](https://www.morphllm.com/prompt-compression)
