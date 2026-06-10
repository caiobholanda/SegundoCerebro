---
tipo: pesquisa
status: em-andamento
criado: 2026-06-10
atualizado: 2026-06-10
tags: [dev, claude-code, ia]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 2026-06-10?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-09 - Claude Code — CLI e agentes]]", "[[Pesquisa - 2026-06-10 - Claude API e Anthropic SDK]]"]
---

# Claude Code — CLI e Agentes — 2026-06-10

## Dynamic Workflows (Research Preview)

- Orquestração end-to-end para codebases, migrações e trabalho de engenharia complexo
- Claude escreve dinamicamente scripts de orquestração que rodam dezenas a centenas de subagentes em paralelo numa única sessão
- Verificação embutida antes de qualquer resultado chegar ao usuário
- Progresso salvo entre sessões
- Disponível em: CLI, Desktop, VS Code, API e principais plataformas cloud

## Agent SDK — Billing Split (15/06/2026)

- A partir de 15/06, Agent SDK e `claude -p` em planos de assinatura consomem de um crédito mensal **separado** do uso interativo
- Créditos: Pro $20/mês, Max 5x $100/mês, Max 20x $200/mês

## Correções de Subagentes

- Sessões completadas de `claude agents` não se aposentavam quando um subagente idle estava "parked" ou havia vazado um shell em background → **corrigido**
- Pressionar Esc em `claude agents` não cancelava uma abertura lenta → **corrigido**
- Subagentes não herdavam MCP servers injetados dinamicamente → **corrigido**
- Subagentes em worktree isolado negavam Read/Edit em arquivos dentro do próprio worktree → **corrigido**

## Hooks — Novas Capacidades

- `Stop` e `SubagentStop` hooks podem agora retornar `hookSpecificOutput.additionalContext` para dar feedback ao Claude sem ser rotulado como erro de hook
- Permite manter o turno ativo com contexto adicional

## Claude Fable 5 no Claude Code

- Fable 5 disponível como opção de modelo no Claude Code
- Preço: $10/$50 MTok — uso nos planos pagos grátis até 22/06, depois consome créditos

## Estado das Features

| Feature | Status |
|---|---|
| Dynamic Workflows | Research Preview |
| Agent View | Research Preview |
| Agent SDK billing split | Ativo (15/06) |
| Plugins / Skills | GA |
| MCP auto-retry 3× | GA |
| fallbackModel | GA |
| requiredMinimumVersion/Max | GA |

## Fontes
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Agent SDK Overview — Claude Code Docs](https://code.claude.com/docs/en/agent-sdk/overview)
- [Claude Code Agents 2026 — CloudZero](https://www.cloudzero.com/blog/claude-code-agents/)
- [Claude Code Changelog 2026 — claudefa.st](https://claudefa.st/blog/guide/changelog)
- [Anthropic Release Notes — Releasebot](https://releasebot.io/updates/anthropic)
