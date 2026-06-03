---
tipo: pesquisa
status: em-andamento
criado: 2026-06-03
atualizado: 2026-06-03
tags: [pesquisa, tokens, llm, custo, otimizacao, automatico]
related: ["[[Pesquisa - 2026-06-02 - Economia de Tokens em LLMs]]"]
pergunta-central: "Quais são as melhores estratégias para reduzir custos com tokens em LLMs em junho de 2026?"
relacionado-a: [economia-tokens, llm, prompt-caching]
---

# Economia de Tokens em LLMs — 2026-06-03

## Destaque principal

**Estrutura multi-bucket consolidada**: em junho de 2026, a maioria das APIs principais (Anthropic, OpenAI, Google) fatura tokens em **4 buckets separados** — input, input em cache, output e reasoning/thinking. Entender a alavancagem de cada bucket é essencial para otimização real.

## Estado atual das técnicas (jun/2026)

| Técnica | Economia estimada | Observação |
|---------|------------------|------------|
| Prompt caching (Anthropic) | ~90% no input cacheado | $0,30 vs $3,00/MTok |
| Semantic caching (Redis LangCache) | ~70-73% | Similaridade de prompt |
| Compressão (LLMLingua-2) | até 80% | Overhead <3s |
| Model routing | 40-60% | Tarefas simples → modelos menores |
| Batching | ~50% | Workloads assíncronos |
| Chain of Draft | 7,6% tokens vs CoT | Mesma precisão |
| YAML vs JSON | ~50% menos tokens | Para dados estruturados |
| Controle de output | 2-5× alavancagem | Output custa mais que input |
| **Combinado** | **70-80% real** | Com boa arquitetura |

## Estratégias-chave

- **Mover instruções estáticas para o início** do prompt — habilita prompt caching automático
- **Priorizar redução de output** sobre input — tokens de saída custam 2-5× mais
- **Schemas de ferramentas e templates RAG** no bloco cacheável
- **Workloads de agentes**: dezenas de milhares de tokens por sessão — caching crítico

## O que mudou desde 2026-06-02

- Faturamento multi-bucket agora padrão na maioria dos provedores (não apenas Anthropic)
- Pesquisas arXiv 2601.06007 e 2602.22812 aprofundam análise de caching em tarefas agênticas
- Combinação de técnicas reforçada como única forma de atingir 70-80% real

## Links relacionados

- [[Pesquisa - 2026-06-02 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-01 - Economia de Tokens em LLMs]]

## Fontes

- [Token optimization 2026: saving up to 80% — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [Reduzir Custos de LLM — Glukhov.org](https://www.glukhov.org/llm-performance/cost-effective-llm-applications/)
- [Don't Break the Cache — arXiv 2601.06007](https://arxiv.org/pdf/2601.06007)
- [Tail-Optimized Caching for LLM Inference — arXiv 2510.15152](https://arxiv.org/pdf/2510.15152)
- [Economia dos tokens: arquitetura de IA — Roberto Dias Duarte](https://www.robertodiasduarte.com.br/economia-dos-tokens-arquitetura-de-ia-como-diferencial/)
