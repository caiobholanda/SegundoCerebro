---
tipo: pesquisa
criado: 2026-07-15
atualizado: 2026-07-15
pergunta-central: Quais são as principais novidades do Claude Code em julho de 2026?
relacionado-a: [Claude API e Anthropic SDK]
related: []
tags: [pesquisa, claude-code, ia]
---

# Claude Code — CLI e agentes (2026-07-15)

## ❓ Pergunta central
Quais são as principais novidades do Claude Code CLI e sistema de agentes em julho de 2026?

## 🎯 Síntese
Julho de 2026 trouxe melhorias de acessibilidade (screen reader mode), browser nativo sandboxed no desktop, /doctor com autocura, e migração para Opus 4.8 + família Claude 5. Foco em estabilidade de agentes background e redução drástica de uso de memória no auto-updater.

## 🔬 Detalhes

### Novos recursos
- **Screen reader mode** — opt-in para renderização plain-text:
  - CLI: `claude --ax-screen-reader`
  - Env var: `CLAUDE_AX_SCREEN_READER=1`
  - Settings: `"axScreenReader": true`
- **Browser nativo sandboxed** (desktop) — acessa qualquer site além de previews locais; Claude lê, clica e interage como nos dev servers
- **vimInsertModeRemaps** — ex.: `jj → Esc` configurável
- **CLAUDE_CODE_PROCESS_WRAPPER** — suporte a launchers corporativos

### /doctor upgrade
- Antes: relatório read-only de diagnóstico
- Agora: **diagnostica E corrige** problemas automaticamente
  - Encontra skills/MCP não usados
  - Deduplica arquivos `CLAUDE.md` locais
  - Sinaliza hooks lentos
  - Alias: `/checkup`

### Modelos
- Migrado para **Opus 4.8** e família **Claude 5** como padrões

### Performance
- Auto-update agora faz **streaming para disco** em vez de buffer em memória → redução de ~400MB no pico de uso
- Melhorias em agentes background e sessões remotas

### Agentes
- Fixes: crashes em background agents, Remote Control fora de agentes background
- Managed Agents em beta público com cron + cofre de env vars

## 🔗 Conexões
- [[2026-07-15 - Claude API e Anthropic SDK]]
- [[2026-07-14 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog July 2026 — gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code News July 2026 — STARTUP EDITION](https://blog.mean.ceo/claude-code-news-july-2026/)

## 🚧 Lacunas
- Quais hooks agora têm cobertura no /doctor após o upgrade?
- O browser nativo tem acesso a cookies/sessões ou é totalmente isolado?
