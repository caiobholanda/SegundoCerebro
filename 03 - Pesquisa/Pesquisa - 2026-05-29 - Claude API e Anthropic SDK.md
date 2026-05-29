---
tipo: pesquisa
status: em-andamento
criado: 2026-05-29
atualizado: 2026-05-29
tags: [pesquisa, claude, anthropic, api, ia]
related: ["[[Pesquisa - 2026-05-28 - Claude API e Anthropic SDK]]"]
pergunta-central: Quais as novidades da Claude API e Anthropic em maio de 2026?
relacionado-a: [claude-api, anthropic-sdk]
---

# Claude API e Anthropic SDK — 2026-05-29

## Claude Opus 4.8 — Lançado em 28/05/2026

Novo modelo lançado ~6 semanas após Opus 4.7. Mesmo preço, melhorias em benchmarks e novos recursos.

### Benchmarks
| Métrica | Opus 4.7 | Opus 4.8 |
|---------|----------|----------|
| Codificação agente | 64,3% | 69,2% |
| Raciocínio multidisciplinar | 54,7% | 57,9% |
| Falhas de código não detectadas | base | 4× menos |

### Preços (sem alteração)
| Modo | Input | Output |
|------|-------|--------|
| Padrão | $5/MTok | $25/MTok |
| Fast (2,5×) | $10/MTok | $50/MTok |

Fast mode agora **3× mais barato** que nos modelos anteriores.

### API ID
`claude-opus-4-8` — disponível em: claude.ai, Claude API, AWS Bedrock, Google Vertex AI, Microsoft Foundry

## Novos Recursos

### Effort Control
Toggle que permite controlar exatamente quanto poder computacional é alocado por resposta. Nível baixo = respostas mais rápidas + consumo de rate limit muito menor.

### Dynamic Workflows (Research Preview)
Sistema de orquestração de subagentes paralelos dentro do Claude Code:
- Planeja tarefa → fan-out de subagentes → verifica outputs vs test suite
- Até **16 agentes concorrentes**, **1.000 agentes total** por run
- Disponível para Enterprise, Team e Max plans

### System Instructions em Tempo Real
Desenvolvedores usando Messages API podem agora fornecer instruções do sistema **no meio da tarefa** para ajustar comportamento do modelo.

## Outras Novidades de Maio

- **Managed Agents em sandbox**: podem operar em sandbox controlado pelo desenvolvedor + conectar a servidores MCP privados
- **28 integrações de segurança e compliance**: CrowdStrike, Okta, Cloudflare, Palo Alto e outros — gestão de Claude igual a outras apps corporativas
- **Claude Compliance API**: logs de conversa para auditoria

## Links
- [Introducing Claude Opus 4.8 — Anthropic](https://www.anthropic.com/news/claude-opus-4-8)
- [Dynamic Workflows details — MarkTechPost](https://www.marktechpost.com/2026/05/28/anthropic-ships-claude-opus-4-8-alongside-dynamic-workflows-and-cheaper-fast-mode-with-workflows-capped-at-1000-subagents/)
- [Pricing & API — Coursiv](https://coursiv.io/blog/claude-opus-4-8)
