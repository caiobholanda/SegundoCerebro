---
tipo: pesquisa
status: em-andamento
criado: 2026-06-04
atualizado: 2026-06-04
tags: [pesquisa, ia, tokens, custos, automatico]
related: ["[[2026-06-03 - Economia de Tokens em LLMs]]"]
pergunta-central: "Quais são as melhores estratégias de economia de tokens em LLMs em junho 2026?"
relacionado-a: [economia-tokens, llm, custos]
---

# Economia de Tokens em LLMs — 2026-06-04

## Destaque principal

**Combinação de técnicas = 70-80% de economia real**: guia consolidado de 2026 documenta que estratégias inteligentes combinadas reduzem custos sem perda de qualidade — com picos de até 90% em casos específicos.

## Estratégias consolidadas (ranking por impacto)

### 1. Prompt Caching (maior alavanca)
- Anthropic: reads custam **$0,30/MTok** (0,1× do preço base de $3,00) — **desconto de 90%**
- Funciona armazenando pares Key-Value internos do modelo para prefixos repetidos
- Ideal para: system prompts longos, documentos de referência, regras fixas
- Cache TTL: 1h (2× base), padrão 5min (1,25× base)

### 2. Semantic Caching (Redis)
- Redis LangCache: ~**73% de redução** para queries semanticamente similares
- Armazena embeddings + respostas; recupera por similaridade vetorial
- Combinado com exact caching: **50-90%** para chamadas repetidas

### 3. Memory tool + Dreaming
- **Memory tool** (public beta, abr/2026): fatos curados em filesystem server-side → evita repassar contexto
- **Dreaming** (mai/2026): memória compacta cross-session para agentes — substitui replay de histórico
- Maior ganho para agentes multi-sessão longas

### 4. Controle de output
- Output tokens custam **2-5× mais** que input — alavanca mais subestimada
- Técnicas: Chain of Draft (CoD) = 7,6% dos tokens de CoT com mesma precisão
- Instruções explícitas de brevidade reduzem saída sem perda de qualidade

### 5. Escolha de formato
- **YAML usa 50% menos tokens que JSON** para estruturas equivalentes
- Markdown compacto vs HTML verboso: diferença relevante em chamadas frequentes

### 6. Model routing
- Roteamento para modelo menor em tasks simples: 40-60% de economia
- Multi-LLM como padrão de mercado — modelo único custa 60-90% a mais por comodidade

## Benchmarks de otimização combinada

| Técnica | Economia |
|---------|----------|
| Prompt caching (Anthropic) | 90% em reads |
| Semantic caching (Redis) | ~73% |
| Chain of Draft vs CoT | ~92% nos tokens de raciocínio |
| YAML vs JSON | ~50% |
| Model routing | 40-60% |
| **Combinado realista** | **70-80%** |

## O que mudou desde 2026-06-03

- Artigo detalhado de Obvious Works: "Saving up to 80% LLM costs" publicado (2026)
- Guia completo TokenOptimize.dev publicado — referência consolidada para 2026
- Redis blog atualizado com benchmarks LangCache atualizados

## Links relacionados

- [[2026-06-03 - Economia de Tokens em LLMs]]
- [[2026-06-04 - Claude API e Anthropic SDK]]

## Fontes

- [Token optimization 2026: Saving up to 80% — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Optimization: Complete Guide 2026 — TokenOptimize](https://www.tokenoptimize.dev/guides/llm-token-optimization-strategies)
- [LLM Token Optimization: Cut Costs & Latency — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [How Prompt Caching Optimizes LLM — Gleecus](https://gleecus.com/blogs/how-prompt-caching-optimizes-llm-latency-and-reduces-token-usage/)
