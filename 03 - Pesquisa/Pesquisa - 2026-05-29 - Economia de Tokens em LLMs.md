---
tipo: pesquisa
status: em-andamento
criado: 2026-05-29
atualizado: 2026-05-29
tags: [pesquisa, tokens, economia, llm, otimizacao, caching]
related: ["[[Pesquisa - 2026-05-28 - Economia de Tokens em LLMs]]"]
pergunta-central: Quais as melhores técnicas de otimização de tokens em LLMs em 2026?
relacionado-a: [economia-tokens, llm, prompt-engineering]
---

# Economia de Tokens em LLMs — 2026-05-29

## Nova Dimensão: Dreaming como Otimização

A feature **Dreaming** (Anthropic) é agora considerada a otimização de maior impacto para a maioria dos times:

> Substitui dezenas de milhares de tokens de replay de histórico por um carregamento compacto de memória curada a cada nova sessão.

Impacto prático: elimina o padrão de "re-enviar contexto inteiro" em sistemas agênticos multi-sessão.

## Técnicas Core 2026

### 1. Prompt Caching (maior ROI/esforço)
- Anthropic: $0,30/MTok leitura vs $3,00 base = **90% off**
- Savings de 50-90% com mínimo esforço de implementação
- Cache reads de 1 hora (novo, 2× base) para prompts de sistema longos

### 2. Semantic Caching
- Elimina a chamada LLM completa no cache hit (não só reduz tokens)
- Redis LangCache: ~73% redução em chamadas reais
- Threshold: ~70% similaridade semântica para cache hit

### 3. Model Routing
- Classificação, extração, formatação → modelos pequenos (Haiku, Flash)
- Raciocínio complexo, arquitetura → modelos grandes (Opus, GPT-5.5)
- Economia: 40-60% nos custos de inferência

### 4. Context Engineering
A real alavanca subestimada em 2026 **não é comprimento do prompt** — é:
- Schemas de ferramentas ociosas no contexto
- Histórico de conversa obsoleto
- Contexto bloqueado sem necessidade

> "Token optimization is fundamentally a context-engineering problem."

### 5. Controle de Output
Output tokens custam 2-5× mais que input — controlar tamanho de saída é alavanca subestimada.

## Referências de Economia Combinada

| Estratégia | Redução estimada |
|-----------|-----------------|
| Só prompt caching | 50-90% |
| Só semantic caching | ~73% |
| Model routing | 40-60% |
| Combinado | **70-80% real** |

## Dynamic Workflows e Tokens

Com Opus 4.8 Dynamic Workflows (1.000 subagentes/run), o custo por run pode ser alto. Dreaming + context engineering tornam-se críticos para manter viabilidade econômica de workflows agênticos.

## Links
- [Token Optimization Guide 2026 — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [80% savings — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [Token Budgets & Latency — Medium](https://medium.com/@QuarkAndCode/llm-optimization-guide-token-budgets-latency-and-cost-7ed701283ce5)
