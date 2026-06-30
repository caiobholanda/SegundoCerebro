---
tipo: pesquisa
status: ativo
criado: 2026-06-30
atualizado: 2026-06-30
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as últimas novidades da Anthropic API e modelos Claude em junho 2026?
related: []
---

# Claude API — Novidades (2026-06-30)

## Destaques da Semana (27–30 jun)

### Mythos 5 — Liberação Parcial pelo Governo EUA
Em 26/06, CNN reportou que o governo dos EUA autorizou a Anthropic a liberar o Mythos 5 de forma limitada, revertendo parcialmente a restrição de exportação que bloqueava acesso estrangeiro. O modelo permanece restrito a parceiros Glasswing, mas a autorização abre caminho para expansão controlada.

### Azure / Microsoft Foundry — GA
Claude está agora geralmente disponível no **Microsoft Foundry** (Azure), com:
- Autenticação nativa via Azure IAM
- Billing integrado ao Azure
- Suporte a data zone nos EUA
- Cobertura de governance corporativo

### Apple Foundation Models — Amanhã
Suporte ao Claude via **Apple Foundation Models Framework** disponível a partir de hoje/amanhã:
- iOS 27, iPadOS 27, macOS 27, watchOS 27, visionOS 27
- Integração nativa Swift sem chamada de API externa
- Anthropic passa a ser parceiro oficial de modelo on-device Apple

### Novas Features Enterprise
- **Admin custom roles**: permissões admin (billing, privacy) sem precisar de Owner
- **Trusted Devices** para Remote Control Admins: verificação de dispositivo antes de sessões remotas
- **Claude Tag no Slack** (Team/Enterprise): @Claude diretamente em conversas Slack
- **Enterprise-managed MCP Connectors**: começa com Okta — admin provisiona uma vez, usuário tem acesso zero-touch no primeiro login

## Status Operacional
- API esteve operacional 27–30/jun
- Degraded performance em 27/jun (resolvido)

## Contexto Acumulado de Junho

| Modelo | Input | Output | Contexto |
|--------|-------|--------|----------|
| Fable 5 | $10/MTok | $50/MTok | 1M tokens |
| Opus 4.8 | $5/MTok | $25/MTok | 1M tokens |
| Sonnet 4.6 | $3/MTok | $15/MTok | 200K tokens |
| Haiku 4.5 | $1/MTok | $5/MTok | 200K tokens |

- **Billing split** ativo desde 15/06: Agent SDK / `claude -p` / GitHub Actions consomem crédito separado
- **Fable 5** período gratuito encerrou 22/06 → consome créditos normais agora
- **Sonnet 4 + Opus 4 originais** deprecados (chamadas falham desde 15/06)
- **Prompt caching**: $0,30/MTok (90% off do input normal)
- **Batch API**: 50% off para processamento assíncrono

## Conexões

- [[Pesquisa - 2026-06-26 - Claude API]]
- [[Pesquisa - 2026-06-30 - Economia de Tokens]]
- [[Pesquisa - 2026-06-30 - Claude Code e Claude.ai]]

## Fontes
- [CNN — Mythos 5 partial release](https://edition.cnn.com/2026/06/26/tech/anthropic-mythos-release)
- [Anthropic Release Notes June 2026](https://releasebot.io/updates/anthropic)
- [Claude Platform Docs — Models](https://platform.claude.com/docs/en/about-claude/models/all-models)
- [Claude Platform Docs — Pricing](https://platform.claude.com/docs/en/about-claude/pricing)
