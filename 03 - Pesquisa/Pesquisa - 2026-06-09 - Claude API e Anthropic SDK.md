---
tipo: pesquisa
status: em-andamento
criado: 2026-06-09
atualizado: 2026-06-09
tags: [ia, dev, claude-api]
pergunta-central: Quais são as novidades da API Claude e Anthropic SDK em 2026-06-09?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-08 - Claude API e Anthropic SDK]]", "[[Pesquisa - 2026-06-09 - Claude Code — CLI e agentes]]"]
---

# Claude API e Anthropic SDK — 2026-06-09

## Modelos Atuais

- **Opus 4.8** — flagship atual; default para alto esforço ($5/$25 por MTok)
- **Opus 4.1** — deprecated; retirement na API em **05/08/2026** → migrar para Opus 4.8
- **Claude Sonnet 4.8** — aguardado ainda em junho (janela confirmada pelo Google I/O)

## Novidades de Hoje

### Apple Foundation Models Framework
- Claude adicionou suporte ao Framework via novo Swift package para devs Apple
- Permite outputs Swift tipados com handoff para Claude: raciocínio multi-step, geração de código, web search, execução de código e streaming em SwiftUI
- Integração nativa com ecossistema iOS/macOS

### Self-Hosted Sandboxes (expansão)
- Execução de ferramentas movida para ambiente do cliente
- Suporte explícito a: Cloudflare, Daytona, Modal, Vercel como managed providers
- Loop do agente permanece na Anthropic; só a execução das tools vai para infra do cliente

### Enterprise Custom Roles
- Planos Enterprise podem criar roles administrativos personalizados
- Membros recebem acesso a áreas específicas (billing, privacidade) sem precisar ser Owners
- Melhora governança em organizações grandes

### Claude Platform on AWS
- Disponível via AWS com features nativas da API Claude
- Anthropic opera o serviço; dados processados fora do boundary AWS

## Features API

| Feature | Status |
|---|---|
| Files API | beta |
| Skills | beta |
| MCP Connector | beta |
| Advisor Tool | beta |
| Apple Foundation Models | novo |
| Self-Hosted Sandboxes | beta pública |
| Prompt Caching | GA |
| Code Execution | disponível |

## Billing Change — 15/06/2026 (ATIVO)

- Agent SDK, `claude -p`, Claude Code GitHub Actions fora da cota de subscription
- Crédito mensal separado (Pro $20, Max 5x $100, Max 20x $200)
- Requer claim por e-mail

## Links

- [Anthropic Release Notes June 2026](https://releasebot.io/updates/anthropic)
- [Claude Updates June 2026](https://releasebot.io/updates/anthropic/claude)
- [Models Overview](https://platform.claude.com/docs/en/about-claude/models/overview)
- [Claude Platform Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
