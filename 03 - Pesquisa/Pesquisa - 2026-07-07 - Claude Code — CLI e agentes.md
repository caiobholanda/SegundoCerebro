---
tipo: pesquisa
status: em-andamento
criado: 2026-07-07
atualizado: 2026-07-07
tags: [ia, claude, claude-code, agentes, cli]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em julho de 2026?
relacionado-a: []
related: []
---

# Claude Code — CLI e Agentes — 2026-07-07

## v2.1.202 (6/jul/2026) — Novidades

### Dynamic Workflows

Nova configuração **"Dynamic workflow size"** em `/config` para controlar quantos agentes o Claude cria em workflows dinâmicos (pequeno / médio / grande). Permite calibrar custo vs paralelismo.

**Atributos OpenTelemetry**: `workflow.run_id` e `workflow.name` agora incluídos no telemetry de agentes em workflows — possível reconstruir toda a atividade de um run via OTel.

### Bug Fixes Relevantes

| Fix | Detalhe |
|-----|---------|
| Crash `Ctrl+R` | Histórico inline travava ao aceitar/cancelar enquanto ainda scaneava |
| `/rename` background | Era revertido ao reiniciar a sessão |
| JetBrains flickering | Corrigido em 2026.1+ com synchronized output |
| Shift+non-ASCII | Caracteres descartados em terminais com protocolo Kitty |
| PowerShell Windows | Validação de comando travava quando processo filho segurava pipes |

## Modo de Permissão Manual — Novo Padrão

O modo padrão de permissão passou para **Manual** (CLI, VSCode, JetBrains). `AskUserQuestion` não auto-continua mais — aguarda resposta explícita do usuário.

## Managed Agents em Beta Público

Agentes gerenciados agora rodam em **cronograma** e acessam ferramentas CLI autenticadas com segurança. Env vars armazenadas em cofre seguro.

## Status de Limites (ativo agora)

+50% nos limites semanais até **13/jul às 18h PDT**. Após essa data, limites revertem. Planos: Pro, Max, Team, Enterprise.

## Links

- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates Julho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog — gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [Claude Code limites +50%](https://apidog.com/blog/claude-code-weekly-limits-50-percent-increase-july-2026/)
- [Enabling autonomous Claude Code](https://www.anthropic.com/news/enabling-claude-code-to-work-more-autonomously)
