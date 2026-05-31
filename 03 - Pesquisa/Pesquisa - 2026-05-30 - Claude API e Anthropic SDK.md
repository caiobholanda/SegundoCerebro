---
tipo: pesquisa
status: em-andamento
criado: 2026-05-30
atualizado: 2026-05-30
tags: [pesquisa, claude, anthropic, api, ia]
related: ["[[Pesquisa - 2026-05-29 - Claude API e Anthropic SDK]]"]
pergunta-central: Quais as novidades da Claude API e Anthropic no final de maio de 2026?
relacionado-a: [claude-api, anthropic-sdk]
---

# Claude API e Anthropic SDK — 2026-05-30

## Claude Opus 4.8 — Consolidação (lançado 28/05)

Modelo já disponível em todos os canais. Destaques consolidados:

| Recurso | Detalhe |
|---------|---------|
| Codificação agente | 69,2% (↑ de 64,3% no 4.7) |
| Raciocínio multidisciplinar | 57,9% (↑ de 54,7%) |
| Falhas de código não detectadas | 4× menos que 4.7 |
| Fast Mode | $10/$50 MTok — 3× mais barato que versões anteriores |

API ID: `claude-opus-4-8`

## Dynamic Workflows — Research Preview

Disponível em: Claude Code CLI, Desktop, VS Code — planos Max, Team e Enterprise.

- Planeja tarefa → fan-out de subagentes → verifica outputs vs test suite
- Até **16 agentes concorrentes**, **1.000 agentes total** por run
- Também acessível via Claude API, Bedrock, Vertex AI, Microsoft Foundry

## Novos Recursos na Plataforma

- **Files API (beta)**: enviar e referenciar documentos em conversas
- **Skills (beta)**: ensinar boas práticas e comportamentos personalizados ao modelo
- **MCP Connector (beta)**: integração gerenciada de servidores MCP
- **Managed Agents webhooks**: disparo de eventos em fluxos agenticos
- **Multi-agent orchestration**: coordenação de múltiplos agentes via API
- **Self-hosted sandboxes no AWS**: ambientes controlados pelo desenvolvedor com acesso a MCP privados

## Effort Control

Toggle de controle de poder computacional por request:
- Nível baixo → respostas mais rápidas + menor consumo de rate limit
- Nível xhigh → raciocínio profundo, mais tokens de pensamento

## Integrações de Segurança

28 integrações com plataformas de segurança corporativa: CrowdStrike, Okta, Cloudflare, Palo Alto Networks, entre outros. Claude Compliance API fornece logs de conversa para auditoria regulatória.

## Links
- [Claude Opus 4.8 — Exame](https://exame.com/inteligencia-artificial/claude-opus-4-8-e-lancado-o-que-muda-no-novo-modelo-de-ia-da-anthropic/)
- [Anthropic Release Notes — Releasebot](https://releasebot.io/updates/anthropic)
- [Dynamic Workflows — AndroidHeadlines](https://www.androidheadlines.com/2026/05/anthropic-claude-opus-48-dynamic-workflows-coding.html)
- [Opus 4.8 Fast Mode mais barato — PCGuia](https://www.pcguia.pt/2026/05/anthropic-lanca-o-novo-modelo-de-ia-opus-4-8-com-precos-mais-baixos/)
