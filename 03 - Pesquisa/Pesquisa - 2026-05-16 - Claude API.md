---
tipo: pesquisa
status: ativo
criado: 2026-05-16
atualizado: 2026-05-16
tags: [ia, dev, claude, anthropic, api]
pergunta-central: Quais são as novidades mais relevantes da API da Anthropic em maio de 2026?
relacionado-a: Claude Code
---

# Claude API — Novidades maio 2026

## Modelos Atuais

A linha atual (maio 2026) é composta por três modelos:

| Modelo | Input (por 1M tokens) | Output (por 1M tokens) |
|---|---|---|
| Claude Haiku 4.5 | $1,00 | $5,00 |
| Claude Sonnet 4.6 | $3,00 | $15,00 |
| Claude Opus 4.7 | $5,00 | $25,00 |

**Claude Opus 4.7** foi lançado em 16 de abril de 2026 com o mesmo preço do Opus 4.6, mas usa um novo tokenizador que pode consumir até **35% mais tokens** para o mesmo texto — ponto de atenção crítico para aplicações sensíveis a custo.

A redução foi expressiva em relação à geração anterior: Opus 4.5/4.6 a $5/$25 são **66,7% mais baratos** que Opus 4 e 4.1, que custavam $15/$75.

## Prompt Caching

Os multiplicadores de preço para cache:

- **Cache write 5 min**: 1,25× o preço base de input
- **Cache write 1 hora**: 2× o preço base de input
- **Cache read**: 0,10× o preço base (redução de **90%** no custo de input em cache)

Prompt caching é a alavanca de custo mais poderosa disponível — para contextos longos reutilizados (system prompts, docs, código), o retorno é imediato.

## Message Batches API

- Processa requisições de forma assíncrona, retorna em até 24 horas
- Desconto fixo de **50%** sobre o preço padrão de tokens
- Ideal para workloads offline: classificação em massa, geração de embeddings, avaliação de datasets

## Claude Managed Agents (beta público — abril 2026)

Anthropic lançou em beta público o runtime gerenciado para agentes stateful e de longa duração:

- Preço: **$0,08 por hora de sessão** + tokens padrão
- Permite sessões persistentes sem gerenciar estado manualmente
- Suporta loops de agentes complexos com memória entre turnos

## Compaction API (beta — fevereiro 2026)

- Permite que o Opus 4.6 comprima automaticamente o histórico de conversa
- Viabiliza conversas efetivamente infinitas sem reset manual de sessão
- Relevante para agentes de longa duração que acumulam muito contexto

## Levers de Custo Publicados pela Anthropic

A Anthropic passou a publicar explicitamente os principais vetores de redução de custo:
1. Batch API (−50%)
2. Prompt caching (−90% em cache reads)
3. Seleção de modelo adequado ao task
4. Files API (evita reenvio de documentos grandes)
5. Tool use otimizado (reduzir chamadas desnecessárias)

## Conexoes

- [[Pesquisa - 2026-05-16 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-16 - Economia de Tokens]]
- [[Pesquisa - 2026-05-16 - Inteligencia Artificial]]

## Fontes

- [Anthropic API Pricing — Finout](https://www.finout.io/blog/anthropic-api-pricing)
- [Claude API Pricing 2026 — CloudZero](https://www.cloudzero.com/blog/claude-api-pricing/)
- [Prompt Caching — Claude Docs](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)
- [Claude Code Pricing 2026 — NxCode](https://www.nxcode.io/resources/news/claude-code-pricing-2026-free-api-costs-max-plan)

## 🔄 Complemento — Novidades Adicionais (16/05)

### Task Budgets (beta público — Opus 4.7)
- Permite ao desenvolvedor guiar o **gasto de tokens em runs agenticos longos**
- Claude prioriza trabalho quando o budget está próximo do limite — sem explodir custo
- Crítico para pipelines autônomos de longa duração

### Claude Platform on AWS
- Claude API em infraestrutura gerenciada pela Anthropic, acessível via AWS
- Autenticação via **AWS IAM** + billing consolidado no AWS
- Acesso: Messages API, Files API, Message Batches API, Managed Agents, Skills, code execution, tool use

### Managed Agents — Dreaming + Multiagent Orchestration
- **Dreaming**: agentes revisam sessões passadas para encontrar padrões e auto-melhorar
- **Multiagent orchestration**: agente-líder divide tarefas em subtasks e delega a especialistas com modelo/prompt/tools próprios, trabalhando em paralelo num filesystem compartilhado

### Features em Beta (resumo atualizado)
| Feature | O que faz |
|---------|-----------|
| Files API | Upload de docs persistentes entre conversas |
| Skills API | Ensina "boas práticas" de domínio para resultados consistentes |
| MCP Connector | Liga Claude a servidor MCP remoto sem código cliente |

### Billing Split Programático — Vigência 15/06/2026
- Dois pools: uso via ferramentas Anthropic (chat, Claude Code CLI) vs. Agent SDK / terceiros
- Créditos mensais por plano (Pro $20 / Max 5x $100 / Max 20x $200)
- Taxas de API padrão (mais caras que subscrição) sobre o crédito programático

#### Fontes adicionais
- [Anthropic Managed Agents 3 features — 9to5Mac](https://9to5mac.com/2026/05/07/anthropic-updates-claude-managed-agents-with-three-new-features/)
- [Introducing Claude Opus 4.7 — Anthropic](https://www.anthropic.com/news/claude-opus-4-7)
- [Billing overhaul June 2026 — Apiyi.com](https://help.apiyi.com/en/anthropic-claude-subscription-agent-sdk-billing-split-june-2026-en.html)
