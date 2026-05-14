---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, ia, llm, agentes, multimodal, openai, google, anthropic, deepseek, quantizacao]
pergunta-central: "O que há de novo em IA após 13/05/2026, e quais lacunas da pesquisa anterior foram respondidas?"
relacionado-a: [Pesquisa - 2026-05-13 - Inteligencia Artificial, Pesquisa - 2026-05-08 - Inteligencia Artificial]
---

# Pesquisa — Inteligência Artificial (14/05/2026)

## ❓ Pergunta central
O que há de novo em IA após 13/05/2026 — novos modelos, anúncios de labs — e quais das lacunas abertas na pesquisa de ontem foram respondidas?

## 🎯 Síntese (3-5 linhas)
As lacunas técnicas da pesquisa anterior foram em grande parte respondidas: AlphaEvolve não é open source (mas há reimplementações da comunidade), TurboQuant tem paper público no arXiv (ICLR 2026) com implementações em llama.cpp e vLLM, a AAIF publicou três specs concretas (MCP, AGENTS.md, goose) e já tem 170+ membros. No front de novos modelos, a grande surpresa é o **Claude Mythos** (Anthropic) — um tier acima do Opus 4.7, focado em segurança crítica e disponível apenas via Project Glasswing. DeepSeek lançou o V4 com 80,6% no SWE-bench (R2 ainda não foi liberado). GPT-5.4 Pro cobra $30/$180 por M tokens e é explicitamente posicionado como tier enterprise. Google deve anunciar novo Gemini no I/O da próxima semana.

## 🔬 Detalhes

### 1. AlphaEvolve — Open Source ou Não?

**Resposta**: AlphaEvolve **não é open source**. O Google DeepMind não publicou o código. O paper foi publicado no arXiv (2506.13131) e a partir dele a comunidade criou reimplementações:

- **OpenEvolve** (GitHub: jamesahou/openevolve) — implementação mais adotada, suporta qualquer LLM via API
- **OpenAlpha_Evolve** (shyamsaktawat/OpenAlpha_Evolve) — framework Python autônomo
- **CodeEvolve** (arXiv 2510.14150) — abordagem com LLMs + algoritmos genéticos

Conclusão: para usar AlphaEvolve fora do Google, as opções são as reimplementações da comunidade, não o sistema original.

Referência: [[Referência - Artigo - AlphaEvolve Open Source Implementations 2026]]

---

### 2. TurboQuant — Paper, Implementação e Compatibilidade

**Resposta**: TurboQuant tem paper público no arXiv e foi apresentado no ICLR 2026.

| Item | Status |
|------|--------|
| Paper arXiv | Disponível — ID 2504.19874 |
| Código oficial Google | Não publicado |
| Implementações da comunidade | Disponíveis (vLLM, llama.cpp, SGLang) |
| Compatibilidade não-Google | Sim — agnóstico de modelo |

**Benchmarks**:
- 4-bit: até 8x mais rápido que 32-bit no H100
- 3-bit keys / 2-bit values: sem perda de qualidade mensurável
- Testado em Gemma e Mistral (não apenas modelos Google)

Para integrar em projetos: usar `0xSero/turboquant` (vLLM + Triton) ou `AmesianX/TurboQuant` (llama.cpp).

Referência: [[Referência - Artigo - TurboQuant KV Cache ICLR 2026]]

---

### 3. Agentic AI Foundation (AAIF) — Standards Publicados

**Resposta**: Três specs concretas já publicadas e em adoção:

| Spec | Descrição | Adoção |
|------|-----------|--------|
| **MCP** (Model Context Protocol) | Protocolo universal para conectar modelos a ferramentas, dados e apps | Standard de fato para integrações AI |
| **AGENTS.md** | Arquivo de configuração de repositório para agentes de código (análogo a README) | +60.000 projetos open source |
| **goose** | Framework de agente local-first, open source, baseado em MCP | Em crescimento |

**Membros Platinum**: AWS, Anthropic, Block, Bloomberg, Cloudflare, Google, Microsoft, OpenAI

**Crescimento**: 170+ organizações membros em menos de 4 meses (fundado dez/2025)

---

### 4. GPT-5.4 Pro — Preço e Disponibilidade para Devs

**Resposta**: Disponível via API desde 5 de março de 2026.

| Variante | Input ($/M tokens) | Output ($/M tokens) |
|----------|--------------------|----------------------|
| GPT-5.4 standard | $2,50 | $15,00 |
| GPT-5.4 (>272K tokens) | $5,00 | $15,00 |
| **GPT-5.4 Pro** | **$30,00** | **$180,00** |
| GPT-5.4 mini | ~$0,40 | ~$1,60 (estimativa) |

**Posicionamento**: GPT-5.4 Pro é tier enterprise explícito — a gap de 40x em relação ao mini é intencional. Projetado para tarefas onde erros se propagam em workflows multi-step. Contexto: até 1,05M tokens.

Fontes: https://openrouter.ai/openai/gpt-5.4 | https://www.glbgpt.com/hub/gpt-5-4-pricing/

---

### 5. Llama 4 vs Claude Opus 4.7 — Coding Benchmarks

**Resposta**: Claude Opus 4.7 mantém vantagem clara nos benchmarks de coding.

| Modelo | SWE-bench Verified | SWE-bench Pro | TAU-bench |
|--------|-------------------|---------------|-----------|
| Claude Opus 4.7 | 72,6% | 64,3% | 69,2% |
| GPT-5.5 | — | ~58,6% | — |
| Llama 4 | Sem score específico publicado | — | — |

Llama 4 é competitivo em tarefas gerais e se destaca como único modelo open-weight no tier frontier, mas benchmarks específicos de coding vs Opus 4.7 não foram publicados com números diretos. Em coding competitivo (Codeforces), quem se destaca é o **DeepSeek V4-Pro-Max** (3.206 pontos, acima do GPT-5.4 com 3.168).

---

### 6. DeepSeek em 2026 — Evolução e Competitividade

**Resposta**: DeepSeek lançou o V4 em abril/2026; R2 permanece sem data.

**DeepSeek V4 (lançado 24/04/2026)**:
- V4-Pro: 1,6T parâmetros totais, 49B ativos por token (MoE)
- V4-Flash: 284B parâmetros
- Contexto: 1M tokens
- Licença: MIT (open source)
- SWE-bench Verified (V4-Pro-Max): **80,6%** — maior score de qualquer modelo no benchmark
- Codeforces: **3.206** — supera GPT-5.4 (3.168)

**DeepSeek R2**: ainda não lançado. Atrasos causados por problemas com chips Huawei Ascend para treino. DeepSeek optou por usar Nvidia para treino e Huawei para inferência.

**Competitividade**: DeepSeek V4 compete diretamente com modelos fechados de fronteira em coding e reasoning, mas como open source sob MIT — maior diferencial estratégico.

Fonte: https://www.meta-intelligence.tech/en/insight-deepseek-v4-r2 | https://huggingface.co/deepseek-ai/DeepSeek-V4-Pro

---

### 7. Novidades em IA Após 13/05 (hoje, 14/05/2026)

**Claude Mythos + Project Glasswing (Anthropic)**:
- Modelo um tier acima do Opus 4.7 — o mais capaz da Anthropic
- Focado em segurança computacional: identificou milhares de zero-days autonomamente
- Explorou RCE de 17 anos no FreeBSD de forma totalmente autônoma
- Disponível apenas via Project Glasswing — **não público**
- Preço: $25/$125 por M tokens (input/output)
- Parceiros: AWS, Apple, Cisco, CrowdStrike, Google, JPMorgan, Linux Foundation, Microsoft, NVIDIA, Palo Alto Networks

**Meta Muse Spark**:
- Primeiro LLM flagship da Meta sob liderança de Alexandr Wang (Chief AI Officer, Superintelligence Labs)
- Performance competitiva em multimodal, reasoning, saúde e tarefas agênticas
- Custo de compute significativamente menor que Llama 4 mid-size

**Grok 4.3 e NVIDIA Nemotron 3 Nano Omni**:
- Ambos disponíveis recentemente — detalhes de benchmarks em apuração

**Google I/O (próxima semana)**:
- Novo modelo Gemini esperado, posicionado na classe do GPT-5.5 (abaixo de Mythos)

**Acordo gov EUA**:
- Google, Microsoft e xAI vão compartilhar modelos não lançados com o governo (NIST/CAISI) para avaliação de segurança nacional antes do lançamento público

---

### 8. Tabela Atualizada — Landscape de Modelos (14/05/2026)

| Modelo | Empresa | Status | Destaque |
|--------|---------|--------|----------|
| Claude Mythos | Anthropic | Preview fechado | Tier acima Opus 4.7; zero-days autônomos |
| GPT-5.4 Pro | OpenAI | API pública | $30/$180 per M; enterprise reasoning |
| GPT-5.5 | OpenAI | Disponível | Referência em multimodal |
| Claude Opus 4.7 | Anthropic | API pública | 72,6% SWE-bench; melhor coding agêntico |
| DeepSeek V4-Pro-Max | DeepSeek | Open source (MIT) | 80,6% SWE-bench; 3.206 Codeforces |
| Gemini (novo) | Google | Anúncio em ~21/05 | Classe GPT-5.5 estimado |
| Llama 4 | Meta | Open source | Único open-weight frontier geral |
| Muse Spark | Meta | Novo (mai/2026) | Menor custo, multimodal |
| Grok 4.3 | xAI | Disponível | Benchmarks em apuração |
| DeepSeek R2 | DeepSeek | Não lançado | Atraso por chips |

## 🔗 Conexões

- [[Pesquisa - 2026-05-13 - Inteligencia Artificial]]
- [[Pesquisa - 2026-05-13 - Claude API]]
- [[Pesquisa - 2026-05-08 - Inteligencia Artificial]]
- [[Referência - Artigo - AlphaEvolve Open Source Implementations 2026]]
- [[Referência - Artigo - TurboQuant KV Cache ICLR 2026]]
- [[Referência - Artigo - Claude Mythos Project Glasswing 2026]]
- [[Referência - Doc - Anthropic Release Notes 2026]]

## 📚 Fontes

- AlphaEvolve blog: https://deepmind.google/blog/alphaevolve-impact/
- AlphaEvolve paper: https://arxiv.org/abs/2506.13131
- OpenEvolve (HuggingFace): https://huggingface.co/blog/codelion/openevolve
- TurboQuant arXiv: https://arxiv.org/html/2504.19874v1
- TurboQuant Google Blog: https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/
- TurboQuant vLLM: https://github.com/0xSero/turboquant
- TurboQuant llama.cpp: https://github.com/AmesianX/TurboQuant
- AAIF Linux Foundation: https://www.linuxfoundation.org/press/linux-foundation-announces-the-formation-of-the-agentic-ai-foundation
- AAIF home: https://aaif.io/
- AAIF VentureBeat: https://venturebeat.com/ai/the-agentic-ai-foundation-offers-shared-specs-for-building-running-and
- GPT-5.4 Pro pricing: https://www.glbgpt.com/hub/gpt-5-4-pricing/
- GPT-5.4 OpenRouter: https://openrouter.ai/openai/gpt-5.4
- Llama 4 coding: https://www.vellum.ai/llm-leaderboard
- Claude Opus 4.7 SWE-bench: https://www.crackr.dev/blog/best-llm-for-coding
- DeepSeek V4 Pro: https://www.morphllm.com/deepseek-v4
- DeepSeek V4 benchmark: https://codersera.com/blog/deepseek-v4-pro-review-benchmarks-pricing-2026/
- DeepSeek R2 status: https://www.meta-intelligence.tech/en/insight-deepseek-v4-r2
- Claude Mythos: https://www.anthropic.com/glasswing
- Claude Mythos red team: https://red.anthropic.com/2026/mythos-preview/
- AI News May 2026: https://llm-stats.com/ai-news
- AI News Air Street: https://press.airstreet.com/p/state-of-ai-may-2026
- CNN Gov testing: https://www.cnn.com/2026/05/05/tech/microsoft-google-xai-government-test-ai-models

## 🚧 Lacunas

1. **Claude Mythos — performance geral**: só há dados de segurança/cybersec; benchmarks acadêmicos (MMLU, SWE-bench) não publicados ainda — disponibilidade pública desconhecida
2. **Muse Spark (Meta)**: sem benchmarks quantitativos disponíveis; anúncio muito recente
3. **Grok 4.3 e NVIDIA Nemotron 3 Nano Omni**: benchmarks e preços não apurados
4. **Google I/O modelo novo**: anúncio esperado ~21/05 — monitorar
5. **DeepSeek R2**: sem data de lançamento confirmada; atraso tecnológico por chips persiste
6. **Llama 4 coding benchmark direto vs Claude Opus 4.7**: Meta não publicou scores comparativos em SWE-bench — permanece em aberto
7. **AGENTS.md spec completa**: adoção confirmada (60k projetos), mas spec técnica detalhada não verificada diretamente
