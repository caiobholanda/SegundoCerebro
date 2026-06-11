---
tipo: pesquisa
status: ativo
criado: 2026-06-11
atualizado: 2026-06-11
tags: [claude, dev, ia, ferramentas]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em 11/06/2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-10 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e agentes — 2026-06-11

## v2.1.170 — lançada 09/06/2026

### Fable 5 no CLI

- Selecionável via `/model fable` após `claude update`
- Context window 1M tokens, max output 128K, effort até `xhigh`
- Adaptive thinking only (sem modo fixo)
- Preço: $10/$50 por MTok

### Novos comandos e flags

| Recurso | Descrição |
|---------|-----------|
| `--safe-mode` / `CLAUDE_CODE_SAFE_MODE` | Inicia sem customizações: CLAUDE.md, plugins, skills, hooks, MCP servers — ideal para troubleshooting |
| `/cd <diretório>` | Move sessão para novo working directory sem quebrar o prompt cache |
| `/plugin list` | Lista plugins instalados; flags `--enabled` / `--disabled` |

### Agent View

- Gerencia múltiplas sessões em uma única CLI
- Permite: iniciar agentes, enviar para background, ver status e última resposta, retomar quando necessário
- Evita deixar sessões ociosas acumulando custo

## Enterprise — Managed Settings

- `requiredMinimumVersion` / `requiredMaximumVersion`: Claude Code recusa iniciar fora do range e orienta o usuário para versão aprovada
- Restringe versões em ambientes corporativos controlados

## Bug Fixes & Reliability

- Redução de uso de CPU
- Correções Windows e macOS
- Melhora geral de estabilidade e troubleshooting

## Links

- [[Pesquisa - 2026-06-10 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-11 - Claude API e Anthropic SDK]]
