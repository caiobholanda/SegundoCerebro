---
tipo: pesquisa
status: ativo
criado: 2026-07-14
atualizado: 2026-07-14
tags: [pesquisa, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e modelos Claude em 14 de julho de 2026?
relacionado-a: [claude-code, ia, dev]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-07-14

## ❓ Pergunta central
Quais são as novidades da API da Anthropic e modelos Claude em 14 de julho de 2026?

## 🎯 Síntese
Novidade principal do dia: beta header `agent-memory-2026-07-22` muda comportamento de listagem de memórias para ordem estável definida pelo servidor. Rate limits unificados: Claude Sonnet e Haiku agora igualam Opus em todos os tiers. Fast Mode do Opus 4.7 removido em 24/jul.

## 🔬 Detalhes

### Beta Header — agent-memory-2026-07-22
- Retorna memórias em **ordem estável definida pelo servidor**
- Parâmetros `order_by` e `order` são **ignorados** com este header
- Sinaliza mudança de comportamento antes da data de rollout (22/jul)

### Rate Limits Unificados
- Claude Sonnet e Claude Haiku agora igualam **Claude Opus** em todos os tiers
- Tiers consolidados em três: **Start**, **Build**, **Scale**
- Facilita migração entre modelos sem ajuste de límites

### Depreciações
- **Fast Mode Opus 4.7**: removido em 24/julho de 2026
- Requisições com `speed: "fast"` para `claude-opus-4-7` passarão a retornar erro após essa data

### Azure / Microsoft Foundry
- Claude Opus 4.8 e Claude Haiku 4.5 disponíveis via Messages API
- Identidade, cobrança e governança Azure-nativas
- Suporte opcional a US data zone

### Hierarquia de Modelos Atual
| Modelo | Preço Input | Preço Output | Obs |
|--------|-------------|--------------|-----|
| Claude Mythos 5 | — | — | Acesso limitado (Project Glasswing) |
| Claude Fable 5 | — | — | Geral |
| Claude Sonnet 5 | $2/1M | $10/1M | Promo até 31/08; depois $3/$15 |
| Claude Opus 4.8 | $5/1M | $25/1M | Azure/Foundry |
| Claude Haiku 4.5 | $1/1M | $5/1M | — |

## 🔗 Conexões
- [[Pesquisa - 2026-07-14 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-07-14 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-07-13 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Updates by Anthropic - July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic Release Notes - July 2026 - Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Developer Platform Updates - Releasebot](https://releasebot.io/updates/anthropic/claude-developer-platform)
- [Claude Agent SDK 2026 - Totalum Blog](https://www.totalum.app/blog/claude-agent-sdk-totalum-2026)

## 🚧 Lacunas
- Comportamento exato do `agent-memory-2026-07-22` em produção após 22/jul
- Se Fable 5 e Mythos 5 terão rate limits próprios pós-unificação
