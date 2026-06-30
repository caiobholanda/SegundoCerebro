---
tipo: pesquisa
status: ativo
criado: 2026-06-30
atualizado: 2026-06-30
tags: [claude, claude-code, cli, mcp, ia]
pergunta-central: Quais são as últimas atualizações do Claude Code CLI e claude.ai em junho 2026?
related: []
---

# Claude Code e Claude.ai — Novidades (2026-06-30)

## Atualizações Recentes (27 jun — último changelog confirmado)

### Bug Fixes Críticos
- **Hook matchers com hífens**: `code-reviewer`, `mcp__brave-search` etc. agora fazem **exact-match** (antes fazia substring-match acidental — potencialmente causava execuções indesejadas de hooks)
- **Voice dictation macOS**: corrigido captura de silêncio em sessões longas quando o dispositivo de entrada padrão muda
- **Remote Control OAuth**: corrigido travamento em "reconnecting" quando token refresh acontecia ao retomar sessão

### Novas Features
- `CLAUDE_CODE_DISABLE_MOUSE_CLICKS`: desativa clique/drag/hover em fullscreen mantendo scroll do mouse
- **Streaming melhorado**: parágrafos longos aparecem linha a linha em vez de esperar toda a linha

### Melhorias de Resiliência
- **Auto-retry**: quedas de conexão durante `thinking` agora fazem retry automático em vez de mostrar "Connection closed while thinking"
- **Remote Control startup**: melhorias no início de sessões remotas e no comando `claude agents`

## Funcionalidades do Mês (Acumulado Junho 2026)

### Sub-agentes e Orquestração
- Sub-agentes recursivos até **5 níveis** de profundidade
- `Stop`/`SubagentStop` retornam `additionalContext`
- `claude agents --json` inclui campo `waitingFor`
- **Dynamic Workflows** (Research Preview): dezenas/centenas de subagentes paralelos por sessão com verificação embutida

### Controles e Debugging
- `--safe-mode` / `CLAUDE_CODE_SAFE_MODE`: inicia sem CLAUDE.md, plugins, skills, hooks, MCP servers
- `/cd`: muda diretório sem quebrar prompt cache
- `disableBundledSkills` / `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS`: oculta skills bundled e built-in slash commands
- `requiredMinimumVersion` / `requiredMaximumVersion` em managed settings

### Modelos e Fallback
- Fable 5 disponível via `/model fable` (requer `claude update`, v2.1.170+)
- Fable 5 suporta escala low–max effort mas não pode ter thinking desativado
- `fallbackModel` com até 3 modelos de fallback em ordem
- `enforceAvailableModels`: constrange Default ao allowlist gerenciado

### Enterprise
- **Artifacts beta** (18/06, Team/Enterprise): sessões viram páginas HTML com URLs privadas que atualizam em tempo real
- **Trusted Devices** para Remote Control Admins
- **Claude Tag no Slack** (Team/Enterprise)
- Managed Agents com cron + vault env vars

### MCP
- MCP headersHelper re-executa automaticamente em respostas 401/403
- Enterprise managed MCP policies corrigidas (allowedMcpServers/deniedMcpServers) para reconnect, IDE configs e cold start
- MCP Connector Okta (zero-touch provisioning)

## Comandos Úteis

```bash
# Iniciar sem customizações
claude --safe-mode

# Mudar diretório sem quebrar cache
/cd /novo/caminho

# Ver agentes em execução
claude agents --json

# Trocar modelo
/model fable
/model opus
/model sonnet
```

## Conexões

- [[Pesquisa - 2026-06-26 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-06-30 - Claude API]]

## Fontes
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [GitHub Releases anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Claude Code What's New](https://code.claude.com/docs/en/whats-new)
- [Claude Code Changelog — claudefa.st](https://claudefa.st/blog/guide/changelog)
- [SitePoint — Claude Code June 2026: 10 New Features](https://www.sitepoint.com/claude-code-june-2026-10-new-features-devs-need-to-know/)
