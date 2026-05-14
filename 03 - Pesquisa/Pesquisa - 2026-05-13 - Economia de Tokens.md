---
tipo: pesquisa
status: ativo
criado: 2026-05-13
atualizado: 2026-05-13
tags: [pesquisa, ia, claude, tokens, custo, otimizacao]
pergunta-central: "Quais técnicas avançadas de economia de tokens surgiram em 2026 e qual o potencial de redução de custo?"
relacionado-a: [Pesquisa - 2026-05-08 - Economia de Tokens Claude, Pesquisa - 2026-05-13 - Claude API]
---

# Pesquisa — Economia de Tokens (13/05/2026)

## ❓ Pergunta central
Quais técnicas avançadas de economia de tokens surgiram em 2026 e qual o potencial de redução de custo?

## 🎯 Síntese (3-5 linhas)
Em 2026, a economia de tokens evoluiu de "escreva prompts menores" para um stack multicamadas com potencial de **60-80% de redução de custo** sem perda de qualidade. Os pilares são: Prompt Caching (90% de desconto em cache reads), Compaction API da Anthropic (beta), Semantic Caching (elimina chamadas LLM em hits), e Context Compression via ferramentas como LLMLingua. O Prompt Caching ganhou dois TTLs (5 min e 1 hora) com preços distintos, e o cache agora é isolado por workspace desde fevereiro 2026. A combinação de seleção de modelo + caching + compressão pode reduzir custos em 70-80%.

## 🔬 Detalhes

### Prompt Caching — Atualização 2026

**Dois TTLs disponíveis**:
| TTL | Cache Write Cost | Cache Read Cost | Quando usar |
|-----|-----------------|-----------------|-------------|
| 5 minutos | 1,25× base input | 0,1× base input | Sessões interativas curtas |
| 1 hora | 2× base input | 0,1× base input | Workflows longos, system prompts fixos |

**Cache Isolation por Workspace** (fev/2026):
- Antes: cache compartilhado entre workspaces da mesma org
- Agora: cada workspace tem cache separado
- Impacto: segurança de dados entre clientes/projetos; cache não "vaza" entre ambientes

**Regras atualizadas**:
- Mínimo 1024 tokens para cache (Sonnet/Opus), 2048 para Haiku
- Cache lê custam apenas 10% do preço base de input — maior alavanca de economia

**Potencial de economia**:
- System prompts longos reutilizados: 50-90% de redução no custo de input
- Em produção típica: 60% de redução no custo total de tokens

### Compaction API — beta (fev/2026)
- Anthropic lançou API de compactação nativa
- Opus 4.6 resume e comprime automaticamente o histórico de conversa
- Habilita conversas **efetivamente infinitas** sem reset manual de sessão
- Antes da Compaction API: era necessário `/compact` manual ou trimming de contexto
- Impacto: reduz custo de conversas longas sem perder continuidade

### Semantic Caching
- Cacheia respostas LLM por **similaridade semântica**, não string exata
- Redis LangCache: até 73% de redução em workloads com alta repetição
- Cache hits retornam em milissegundos vs segundos para nova inferência
- Funciona camada acima da Prompt Caching — não substitui, complementa

### Context Compression — Ferramentas 2026
**LLMLingua**:
- Comprime prompts 5-20× preservando significado semântico
- Exemplo documentado: 800 tokens → 40 tokens (95% de redução) com perda mínima
- Open source, integrável com qualquer LLM

**Estratégia de Seleção + Extração**:
1. Retrieval retorna chunks de contexto (ex.: RAG)
2. *Seleção*: filtro barato descarta chunks irrelevantes
3. *Extração*: processa apenas os chunks sobreviventes
- Redução de 40-60% vs usar todos os chunks

### Stack de Otimização Recomendado (2026)

```
Nível 1 — Gratuito / Zero esforço:
  → Escolher modelo certo (Haiku para classificação, Sonnet para geração)
  → max_tokens ajustado ao necessário
  → Instrução de concisão no system prompt

Nível 2 — Baixo esforço, alto impacto:
  → Prompt Caching (cache_control: ephemeral) nos system prompts e contextos fixos
  → Batches API para processamento offline (50% desconto)

Nível 3 — Médio esforço:
  → Semantic Caching (Redis LangCache ou similar)
  → Compaction API para conversas longas

Nível 4 — Investimento técnico:
  → Context Compression (LLMLingua)
  → RAG com seleção + extração
  → Monitoring granular por chamada (cache_creation_input_tokens, cache_read_input_tokens)
```

### Tabela de Preços Atualizada (Maio 2026, por 1M tokens)

| Modelo | Input | Output | Cache Write 5min | Cache Write 1h | Cache Read |
|--------|-------|--------|-----------------|----------------|------------|
| Opus 4.7 | $5 | $25 | $6,25 | $10 | $0,50 |
| Sonnet 4.6 | $3 | $15 | $3,75 | $6 | $0,30 |
| Haiku 4.5 | $1 | $5 | $1,25 | $2 | $0,10 |

> Nota: Opus 4.7 tem preço de input muito mais baixo que o $15 indicado no modelo anterior — revisão necessária na pesquisa de 08/05.

## 🔗 Conexões
- [[Pesquisa - 2026-05-08 - Economia de Tokens Claude]] — base com fundamentos e estratégias práticas
- [[Pesquisa - 2026-05-13 - Claude API]] — Compaction API e novidades de pricing
- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — implementação técnica do caching

## 📚 Fontes
- [Anthropic API Pricing Guide 2026 — Finout](https://www.finout.io/blog/anthropic-api-pricing)
- [Prompt Caching — Claude Docs](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)
- [LLM Token Optimization 2026 — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [Token Optimization saves 80% — Obvious Works](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)

## 🚧 Lacunas
> Todas as lacunas abaixo foram respondidas em [[Pesquisa - 2026-05-14 - Economia de Tokens]]

- ✅ Compaction API: suporta Opus 4.7, Opus 4.6, Sonnet 4.6 e Mythos Preview (não apenas Opus 4.6)
- ✅ Cache 1h: breakeven em ~5 reads/hora; TTL 5min quebra-even com ~2 reads/sessão
- ✅ LLMLingua: overhead de 21s (original) ou <3s (LLMLingua-2) — inviável para chat em tempo real com APIs comerciais
- ✅ Opus 4.7 input = $5/MTok confirmado. O preço de $15 pertence ao Opus 4.1 (legado)
- ✅ Semantic caching: confidence score ponderado (70% similaridade + 30% frescor) resolve respostas dinâmicas
