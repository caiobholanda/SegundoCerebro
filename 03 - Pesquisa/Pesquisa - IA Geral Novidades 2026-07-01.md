---
tipo: pesquisa
status: ativo
criado: 2026-07-01
atualizado: 2026-07-01
tags: [ia, openai, google, modelos, tendencias]
related: []
pergunta-central: Quais são as principais novidades do ecossistema de IA em julho de 2026?
relacionado-a: Claude API
---

# IA Geral — Novidades Julho 2026

## Anthropic — Claude Sonnet 5 (30/jun)

Anthropic lançou **Claude Sonnet 5** em 30 de junho de 2026, posicionando-o como substituto acessível ao Opus 4.8 para cargas agênticas. O modelo executa planos, usa ferramentas (browser, terminal) e roda de forma autônoma em nível que antes exigia modelos maiores e mais caros.

**Preços:**
- Até 31/ago: $2 / MTok input · $10 / MTok output (introductory)
- A partir de 1/set: $3 / MTok input · $15 / MTok output

Disponível em todos os planos (Free, Pro, Max, Team, Enterprise). Sonnet 5 é o modelo padrão para Free e Pro. Junto ao Sonnet 5, a Anthropic lançou o **Claude Science**, app dedicado a workflows científicos.

**Benchmarks:** Claude Fable 5 lidera o Artificial Analysis LLM Leaderboard com Intelligence Index 60; Claude Sonnet 5 (Mythos 5) topo do BenchLM com score 99 em avaliação geral. No ECI matemático, Fable 5 marcou 161 — 1 ponto acima do GPT-5.5 Pro, primeira liderança da Anthropic no ECI em mais de um ano.

---

## OpenAI — GPT-5.6 e Cerebras (26/jun–jul)

O trio **GPT-5.6 Sol / Terra / Luna** foi anunciado em 26/jun em preview restrito; a GA do Sol via **Cerebras** está prevista para julho, com velocidade de inferência de até **750 tokens/segundo** — foco em aplicações agênticas interativas de baixa latência.

**Preços confirmados:**
| Modelo | Input | Output |
|--------|-------|--------|
| Sol | $5 / MTok | $30 / MTok |
| Terra | $2,50 / MTok | $15 / MTok |
| Luna | $1 / MTok | $6 / MTok |

O governo Trump solicitou formalmente que a OpenAI escalonasse o lançamento do GPT-5.6, invocando implicações de segurança nacional. Um decreto de 2/jun determinou que agências federais colaborem no benchmarking de modelos avançados.

**Movimentações de pessoal:** **Noam Shazeer** (co-criador do Transformer e co-líder do Gemini) deixou o Google DeepMind para a OpenAI. **Dean Ball**, ex-funcionário de política de IA do governo Trump, se juntou à OpenAI em 6/jul para liderar a equipe **Strategic Futures**. A OpenAI também anunciou parceria com a **Broadcom** para desenvolvimento de chip de inferência otimizado para LLMs.

---

## Google — Gemini 3.5 Pro (atraso para julho) e saídas do DeepMind

**Gemini 3.5 Pro** foi anunciado no Google I/O em 19/mai com GA prometida para junho. A data escorregou para julho após feedback negativo em testes enterprise internos focados em codificação, eficiência de tokens e desempenho em tarefas longas. Ainda sem data exata em julho.

No ecossistema de hardware e plataforma, Google lançou:
- **Android 17** com **Gemini Omni** integrado
- **Lyria 3** (geração de música)
- **AudioLM Translation** (tradução via áudio)
- Primeiro smart speaker desde 2020, a $99,99, com Gemini Live nativo

**Saída importante:** **John Jumper**, Nobel 2024 e criador do AlphaFold, deixou o Google DeepMind após quase 9 anos para se juntar à Anthropic.

---

## xAI — Grok 4.3 (disponível desde 15/jun)

**Grok 4.3** chegou ao Amazon Bedrock em 15/jun, tornando a xAI o terceiro lab independente na plataforma (após Anthropic e OpenAI). Conta com visão, tool use, function calling e janela de contexto de **1M tokens**.

Rankings no Artificial Analysis (jul/2026):
- Inteligência geral: #44 de 380 modelos
- Codificação: #34 de 94
- Agentes: #30 de 292 (Agentic Index 42.4)

Custo 20% menor que o Grok 4.20 0309 v2 para rodar o Intelligence Index. A xAI tem roadmap de 7 modelos em treinamento, com Grok 5 projetado para 10 trilhões de parâmetros.

---

## Microsoft — MAI-Code-1-Flash

A Microsoft anunciou em junho o **MAI-Code-1-Flash**, seu primeiro modelo próprio para geração de código a partir de descrições em linguagem natural — parte da estratégia de reduzir dependência da OpenAI e baixar custos para desenvolvedores.

---

## Regulação e Infraestrutura

- **Colorado AI Act** em vigor desde 30/jun (coberto anteriormente).
- **Helix Infrastructure Partners** ingressa na corrida de data centers para IA, com investimento em capacidade para hyperscalers.
- **AI Index 2026 (Stanford HAI):** benchmarks clássicos como MMLU e MMLU-Pro estão funcionalmente saturados acima de 88% para modelos frontier — diferenças no topo são estatisticamente irrelevantes. **Humanity's Last Exam** é o novo teto: Gemini 3 Pro Preview 37,5%, Claude Opus 4.6 Thinking Max 34,4%, GPT-5 Pro 31,6%.

---

## Tendências de Julho 2026

1. **Velocidade de inferência como diferencial:** Sol no Cerebras (750 tok/s) indica que latência virou KPI de produto, não só benchmark de inteligência.
2. **Guerra de talentos:** Jumper (DeepMind → Anthropic), Shazeer (DeepMind → OpenAI) mostram pressão crescente sobre o Google.
3. **Regulação ativa:** Governo dos EUA intervindo ativamente em releases (GPT-5.6, exportações) enquanto Colorado AI Act estreia.
4. **Preço como estratégia:** Claude Sonnet 5 (Opus-level, preço Sonnet) e GPT-5.6 Luna ($1/$6) sinalizam comoditização acelerada da inteligência frontier.

---

## Fontes

- [Anthropic launches Claude Sonnet 5 — TechCrunch](https://techcrunch.com/2026/06/30/anthropic-launches-claude-sonnet-5-as-a-cheaper-way-to-run-agents/)
- [Introducing Claude Sonnet 5 — Anthropic](https://www.anthropic.com/news/claude-sonnet-5)
- [Previewing GPT-5.6 Sol — OpenAI](https://openai.com/index/previewing-gpt-5-6-sol/)
- [OpenAI unveils GPT-5.6 Sol, Terra and Luna — VentureBeat](https://venturebeat.com/technology/openai-unveils-gpt-5-6-sol-terra-and-luna-models-but-only-accessible-to-limited-preview-partners-for-now-per-us-gov/)
- [GPT-5.6 Sol, Terra, and Luna — DataCamp](https://www.datacamp.com/blog/gpt-5-6-sol-luna-terra)
- [Google delays Gemini 3.5 Pro to July 2026 — CryptoBriefing](https://cryptobriefing.com/google-delays-gemini-35-pro-launch-to-july-2026/)
- [Gemini 3.5 Pro Cleared for July — TechTimes](https://www.techtimes.com/articles/319318/20260629/gemini-35-pro-cleared-july-launch-fable-5-nears-return-gpt-56-stays-locked.htm)
- [xAI launches Grok 4.3 — Artificial Analysis](https://artificialanalysis.ai/articles/xai-launches-grok-4-3-with-improved-agentic-performance-and-lower-pricing)
- [Microsoft unveils MAI-Code-1-Flash — CNBC](https://www.cnbc.com/2026/06/02/microsoft-unveils-new-ai-models-lessen-reliance-on-openai-lower-costs.html)
- [AI Updates Today July 2026 — LLM Stats](https://llm-stats.com/llm-updates)
- [AI Benchmarks 2026 — BenchLM](https://benchlm.ai/best/overall)
- [Technical Performance 2026 AI Index — Stanford HAI](https://hai.stanford.edu/ai-index/2026-ai-index-report/technical-performance)
- [OpenAI brings on big guns before IPO — TechCrunch](https://techcrunch.com/2026/06/18/openai-is-bringing-on-some-big-guns-in-the-lead-up-to-its-ipo/)
- [AI news June 29 2026 — BuildFastWithAI](https://www.buildfastwithai.com/blogs/ai-news-today-june-29-2026)
