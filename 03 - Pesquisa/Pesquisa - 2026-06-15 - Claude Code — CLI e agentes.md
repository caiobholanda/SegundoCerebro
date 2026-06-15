---
tipo: pesquisa
status: ativo
criado: 2026-06-15
atualizado: 2026-06-15
tags: [claude-code, cli, agentes, automacao]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-14 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-15

## Sub-agentes Aninhados (Confirmado)

- Sub-agentes podem spawnar seus próprios sub-agentes até **5 níveis de profundidade**
- `claude agents --json` agora inclui campo `waitingFor` — mostra o que cada sessão aguardando está bloqueada (ex: permission prompt)
- Dynamic Workflows: scripts de orquestração gerados dinamicamente rodam dezenas a centenas de sub-agentes paralelos por sessão

## Comandos e Flags Novos

- **`--safe-mode`**: inicia sessão com todas as customizações desativadas — útil para troubleshooting de hooks, plugins e CLAUDE.md
- **`/cd`**: move a sessão para um novo diretório de trabalho sem quebrar o cache de contexto
- **`/plugin list --enabled/--disabled`**: lista plugins instalados filtrando por estado
- **`disableBundledSkills`**: setting que oculta skills bundled e slash commands built-in do sistema

## Hooks — Novas Capacidades

- Stop e SubagentStop podem retornar `hookSpecificOutput.additionalContext` → Claude recebe feedback do hook e continua o turno sem que isso seja classificado como erro de hook
- Agent View (Research Preview): painel CLI unificado para gerenciar múltiplas sessões em paralelo — iniciar, enviar ao background, ver status e voltar a sessões quando necessário

## VS Code 1.121

- Remote Agents adicionados ao VS Code 1.121
- Funcionalidade do Claude Code expandida na extensão oficial
- Preview nativo de HTML e Mermaid embutidos

## Impacto do Billing Split no Claude Code

- Claude Code no **terminal interativo** permanece no pool de subscription (sem mudança)
- Claude Code via **GitHub Actions** agora consome créditos do pool separado (a partir de hoje)
- Sessões automatizadas/headless: monitorar consumo para não esgotar crédito antes do fim do mês

## Links

- [Claude Code Changelog — ClaudeLog](https://claudelog.com/claude-code-changelog/)
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [VS Code 1.121 Remote Agents — Visual Studio Magazine](https://visualstudiomagazine.com/articles/2026/05/20/vs-code-1-121-adds-remote-agents-built-in-html-and-mermaid-previews.aspx)
- [Claude Agent SDK 2026 — Totalum Blog](https://www.totalum.app/blog/claude-agent-sdk-totalum-2026)
