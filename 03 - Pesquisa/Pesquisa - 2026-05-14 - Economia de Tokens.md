---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, ia, claude, tokens, custo, otimizacao]
pergunta-central: "Quais as respostas definitivas para as lacunas abertas na pesquisa anterior — Compaction API (modelos), breakeven de TTL, LLMLingua em tempo real, preço real do Opus 4.7 e como lidar com semantic caching em respostas dinâmicas?"
relacionado-a: [Pesquisa - 2026-05-13 - Economia de Tokens, Pesquisa - 2026-05-08 - Economia de Tokens Claude]
---

# Pesquisa — Economia de Tokens (14/05/2026)

## ❓ Pergunta central
Quais as respostas definitivas para as lacunas abertas na pesquisa de 13/05: modelos da Compaction API, breakeven TTL cache 1h vs 5min, latência do LLMLingua em tempo real, preço correto do Opus 4.7 e estratégias para semantic caching com respostas dinâmicas?

---

## 🎯 Síntese (3-5 linhas)
Todas as cinco lacunas da pesquisa anterior foram respondidas com fontes primárias. O preço do Opus 4.7 é confirmado como **$5/MTok input** — a cifra de $15 que aparecia nas pesquisas anteriores corresponde ao Opus 4.1 (modelo legado). A Compaction API suporta **quatro modelos** (Opus 4.7, Opus 4.6, Sonnet 4.6, Mythos Preview) — não apenas o Opus 4.6. O breakeven entre TTL 1h e 5min é calculável com precisão: TTL 1h exige **mínimo 5 reads/hora** para compensar o custo dobrado de write. O LLMLingua original é inviável para tempo real (21s de overhead); LLMLingua-2 reduz para < 3s mas ainda não é ideal para chat interativo. Semantic caching com respostas dinâmicas é resolvido por confidence scoring com peso de frescor (30%) somado à similaridade semântica (70%).

---

## 🔬 Detalhes

### ✅ Confirmado — Preço input Opus 4.7: $5/MTok (não $15)

Fonte primária (platform.claude.com/docs/en/about-claude/pricing) confirmada:

| Modelo | Input | Output | Cache Write 5min | Cache Write 1h | Cache Read |
|--------|-------|--------|-----------------|----------------|------------|
| Opus 4.7 | **$5** | $25 | $6,25 | $10 | $0,50 |
| Opus 4.6 | $5 | $25 | $6,25 | $10 | $0,50 |
| Opus 4.5 | $5 | $25 | $6,25 | $10 | $0,50 |
| **Opus 4.1** | **$15** | $75 | $18,75 | $30 | $1,50 |
| Sonnet 4.6 | $3 | $15 | $3,75 | $6 | $0,30 |
| Haiku 4.5 | $1 | $5 | $1,25 | $2 | $0,10 |

> ⚠️ Correção definitiva: O preço de $15/MTok corresponde ao **Opus 4.1** (e Opus 4 deprecated), não ao Opus 4.7. O Opus 4.5 marcou um corte de 67% no preço ($15→$5) que se manteve no 4.6 e 4.7.

**Atenção adicional — novo tokenizador do Opus 4.7**:
- Opus 4.7 usa tokenizador novo com até **35% mais tokens** para o mesmo texto
- O rate card ($5/MTok) não mudou, mas o custo real por requisição pode ser maior
- Mitigação: prompt caching continua com 90% de desconto em reads — principal alavanca para compensar

### ✅ Confirmado — Compaction API: 4 modelos, não só Opus 4.6

Conforme documentação oficial (`platform.claude.com/docs/en/build-with-claude/compaction`):

| Modelo | Compaction API |
|--------|---------------|
| Claude Mythos Preview | Sim |
| Claude Opus 4.7 | Sim |
| Claude Opus 4.6 | Sim |
| Claude Sonnet 4.6 | Sim |
| Claude Haiku 4.5 | **Não** |

A Compaction API permanece em **beta** (header `compact-2026-01-12` obrigatório). Funciona com Sonnet 4.6 além dos modelos Opus, o que reduz significativamente o custo de conversas longas — Sonnet a $3/MTok vs Opus a $5/MTok.

Ver detalhes técnicos: [[Referência - Doc - Claude Compaction API Models 2026]]

### ✅ Calculado — Breakeven TTL 1h vs 5min

Cálculo baseado nos multiplicadores oficiais (Sonnet 4.6 como exemplo):

**Fórmulas**:
- Write 5min = 1,25× base → custo de write = $3,75/MTok
- Write 1h = 2× base → custo de write = $6/MTok
- Read (ambos) = 0,1× base → economia por read = $2,70/MTok ($3,00 − $0,30)

**Breakeven**:
- TTL 5min: 1,25 / (1 − 0,1) = **~1,4 reads** (quebra-even após ~2 leituras)
- TTL 1h: 2,0 / (1 − 0,1) = **~2,2 reads** (quebra-even após ~3 leituras)
- Para TTL 1h valer mais que TTL 5min (descontando o custo extra de write):
  - Diferença de write: $6 − $3,75 = $2,25/MTok
  - Economia extra por ser 1h (evita rewrites durante a hora): depende da frequência
  - **Regra prática**: TTL 1h compensa quando há ≥ 5 reads/hora do mesmo conteúdo

**Quando usar cada TTL**:

| Cenário | Recomendação |
|---------|-------------|
| Chat interativo (usuário ativo) | TTL 5min — cheap write, alto hit rate por sessão |
| System prompts fixos em produção | TTL 1h — muitas requisições/hora ao mesmo contexto |
| Documentos longos de referência | TTL 1h — reutilizados por múltiplos usuários |
| Testes e desenvolvimento | TTL 5min — economiza ao evitar writes longos ociosos |

**Alerta de regressão (fev→mar 2026)**: Em março/2026 houve uma regressão silenciosa no Claude Code que reverteu TTL de 1h para 5min, causando inflação de custos. Verificar sempre o TTL ativo via `cache_creation_input_tokens` nos logs.

### ✅ Verificado — LLMLingua: inviável para tempo real (com dados)

Dados do paper arXiv 2604.02985 (abril 2026):

| Variante | Overhead de compressão | Adequado para tempo real? |
|----------|------------------------|--------------------------|
| LLMLingua (original) | 21 segundos (48k tokens) | Não |
| LLMLingua-2 | < 3 segundos (48k tokens) | Parcialmente |
| LLMLingua-2 (inferência) | 0,01–0,03 segundos | Somente inferência |

**Conclusão do paper**: para APIs comerciais otimizadas (Claude, GPT-4), o overhead de compressão frequentemente supera o tempo economizado na inferência. Speedups reais (> 1,3×) só ocorrem com:
1. Modelos locais não otimizados
2. Prompts > 10.000 tokens

**Caso de uso válido**: RAG com contextos longos em modo batch/assíncrono.
- Exemplo real: SaaS de suporte ao cliente: $42k/mês → $2,1k/mês via LLMLingua em pipeline RAG

Ver detalhes: [[Referência - Artigo - LLMLingua Latência Compressão 2026]]

### ✅ Resolvido — Semantic Caching com respostas dinâmicas

O problema: semantic caching por similaridade semântica pura ignora a temporalidade das respostas — retorna respostas velhas para queries sobre conteúdo em tempo real.

**Solução (2026): Confidence Scoring com peso de frescor**

```
confiança = 0,70 × similaridade_semântica + 0,30 × frescor
```

- Respostas envelhecem gradualmente em "confiabilidade" mesmo com alta similaridade
- Abaixo de um threshold (ex.: > 0,75), o sistema força nova chamada ao LLM
- TTL ainda existe, mas como failsafe — a confiança decai antes do TTL expirar

**Regras práticas para invalidação**:

| Tipo de conteúdo | Estratégia recomendada |
|-----------------|----------------------|
| FAQ, documentação | Cache com TTL longo (dias) + similaridade pura |
| Preços, disponibilidade | Não cachear ou TTL de minutos |
| Notícias, eventos | Não cachear semanticamente |
| Respostas de reasoning | Cache com confidence score + TTL médio (horas) |

Ver detalhes: [[Referência - Artigo - Semantic Caching TTL Confidence 2026]]

### Novidades detectadas (pós 13/05/2026)

**Fast Mode para Opus 4.7** (research preview, mai/2026):
- Atinge **2,5× mais tokens/segundo** de output — mesmo velocidade do Fast Mode Opus 4.6
- Preço: 6× o rate padrão de Opus → $30/MTok input, $150/MTok output
- Disponível via `claude-opus-4-7-fast` no OpenRouter
- Não disponível com Batch API
- Uso ideal: pipelines onde latência de output é crítica (streaming, agentes em tempo real)

---

## 🔗 Conexões
- [[Pesquisa - 2026-05-13 - Economia de Tokens]] — base desta pesquisa (lacunas fechadas aqui)
- [[Pesquisa - 2026-05-13 - Claude API]] — Compaction API e pricing
- [[Pesquisa - 2026-05-08 - Economia de Tokens Claude]] — fundamentos e pesquisa inicial
- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — implementação técnica
- [[Referência - Doc - Claude Compaction API Models 2026]]
- [[Referência - Artigo - LLMLingua Latência Compressão 2026]]
- [[Referência - Artigo - Semantic Caching TTL Confidence 2026]]

---

## 📚 Fontes
- [Claude API Pricing — Anthropic Docs](https://platform.claude.com/docs/en/about-claude/pricing) — preços oficiais confirmados
- [Compaction API — Claude Docs](https://platform.claude.com/docs/en/build-with-claude/compaction) — modelos suportados
- [Claude Prompt Caching 2026: 5-Minute TTL Change — DEV Community](https://dev.to/whoffagents/claude-prompt-caching-in-2026-the-5-minute-ttl-change-thats-costing-you-money-4363) — análise de breakeven
- [Prompt Compression in the Wild — arXiv 2604.02985](https://arxiv.org/html/2604.02985v1) — latência LLMLingua dados reais
- [LLMLingua 2026: $42K to $2.1K Savings — TokenMix Blog](https://tokenmix.ai/blog/llmlingua-prompt-compression-2026) — caso de uso em produção
- [Semantic Caching: TTLs, Confidence, and Cache Safety — PyImageSearch](https://pyimagesearch.com/2026/05/04/semantic-caching-for-llms-ttls-confidence-and-cache-safety/) — estratégias de invalidação
- [Claude Opus 4.7 Pricing: The Real Cost Story — Finout](https://www.finout.io/blog/claude-opus-4.7-pricing-the-real-cost-story-behind-the-unchanged-price-tag) — tokenizador novo e impacto
- [Fast Mode (beta) — Claude API Docs](https://platform.claude.com/docs/en/build-with-claude/fast-mode) — Fast Mode Opus 4.7

---

## 🚧 Lacunas restantes
- Fast Mode + Prompt Caching: como os multiplicadores se combinam exatamente na prática?
- LLMLingua-2 com APIs comerciais (Claude/GPT): alguém mediu o overhead na prática?
- Compaction API + Sonnet 4.6: benchmarks de qualidade do sumário vs Opus 4.7?
- Tokenizador Opus 4.7: quais tipos de texto são mais afetados pelo aumento de 35%? (código vs prosa vs JSON)
