---
tipo: pesquisa
status: ativo
criado: 2026-06-12
atualizado: 2026-06-12
tags: [ia, dev, claude, api]
pergunta-central: Quais são as novidades da API Claude e do ecossistema Anthropic em 12/06/2026?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-11 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-12

## Claude Fable 5 — status atual (pós-lançamento 09/06)

- **ID**: `claude-fable-5` | acesso via `/model fable` no CLI após `claude update`
- **Preço**: $10 input / $50 output por MTok
- **Context**: 1M tokens | **Max output**: 128K tokens
- **Thinking**: adaptive (always-on) | **Effort**: até `max`
- **Disponibilidade**: API direta, AWS Bedrock, Google Vertex AI, Azure Foundry
- **Pro/Max/Team**: gratuito até 22/06 → depois consome créditos da assinatura
- **Classificadores**: ciberseg / bio / quím / destilação → redirecionam para Opus 4.8 (+95% sessões não acionam)

## Claude Mythos 5

- Mesmo modelo base do Fable 5, sem salvaguardas em ciberseg/bio/quím
- Acesso imediato para parceiros Glasswing
- Trilha separada para pesquisadores de biologia/química sem restrições
- Acesso ampliado planejado em consulta com o governo dos EUA

## Claude Platform on AWS

Lançado junto ao Fable 5. Oferece:
- IAM authentication + AWS billing
- Messages API, Files API, Message Batches API
- Claude Managed Agents, Agent Skills, code execution, tool use
- Infraestrutura gerenciada pela Anthropic (não é apenas Bedrock)

## Novas features API (betas ativos)

| Feature | Status |
|---------|--------|
| Advisor strategy | beta — dá boost de inteligência a agentes |
| Web search + web fetch | beta — amplia conhecimento em tempo real |
| Code execution (Python) | beta |
| Files API | beta |
| Skills | beta — ensina melhores práticas ao modelo |
| MCP Connector | beta — conecta a servidores MCP remotos |
| Prompt caching | GA |
| Citations | GA |
| Batch processing | GA |

## Agent SDK Billing Split — ATIVO em 15/06/2026

| Plano | Crédito Agent SDK |
|-------|------------------|
| Pro | $20/mês |
| Max 5x | $100/mês |
| Max 20x | $200/mês |

## Contexto corporativo

- **IPO Anthropic**: protocolo confidencial de IPO em 01/06/2026
- **Avaliação pré-IPO**: $965 bilhões (reportado 10/06)
- **OpenAI**: também em processo de IPO em 2026

## Links

- [[Pesquisa - 2026-06-11 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-06-12 - Claude Code — CLI e agentes]]
