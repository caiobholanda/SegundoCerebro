---
tipo: pesquisa
criado: 2026-05-28
atualizado: 2026-05-28
pergunta-central: Quais são as novidades do Claude Code CLI em 28/mai/2026?
relacionado-a: [claude-api, dev, automacao]
tags: [pesquisa, dev, claude, automacao]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-05-28

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI em 28/mai/2026?

## 🎯 Síntese
Changelog de 27/mai traz `/code-review --fix` que aplica automaticamente as correções ao working tree. Skills e slash commands agora controlam ferramentas disponíveis via frontmatter. Novo hook `MessageDisplay` para transformar/ocultar texto do assistente. MCP com auto-retry de até 3 vezes. Vim mode aprimorado.

## 🔬 Detalhes

### `/code-review --fix` — Aplicação automática (27/mai)
- `/code-review --fix` aplica as descobertas da revisão diretamente no working tree
- `/simplify` agora é alias de `/code-review --fix`
- Superficia sugestões de reuso, simplificação e eficiência
- Nível de esforço configurável: `/code-review high`

### Skills com controle de ferramentas
- Skills e slash commands agora podem definir `disallowed-tools` no frontmatter
- Remove ferramentas específicas do modelo enquanto a skill está ativa
- Novo comando `/reload-skills` re-escaneia diretórios sem reiniciar a sessão
- SessionStart hooks podem retornar `reloadSkills: true` para tornar skills do hook disponíveis na mesma sessão

### Hook `MessageDisplay` (novo)
- Hooks podem transformar ou ocultar texto do assistente durante exibição
- Título da sessão configurável via `hookSpecificOutput.sessionTitle`
- `pluginSuggestionMarketplaces` como setting gerenciado — admins podem allowlist marketplaces de org

### Fallback de modelo
- Claude Code agora troca para `--fallback-model` configurado quando o modelo primário não é encontrado
- Mantém sessão ativa sem interromper o fluxo

### Melhorias de terminal
- `/terminal-setup` habilita "Applications in terminal may access clipboard" do iTerm2
- Vim mode: `/` no modo NORMAL abre busca reversa no histórico
- `/usage` agora inclui arquivos grandes de sessão com streaming reads (memória plana)

### MCP auto-retry
- MCP servers que encontram erros transientes fazem auto-retry de até 3 vezes
- Antes ficavam desconectados permanentemente até reinicialização manual

### Agent View (Research Preview)
- Dashboard CLI para gerenciar múltiplas sessões paralelas
- JSON listing via `claude agents --json` para scripting (tmux, status bars)
- Sessões background marcadas com `bg` no listing

### `claude ultrareview`
- Code review em nuvem para CI e scripts
- Complementa `/code-review` local com análise mais profunda

## 🔗 Conexões
- [[Pesquisa - 2026-05-28 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-28 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-27 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Changelog — code.claude.com](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code in 2026 — iodocs](https://www.iodocs.com/claude-code-in-2026-major-updates-new-features-and-expanded-access/)
- [ClaudeLog — Changelog completo](https://claudelog.com/claude-code-changelog/)

## 🚧 Lacunas
- `disallowed-tools` no frontmatter de skills — lista completa de tool names aceitos
- Limite de mensagens transformáveis via `MessageDisplay` hook
- Data de GA do Agent View (ainda Research Preview)
