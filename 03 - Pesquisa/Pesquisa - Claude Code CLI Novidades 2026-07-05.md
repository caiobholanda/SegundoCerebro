---
tipo: pesquisa
criado: 2026-07-05
atualizado: 2026-07-05
pergunta-central: Quais são as novidades do Claude Code CLI em julho 2026?
relacionado-a: [Claude API]
related: []
tags: [pesquisa, claude-code, ia]
---

# Pesquisa - Claude Code CLI Novidades 2026-07-05

## ❓ Pergunta central
O que foi lançado ou atualizado no Claude Code CLI em julho de 2026?

## 🎯 Síntese
Claude Sonnet 5 passou a ser o modelo padrão no Claude Code. O modo de permissão padrão mudou para "Manual" em todos os ambientes (CLI, VS Code, JetBrains). Foram adicionados nomes de sessão legíveis, anexos clicáveis de arquivos e gerenciamento automático de memória para shells em background. Múltiplos bugs corrigidos em MCP, PowerShell e IDEs.

## 🔬 Detalhes
- **Modelo padrão**: Claude Sonnet 5 (1M context window)
- **Permission Mode**: "default" → "Manual" em CLI, VS Code, JetBrains; `--permission-mode manual` e `"defaultMode": "manual"` aceitos
- **AskUserQuestion**: dialogs não auto-continuam mais; timeout idle opcional via `/config`
- **Memory pressure reaping**: reaping automático de shells ociosos em background (desativar com `CLAUDE_CODE_DISABLE_BG_SHELL_PRESSURE_REAP=1`)
- **UX melhorias**: nomes de sessão legíveis, anexos clicáveis, view de agentes mais fluida
- **Confiabilidade**: melhorias em sessões background, stream watchdog, recuperação remota
- **Bug fixes**: crash no startup com MCP inválido, sessões background interrompidas, flickering JetBrains, validação PowerShell

## 🔗 Conexões
- [[Pesquisa - Claude API Novidades 2026-07-05]]

## 📚 Fontes
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [GitHub Releases claude-code](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas
- Detalhes sobre o novo "agents view"
- Mudanças em hooks e MCP na versão atual
