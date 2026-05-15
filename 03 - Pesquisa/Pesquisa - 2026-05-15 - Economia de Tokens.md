---
tipo: pesquisa
status: ativo
criado: 2026-05-15
atualizado: 2026-05-15
tags: [pesquisa, tokens, custo, otimizacao, prompt-caching, CoD, context-engineering]
pergunta-central: "Quais são as técnicas mais eficazes de redução de tokens em 2026 — Chain of Draft, context engineering e model routing — e como o prompt caching do Claude compara com o GPT em custo real?"
relacionado-a: [Pesquisa - 2026-05-14 - Economia de Tokens, Pesquisa - 2026-05-13 - Economia de Tokens, Pesquisa - 2026-05-15 - Claude API]
---

# Pesquisa — Economia de Tokens (15/05/2026)

## ❓ Pergunta central

Quais são as técnicas mais eficazes de redução de tokens em 2026 — Chain of Draft, context engineering e model routing — e como o prompt caching do Claude compara com o GPT em custo real?

## 🎯 Síntese

Chain of Draft (CoD) é a maior descoberta técnica desta pesquisa: uma técnica de prompting puro (sem fine-tuning) que mantém a acurácia do Chain of Thought usando apenas 7,6% dos tokens de raciocínio — corte de 68–92%. Context engineering emergiu como disciplina central: decidir *o que* entra no modelo, *quando*, *quanto* e *quando remover* é frequentemente mais impactante que qualquer otimização de modelo. Claude cobra 1,25× a mais para escrever cache (premium de write inexistente no GPT), mas o benefício de ler a 10% do preço normal gera ROI positivo a partir de 5 leituras/hora no TTL de 1h. Combinando as principais técnicas, é possível cortar 70–80% dos custos com mesma qualidade.

## 🔬 Detalhes

### 1. Chain of Draft (CoD) — Raciocínio com 7,6% dos Tokens

**Origem**: paper de pesquisadores da Zoom Communications (fev/2025), agora amplamente adotado em produção em 2026.

**Como funciona**:
- Instrui o modelo a produzir passos de raciocínio *concisos* — limite de ~5 palavras por passo
- Em vez de "Primeiro preciso verificar se X... então considero Y... logo concluo que..." → escreve "X ok. Y válido. Logo Z."
- Implementação: pura engenharia de prompt — sem fine-tuning, sem arquitetura especial
- Requer exemplos few-shot de CoD no prompt para calibrar o comportamento

**Resultados medidos:**
| Métrica | Melhoria |
|---------|---------|
| Uso de tokens vs CoT | -68% a -92% (apenas 7,6% dos tokens) |
| Acurácia | Igual ou superior ao CoT |
| Velocidade de geração | 40–76% mais rápido |

**Quando usar**: raciocínio intermediário, análise multi-passo, explicações de código — qualquer tarefa que normalmente beneficiaria de CoT mas onde o custo é relevante.

**Quando NÃO usar**: quando o usuário precisa ver o raciocínio completo (transparência), ou tarefas criativas onde a verbosidade de raciocínio pode melhorar o output.

### 2. Context Engineering — A Disciplina Central

> "A pergunta do usuário pode ser a menor parte do contexto total. Context engineering é a prática de decidir o que entra no modelo, quando, quanto, e quando resumir, cachear, filtrar ou remover."

**Por que importa**: em produção, o contexto típico inclui system prompt + documentos RAG + histórico de conversa — o conteúdo da mensagem do usuário é <5% do total de tokens.

**Táticas de context engineering:**
1. **Truncagem de RAG**: em vez de 4-8 documentos longos, limitar a 2-3 chunks curtos e truncados → corta tokens de entrada > 50% sem perda de precisão
2. **Sliding window**: manter apenas as últimas N mensagens no histórico de conversa
3. **Sumarização progressiva**: quando o histórico cresce, compactar mensagens antigas em resumo
4. **Instruções condicionais**: não incluir seções do system prompt que não são relevantes para a tarefa atual
5. **Filtro de documentos**: aplicar relevância scoring antes de incluir no contexto — nunca passar tudo

### 3. Model Routing — 60–70% de Economia

**Conceito**: classificar cada query por complexidade e roteá-la ao modelo de menor custo suficiente.

**Tabela de referência (Anthropic, maio/2026):**
| Tier | Modelo | Input | Quando usar |
|------|--------|-------|-------------|
| Barato | Haiku 4.5 | $1/MTok | Classificação, extração simples, formatação |
| Médio | Sonnet 4.6 | $3/MTok | A maioria das tarefas de produção |
| Caro | Opus 4.7 | $5/MTok | Raciocínio complexo, planejamento multi-step |
| Premium | Opus 4.7 Fast | $30/MTok | Tempo real de baixa latência crítica |

**Impacto**: times que implementam routing reportam 60–70% de redução de custo com mesma qualidade média percebida.

### 4. Claude vs GPT — Comparativo de Prompt Caching

**Diferença crítica no write premium:**
| Aspecto | Claude | GPT (OpenAI) |
|---------|--------|-------------|
| Cache write (TTL 5min) | 1,25× base (ex: $6,25 p/ Opus) | 1× base (sem premium) |
| Cache write (TTL 1h) | 2× base (ex: $10 p/ Opus) | N/A |
| Cache read | 0,10× base ($0,50 p/ Opus) | ~0,50× base |
| TTL disponível | 5min ou 1h | Automático (~1h) |

**Breakeven Claude (TTL 1h)**:
- Write 1h = 2× a mais
- Para compensar, é necessário ≥ 5 reads/hora no mesmo cache
- Workloads com >5 usuários/hora usando o mesmo system prompt → TTL 1h sempre vantajoso

**Breakeven Claude (TTL 5min)**:
- Write 5min = 1,25× a mais
- Break-even com ~2 reads nos 5 minutos
- Chatbots com múltiplas mensagens por conversa: praticamente sempre vantajoso

**Atenção** — artigo recente: "The 5-Minute TTL Change That's Costing You Money" alerta que o TTL de 5 minutos pode fazer que o cache expire entre requests espaçadas, gerando writes repetidos sem reads suficientes para compensar o premium.

### 5. Impacto Combinado — Casos Reais

**Suporte chatbot (1M interações/dia, 20KB de contexto médio):**
- Sem otimização: ~$450.000/mês
- Com prompt caching + CoD + model routing: ~$95.000/mês
- **Economia: $355.000/mês (~79%)**

**Estratégia de implementação recomendada (em ordem de ROI):**
1. Prompt caching no system prompt e documentos base (impacto imediato: 50-90%)
2. Model routing por complexidade de query (impacto: 60-70%)
3. Truncagem e filtragem de RAG (impacto: 30-50% em contexto)
4. Chain of Draft em tarefas de raciocínio (impacto: 70-90% nos reasoning tokens)
5. Semantic caching para queries repetidas (impacto variável por workload)

### 6. Paper Relevante: Token Economics for LLM Agents (arXiv)

- **Paper**: "Token Economics for LLM Agents: A Dual-View Study from Computing and Economics" — arXiv:2605.09104v1
- Aborda tokens como unidade econômica dual: custo computacional + custo financeiro
- Formaliza trade-offs entre qualidade, latência e custo em sistemas multi-agente
- Relevante para decisões de arquitetura em sistemas com múltiplos agentes em cadeia

## 🔗 Conexões

- [[Pesquisa - 2026-05-14 - Economia de Tokens]] — preços Opus 4.7, Compaction API, LLMLingua, semantic caching dinâmico
- [[Pesquisa - 2026-05-13 - Economia de Tokens]] — base de caching e compaction
- [[Pesquisa - 2026-05-15 - Claude API]] — billing separado para uso programático (impacto direto em custo)
- [[Pesquisa - 2026-05-14 - Claude Code]] — billing multi-agent e estimativas de custo de subagentes

## 📚 Fontes

- [Chain of Draft: Thinking Faster by Writing Less — arXiv](https://arxiv.org/abs/2502.18600)
- [Chain-of-Draft Prompting: A More Efficient Alternative to CoT — Helicone](https://www.helicone.ai/blog/chain-of-draft)
- [Token Optimization 2026: Saving up to 80% LLM Costs — ObviousWorks](https://www.obviousworks.ch/en/token-optimization-saves-up-to-80-percent-llm-costs/)
- [LLM Token Optimization: Cut Costs & Latency in 2026 — Redis](https://redis.io/blog/llm-token-optimization-speed-up-apps/)
- [GPT vs Claude Prompt Caching Billing — Apiyi.com](https://help.apiyi.com/en/gpt-vs-claude-prompt-caching-pricing-comparison-en.html)
- [Claude Prompt Caching in 2026: The 5-Minute TTL Change — DEV Community](https://dev.to/whoffagents/claude-prompt-caching-in-2026-the-5-minute-ttl-change-thats-costing-you-money-4363)
- [Token Economics for LLM Agents — arXiv](https://arxiv.org/html/2605.09104v1)
- [AI Token Cost Optimization: 9 Strategies — RedBlink](https://redblink.com/ai-token-cost-optimization/)

## 🚧 Lacunas

- CoD com modelos de raciocínio estendido (Opus 4.7 com extended thinking): funciona da mesma forma ou há conflito com o processo interno de raciocínio?
- Benchmark oficial de CoD especificamente para Claude Opus/Sonnet (paper usa modelos genéricos)
- O artigo do "5-minute TTL change" refere-se a uma mudança de comportamento da Anthropic ou a um padrão de uso incorreto? Investigar
- Ferramenta automatizada de model routing: existe SDK oficial ou é sempre implementação custom?
- Impacto do novo tokenizador do Opus 4.7 (~35% mais tokens) no CoD: o overhead de tokens extra pode reduzir o ganho líquido do CoD?
