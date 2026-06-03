---
tipo: pesquisa
status: em-andamento
criado: 2026-06-03
atualizado: 2026-06-03
tags: [pesquisa, claude-code, cli, agentes, automatico]
related: ["[[Pesquisa - 2026-06-02 - Claude Code — CLI e agentes]]"]
pergunta-central: "Quais são as principais novidades no Claude Code CLI e sistema de agentes em 03/06/2026?"
relacionado-a: [claude-code, cli, agentes]
---

# Claude Code — CLI e Agentes — 2026-06-03

## Destaque principal

**Sistema de plugins autônomo**: plugins em `.claude/skills` agora carregam automaticamente sem precisar do marketplace. `claude plugin init <n>` cria scaffold, autocomplete para `/plugin` disponível. **Dynamic Workflows** renomeou trigger de `workflow` para `ultracode`.

## Novidades (semana de 02–03/06)

- **Plugin auto-loading**: diretório `.claude/skills` carrega plugins automaticamente — sem marketplace obrigatório
- **claude plugin init**: scaffold de novo plugin direto no CLI
- **Autocomplete `/plugin`**: subcomandos, nomes instalados e plugins de marketplaces conhecidos
- **Agent field em settings.json**: campo `agent` agora respeitado em sessões despachadas; `--agent <n>` como override
- **EnterWorktree mid-session**: troca entre worktrees gerenciados pelo Claude durante sessão ativa
- **Worktrees desbloqueados**: worktrees gerenciados pelo Claude ficam unlocked quando agente termina — `git worktree remove/prune` funciona sem conflito
- **ultracode keyword**: trigger de Dynamic Workflows renomeado de `workflow` → `ultracode`
- **Auto mode**: disponível em Bedrock, Vertex e Foundry para Opus 4.7 e 4.8
- **Fast Mode Opus 4.8**: 2× o custo padrão para 2,5× de velocidade de output

## O que mudou desde 2026-06-02

- Plugin system passou de marketplace-dependente → auto-loading local
- `workflow` → `ultracode` como keyword de Dynamic Workflows
- Worktrees agora limpos automaticamente após sessão de agente

## Links relacionados

- [[Pesquisa - 2026-06-02 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-01 - Claude Code — CLI e agentes]]

## Fontes

- [Changelog — Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Releases — anthropics/claude-code — GitHub](https://github.com/anthropics/claude-code/releases)
- [Claude Code Changelog 2026 — Claudefa.st](https://claudefa.st/blog/guide/changelog)
- [Claude Code Latest Updates — StartupHub.ai](https://www.startuphub.ai/ai-news/technology/2026/claude-code-s-latest-updates)
- [Anthropic Release Notes June 2026 — Releasebot](https://releasebot.io/updates/anthropic)
