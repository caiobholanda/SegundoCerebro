---
tipo: pesquisa
status: ativo
criado: 2026-07-02
atualizado: 2026-07-02
tags: [ia, tokens, custos, otimizacao]
pergunta-central: Como otimizar custos de tokens em LLMs em julho de 2026?
relacionado-a: Claude API, Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-26 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-07-02

## Preços de Referência (julho 2026)

| Modelo | Input | Output |
|--------|-------|--------|
| claude-fable-5 | $10/MTok | $50/MTok |
| claude-opus-4-8 | $5/MTok | $25/MTok |
| claude-sonnet-5 (promo) | **$2/MTok** | **$10/MTok** |
| claude-sonnet-5 (após 31/ago) | $3/MTok | $15/MTok |
| claude-haiku-4-5 | $1/MTok | $5/MTok |
| DeepSeek V4-Pro | $0,435/MTok | $0,87/MTok |
| Gemini 3.5 Flash | $1,50/MTok | $9/MTok |

## Queda Histórica de Preços

- GPT-4 equivalente: **$20/MTok em 2022 → $0,40/MTok em 2026** (98% de queda)
- Queda geral de ~80% nos preços de API entre 2025 e 2026
- o3 substituiu o1: $15 → $2/MTok input (-87%)

## Regra de Ouro: Output Custa Muito Mais

- **Output: 3–6× mais caro que input** (mediana 4–5×)
- Motivo: geração sequencial e intensiva em GPU
- Um workflow que retorna long-form é fundamentalmente mais caro que um que retorna JSON classificado

## Estratégias de Economia

### 1. Prompt Caching (maior alavanca isolada)
- Anthropic: **90% de desconto** em tokens cacheados ($0,30/MTok vs $3/MTok no Sonnet 5)
- OpenAI: ~50% desconto automático
- Sem vantagem em one-shots — essencial para multi-turn e contextos fixos
- Cache hit rate 7% → 74% reorganizando o prompt = -59% custo

### 2. Batch API
- **50% de desconto** da maioria dos providers
- Para workloads não-sensíveis ao tempo

### 3. Estratégia Multi-LLM / Model Routing
- Manter um único modelo = pagar **60–90% a mais**
- Rotear tarefas simples para modelos baratos ($0,05–$1/MTok) e só usar frontier em raciocínio avançado
- Combinado realista: **70–80% de economia**

### 4. Formato dos Dados
- **YAML**: ~50% menos tokens que JSON
- **TOON**: ~35% menos tokens que JSON
- Chain of Draft: 7,6% dos tokens do Chain-of-Thought padrão

### 5. ACE — Agentic Context Engineering
- Técnica que elimina contexto inflado, tool schemas ociosos e histórico obsoleto
- Resultados: +10,6% em benchmarks agentic + economia significativa

## Onde os Tokens São Desperdiçados

- **40–60% dos budgets desperdiçados** em contexto inflado
- Maiores fontes: context bloat, tool schemas ociosos, histórico obsoleto, RAG ruidoso

## Impacto do Billing Split (desde 15/06)

- Context engineering passou de "bom ter" para **obrigatório**
- Claude Code e Agent SDK consomem crédito separado do subscription
- Pro $20/mês = ~6,67M input tokens/mês no Sonnet 5 (preço promo)
- Engenheiro usando agentes full-time: $50–200/mês

## Novidade: Claude Sonnet 5 + Contexto 1M

- Contexto nativo 1M tokens = workflows antes impossíveis agora viáveis
- Mas com output 5× mais caro, context engineering se torna ainda mais crítico
