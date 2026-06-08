---
tipo: pesquisa
status: em-andamento
criado: 2026-06-07
atualizado: 2026-06-07
tags: [ia, dev, claude-api]
pergunta-central: Quais são as novidades da API Claude e Anthropic SDK em junho de 2026?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-06 - Claude API e Anthropic SDK]]", "[[Pesquisa - 2026-06-07 - Claude Code — CLI e agentes]]"]
---

# Claude API e Anthropic SDK — 2026-06-07

## Modelos

- **Opus 4.8** é o modelo flagship mais recente — preço inalterado ($5/$25 por MTok)
  - Default para alto esforço, balanceando qualidade e UX
  - Coding agente aprimorado em relação ao 4.7
- **Opus 4.1** em depreciação — retirement na API em **05/08/2026**; migrar para Opus 4.8
- Sonnet 4.6 e Haiku 4.5 continuam como opções mais baratas

## Billing Change — 15/06/2026 (ATIVO AGORA)

A mudança de billing já está em vigor:
- **Agent SDK**, **claude-p**, **Claude Code GitHub Actions** e **agentes de terceiros** saíram do limite de subscription
- Passaram para **crédito mensal separado** (cobrado a taxas completas de API, sem rollover):
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

## Infraestrutura Enterprise

- **Managed Agents** agora operam em sandbox controlado pelo cliente com acesso a servidores MCP privados
- **Claude Platform on AWS** — primeira oferta onde Anthropic opera o serviço (dados processados fora do boundary AWS)
- Cache de 1h disponível (2× base vs cache padrão)

## Links
- [Claude API Docs - Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
- [Claude Billing Change June 2026](https://www.buildthisnow.com/blog/guide/mechanics/claude-billing-change-june-2026)
- [Model Deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)
- [Opus 4.8 Pricing](https://www.finout.io/blog/claude-opus-4.8-pricing-2026-everything-you-need-to-know)
