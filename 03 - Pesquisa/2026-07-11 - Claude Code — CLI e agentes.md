```yaml
---
tipo: pesquisa
criado: 2026-07-11
atualizado: 2026-07-11
pergunta-central: Quais são as principais atualizações do Claude Code CLI em julho de 2026?
relacionado-a: []
related: []
tags: [pesquisa, ia, dev, claude, cli]
---

# Pesquisa - Claude Code — CLI e agentes

## ❓ Pergunta central
Quais são as principais atualizações do Claude Code CLI em julho de 2026?

## 🎯 Síntese (3-5 linhas)
Julho traz Claude Sonnet 5 como modelo padrão no Claude Code (1M ctx, promo $2/$10). As correções se concentram em confiabilidade: regras condicionais via symlinks, plan mode com read-only automático, hooks SessionStart em sessões headless, e melhora no UX de retry de API. Syntax highlighting ganhou upgrade para highlight.js 11 com melhor precisão em code blocks, diffs e file previews.

## 🔬 Detalhes
- **Sonnet 5 como padrão**: 1M context window, preço promo até 31/ago
- **Login-expiry warnings**: aviso antecipado quando sessão expira
- **Badges de status**: agent status e manual mode mais visíveis no UI
- **Fix .claude/rules/ via symlinks**: regras condicionais não carregavam quando arquivo de destino era symlink — corrigido
- **Plan mode + read-only**: plan mode agora permite automaticamente chamadas read-only ao iniciar sessão em plan mode
- **highlight.js 11**: melhor precisão em syntax highlighting para code blocks, diffs e previews
- **API retry UX**: motivo do erro exibido após 2ª tentativa; link para status page substituindo spinner quando API está sobrecarregada
- **Hook SessionStart headless**: fix para hook events não streamando em sessões headless (causava idle-reap prematuro em workers remotos)
- **Background sessions**: melhorias gerais de confiabilidade para sessões em background e operações remotas

## 🔗 Conexões
- [[2026-07-11 - Claude API e Anthropic SDK]]
- [[2026-07-11 - Inteligência Artificial — avanços]]

## 📚 Fontes
- [Claude Code Updates July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [What's new - Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Changelog July 2026](https://www.gradually.ai/en/changelogs/claude-code/)

## 🚧 Lacunas
- Dynamic Workflows chegou a GA em julho ou ainda é research preview?
- Managed Agents cron — disponível para todos os tiers ou só Enterprise?
- Worktree isolation — alguma novidade específica em julho?
```
