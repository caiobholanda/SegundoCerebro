---
tipo: pesquisa
status: ativo
criado: 2026-06-27
atualizado: 2026-06-27
tags: [claude, cli, mcp, hooks, ferramentas]
related: []
pergunta-central: Quais são as novidades do Claude Code CLI em junho de 2026?
relacionado-a: Claude API
---

# Claude Code CLI — Novidades Junho 2026

## Atualizações de Junho 2026

- **`--safe-mode`** (e `CLAUDE_CODE_SAFE_MODE`): inicia o Claude Code sem CLAUDE.md, plugins, skills, hooks e MCP — útil para debug.
- **`/cd`**: move a sessão para um novo diretório sem quebrar o prompt cache.
- **`disableBundledSkills`** (e `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS`): oculta skills, workflows e slash commands nativos do modelo.
- **Fix**: hook matchers com hífens (ex: `code-reviewer`, `mcp__brave-search`) agora fazem match exato, não substring.

## Sistema de Plugins

Um plugin é um bundle versionado que pode conter skills, subagents, slash commands, hooks, output styles e definições de MCP server em uma unidade instalável. É o método canônico para compartilhar extensões do Claude Code entre times e no marketplace público.

## MCP Tool Hooks

- `type: "mcp_tool"`: chama uma ferramenta em um MCP server já conectado.
- O output de texto da tool é tratado como stdout de um command-hook.

## Fontes

- [Claude Code Updates by Anthropic - June 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Hooks reference - Claude Code Docs](https://code.claude.com/docs/en/hooks)
- [Claude Code 2026: Complete Cheat Sheet](https://techbytes.app/posts/claude-code-2026-cheat-sheet-hooks-mcp-commands/)
- [Claude Code Guide 2026: 25 Features with Examples](https://www.marktechpost.com/2026/06/14/claude-code-guide-2026-25-features-with-examples-demo/)
