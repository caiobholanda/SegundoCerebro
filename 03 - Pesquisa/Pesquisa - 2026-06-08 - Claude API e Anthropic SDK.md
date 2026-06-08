---
tipo: pesquisa
status: em-andamento
criado: 2026-06-08
atualizado: 2026-06-08
tags: [ia, dev, claude-api]
pergunta-central: Quais são as novidades da API Claude e Anthropic SDK em junho de 2026?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-07 - Claude API e Anthropic SDK]]", "[[Pesquisa - 2026-06-08 - Claude Code — CLI e agentes]]"]
---

# Claude API e Anthropic SDK — 2026-06-08

## Modelos Atuais

- **Opus 4.8** — modelo flagship mais recente; preço inalterado ($5/$25 por MTok)
  - Default para alto esforço; coding agente aprimorado vs 4.7
  - Incluído no Microsoft Foundry catalog (catálogo de 11.000 modelos)
- **Claude Sonnet 4.8** — aguardado antes do fim de junho (Google I/O confirmou janela de lançamento)
- **Opus 4.1** — deprecated; retirement na API em **05/08/2026** → migrar para Opus 4.8

## Billing Change — 15/06/2026 (ATIVO)

A mudança de cobrança está em vigor desde 15/06:
- Agent SDK, `claude -p`, Claude Code GitHub Actions e agentes de terceiros saíram da cota de subscription
- Crédito mensal separado, cobrado à taxa completa da API (sem rollover):
  - Pro: $20/mês
  - Max 5x: $100/mês
  - Max 20x: $200/mês
- Requer **claim por e-mail** — sem claim = sem allowance

## Features API em Beta

| Feature | Status |
|---|---|
| Files API | beta |
| Skills | beta |
| MCP Connector | beta |
| Advisor Tool | beta |
| Prompt Caching | GA |
| Code Execution | disponível |
| Web Search / Web Fetch | disponível |

## Infraestrutura

- **Self-Hosted Sandboxes** (beta pública) — execução de ferramentas movida para ambiente do cliente; loop do agente permanece na Anthropic
- **MCP Tunnels** (research preview) — agentes alcançam servidores MCP privados sem expô-los à internet; gateway com conexão de saída única
- **Claude Platform on AWS** — Anthropic opera o serviço; dados processados fora do boundary AWS
- **Managed Agents** em sandbox controlado com acesso a servidores MCP privados
- Cache de 1h disponível (2× base vs cache padrão de 5min)

## Ecossistema

- **Microsoft Foundry**: catálogo de 11.000 modelos finalizado, incluindo Claude Opus 4.8
- EU AI Act: prazo de enforcement a 55 dias (a partir de 08/06/2026)

## Links

- [Anthropic Release Notes June 2026](https://releasebot.io/updates/anthropic)
- [Billing Split June 2026 Guide](https://help.apiyi.com/en/anthropic-claude-subscription-agent-sdk-billing-split-june-2026-en.html)
- [Agent SDK Overview](https://code.claude.com/docs/en/agent-sdk/overview)
- [AI News June 8 2026](https://www.buildfastwithai.com/blogs/ai-news-today-june-8-2026)
