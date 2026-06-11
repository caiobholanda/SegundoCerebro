---
tipo: pesquisa
status: ativo
criado: 2026-06-11
atualizado: 2026-06-11
tags: [ia, dev, claude, api]
pergunta-central: Quais são as novidades da API Claude e do ecossistema Anthropic em 11/06/2026?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-10 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-11

## Claude Fable 5 — lançado 09/06/2026

Primeiro modelo da família Mythos aberto ao público. Características:

- **Preço API**: $10 input / $50 output por MTok (2× Opus 4.8)
- **Context window**: 1M tokens | **Max output**: 128K tokens
- **Effort levels**: até `max` (inclui `xhigh`) | **Thinking**: adaptive only
- Disponível em: API direta, AWS Bedrock, Google Vertex AI, Azure Foundry
- **Planos Pro/Max/Team/Enterprise**: gratuito até 22/06 → depois consome créditos

### Salvaguardas — Classificadores do Fable 5

Compartilha arquitetura com Mythos 5, mas adiciona classificadores em 4 domínios:

| Domínio | Comportamento |
|---------|--------------|
| Cibersegurança | Redireciona para Opus 4.8 |
| Biologia | Redireciona para Opus 4.8 |
| Química | Redireciona para Opus 4.8 |
| Destilação de modelos | Redireciona para Opus 4.8 |

**+95% das sessões não acionam nenhum classificador.**

## Claude Mythos 5

- Sem as restrições de cibersegurança/bio/quím
- Disponível imediatamente para parceiros do Glasswing
- Acesso ampliado planejado em consulta com o governo dos EUA
- Trilha separada para pesquisadores de biologia/química sem restrições

## Agent SDK Billing Split — ATIVO em 15/06

| Plano | Crédito separado |
|-------|-----------------|
| Pro | $20/mês |
| Max 5x | $100/mês |
| Max 20x | $200/mês |

## Contexto corporativo

- **Anthropic pré-IPO**: avaliado em $965 bilhões (reportado 10/06)
- Modelo API ID: `claude-fable-5` (selecionável via `/model fable` no CLI após `claude update`)

## Links

- [[Pesquisa - 2026-06-10 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-06-11 - Claude Code — CLI e agentes]]
