---
tipo: pesquisa
status: ativo
criado: 2026-06-24
atualizado: 2026-06-24
tags: [ia, tokens, custo, llm, otimizacao]
pergunta-central: Quais são as melhores técnicas para reduzir custo de tokens em LLMs em junho 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-23 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-06-24

## Principais Alavancas de Economia

### Prompt Caching
- **Maior impacto isolado**: armazena KV tensors da parte estática do prompt
- Cached input tokens: 4–10× mais baratos que input normal (Anthropic: ~90% off)
- System prompt + definições de ferramentas + documentos de referência = alvos principais
- GPT-5.1 suporta cache por até 24h (melhor para apps com interações repetidas)

### Batch API (Anthropic)
- 50% desconto fixo em input e output
- Processamento assíncrono em janela de 24h
- Ideal para tarefas não-urgentes e processamento em lote

### Semantic Caching
- vCache: retorna resposta cacheada para prompts semanticamente similares
- Usuário define a taxa de erro aceitável
- Próximo passo natural após prompt caching básico

### Técnicas Combinadas
- 12 técnicas documentadas: compressão, caching, cascata de modelos, RAG, batching, sumarização
- Economia realista combinada: **40–80%** sem perda de qualidade
- Custo de sessão 100 turnos: $13–31 → <$3 com otimização completa

## Premissas de Custo 2026

- Output típico: **3–8× mais caro** que input (mediana 4×)
- 40–60% dos budgets desperdiçados em contexto desnecessário
- Fable 5 ($10/$50 MTok) torna context engineering crítico
- Billing split torna agentes muito mais caros sem otimização

## Context Engineering como Obrigação

- `.claudeignore` reduz contexto imediatamente
- YAML usa ~50% menos tokens que JSON equivalente
- TOON usa ~35% menos tokens que JSON
- RAG ruidoso = maior fonte de desperdício individual
- Context bloat > output desnecessário como causa de custo

## Links

- [Prompt Caching 2026 — Digital Applied](https://www.digitalapplied.com/blog/prompt-caching-2026-cut-llm-costs-engineering-guide)
- [Cut LLM Token Bill 50–90%: 2026 Playbook — The AI Corner](https://www.the-ai-corner.com/p/llm-token-cost-optimization-playbook-2026)
- [Token optimization 2026: 80% savings — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [O verdadeiro custo de um LLM — Rafael Quintanilha](https://codecapital.substack.com/p/o-verdadeiro-custo-de-um-llm)
