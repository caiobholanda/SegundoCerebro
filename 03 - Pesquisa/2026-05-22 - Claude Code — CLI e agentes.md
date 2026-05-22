---
tipo: pesquisa
criado: 2026-05-22
atualizado: 2026-05-22
pergunta-central: Quais são as atualizações mais recentes do Claude Code e como elas afetam o fluxo de desenvolvimento com agentes?
relacionado-a: [Claude API, Inteligência Artificial, Programação e Dev]
tags: [pesquisa, claude, dev, agentes, cli]
---

# Pesquisa - Claude Code — CLI e agentes

## ❓ Pergunta central
Quais são as atualizações mais recentes do Claude Code e como elas afetam o fluxo de desenvolvimento com agentes?

## 🎯 Síntese (3-5 linhas)
Maio de 2026 trouxe mudanças relevantes no Claude Code: `/simplify` foi renomeado para `/code-review` com níveis de esforço configuráveis, e o fast mode agora usa Opus 4.7 por padrão. As novas flags para `claude agents` expandem controle programático de sessões background. Correções críticas eliminam falhas no Windows PowerShell e flickering no Windows Terminal durante streaming.

## 🔬 Detalhes
- **`/code-review` (era `/simplify`):** aceita nível de esforço opcional, ex.: `/code-review high`
- **Modo automático:** não suprime mais `AskUserQuestion` quando skill depende explicitamente dele
- **Fix Windows PowerShell:** corrigido "command line is invalid" ao usar pwsh via winget ou Microsoft Store
- **Fix paginação MCP:** `resources/list`, `resources/templates/list` e `prompts/list` não perdem itens após primeira página
- **Fix Windows Terminal:** removido flickering em sessões background attachadas durante streaming
- **Novas flags `claude agents`:** `--add-dir`, `--settings`, `--mcp-config`, `--plugin-dir`, `--permission-mode`, `--model`, `--effort`, `--dangerously-skip-permissions`
- **Fast mode → Opus 4.7:** upgrade automático do padrão (antes Opus 4.6)
- **Plugins com SKILL.md:** plugins com `SKILL.md` na raiz (sem subdiretório `skills/`) agora aparecem como skill

## 🔗 Conexões
- [[2026-05-22 - Claude API e Anthropic SDK]]
- [[2026-05-22 - Programação e Desenvolvimento]]
- [[Pesquisa - 2026-05-13 - Claude Code]]

## 📚 Fontes
- [Changelog — Claude Code Docs](https://code.claude.ai/docs/en/changelog)
- [Claude Code Updates 2026 — GetAIPerks](https://www.getaiperks.com/en/articles/claude-code-updates)
- [Releases — anthropics/claude-code GitHub](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas
- Como as novas flags de `claude agents` interagem com hooks customizados?
- Qual o impacto do upgrade para Opus 4.7 no fast mode em termos de custo?
- Skills em plugins sem subdiretório têm limitações vs. skills em `.claude/commands/`?
