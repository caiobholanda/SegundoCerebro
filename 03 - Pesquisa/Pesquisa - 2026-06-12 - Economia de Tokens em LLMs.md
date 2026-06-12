---
tipo: pesquisa
status: ativo
criado: 2026-06-12
atualizado: 2026-06-12
tags: [ia, dev, tokens, custo, otimizacao]
pergunta-central: Quais são as melhores técnicas para reduzir custo de tokens em LLMs em 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-11 - Economia de Tokens em LLMs]]"]
---

# Economia de Tokens em LLMs — 2026-06-12

## Estado consolidado das técnicas (junho 2026)

### Prompt Caching

Principal alavanca de economia:

| Provider | Desconto cache read | Observação |
|----------|--------------------|-----------| 
| Anthropic | 90% off ($0,30/MTok) | Mais agressivo do mercado |
| OpenAI | 50% off | GPT-5.x padrão |

Mais eficaz quando: system prompt longo, few-shot estáveis, chunks RAG reutilizados entre usuários.

### Semantic Caching

- **Redis LangCache**: até 70% de redução em chamadas LLM
- Reconhece queries similares: "Qual o tempo?" e "Me diga a temperatura hoje" → mesmo cache entry
- Reduz chamadas ao LLM sem degradar precisão (frequentemente melhora via noise filtering)

### Model Routing

Direcionar queries simples para modelos mais baratos:
- 40–60% de economia vs modelo único para tudo
- Haiku 4.5 ou equivalentes para classificação/resumo
- Fable 5 / Opus 4.8 somente quando necessário

### Controle de Output

- Output tokens custam 3–8× mais que input (mediana 4×)
- Controlar o comprimento de resposta é **alavanca subestimada**
- Usar formatos compactos: YAML usa ~50% menos tokens que JSON equivalente
- Chain of Draft: 7,6% dos tokens do CoT com mesma precisão

## Números combinados reais

| Estratégia | Economia individual |
|------------|-------------------|
| Prompt caching Anthropic | ~90% em inputs cacheados |
| Semantic caching Redis | ~70% em chamadas repetidas |
| Model routing | 40–60% |
| Controle de output | variável |
| **Combinado realista** | **70–80%** |

## Princípio central 2026

> **Context engineering > comprimir o prompt.**

Maior desperdício: contexto inflado, tool schemas ociosos, histórico obsoleto. Reduzir o que entra no contexto tem mais impacto que encurtar a pergunta.

## Erros comuns

- 40–60% dos budgets empresariais são desperdiçados
- Usar modelo premium para queries que Haiku resolve
- Incluir tool schemas de ferramentas não usadas no sistema prompt
- Não implementar cache em aplicações multi-turno

## Links

- [[Pesquisa - 2026-06-11 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-12 - Claude API e Anthropic SDK]]
