---
tipo: pesquisa
status: em-andamento
criado: 2026-07-04
atualizado: 2026-07-04
tags: [claude, dev, ia, produtividade]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em julho de 2026?
relacionado-a: "[[Pesquisa - 2026-07-02 - Claude Code]]"
related: []
---

# Claude Code — CLI e Agentes — 2026-07-04

## Mudança de modo padrão

- **Default permission mode agora é "Manual"** — mudança crítica no CLI, VS Code e JetBrains
- `AskUserQuestion` não auto-continua mais; requer resposta explícita do usuário
- Reduz risco de ações não intencionais em workflows agênticos

## Sonnet 5 como modelo padrão

- Claude Code adota Sonnet 5 (lançado 30/jun) como padrão global
- 1M token context window nativo; $2/$10 MTok até 31/ago
- Performance agentic substancialmente melhor que Sonnet 4.6

## Agentes — melhorias de confiabilidade

- Painel `/agents`: status "completed" não alterna mais para "Needs your input"
- Agentes travados recebem rótulo "Needs attention" (em vez de ficarem em loop silencioso)
- Resultados que mencionam PR exibem link clicável direto
- Background sessions sobrevivem a restart/update do processo do Claude
- Melhor recuperação em erros SSL, streaming cortado e subagentes interrompidos por rate limit

## Wizard de agentes removido

- `/agents` wizard foi removido
- Para criar/gerenciar subagentes: pedir ao Claude diretamente ou editar `.claude/agents/` manualmente
- Alinhamento com paradigma "code over UI"

## Managed Agents — beta público

- Cron schedules para execução autônoma recorrente
- Vault de env vars: credenciais armazenadas com segurança fora do código
- Browser capabilities integradas para agentes com acesso web
- MCP privado corporativo suportado

## Org default models

- Admins de organização podem definir qual modelo cada plano usa
- Nomes de sessão passam a ser legíveis (humanizados, não IDs)
- Anexos de arquivo clicáveis no painel de sessões

## Stream watchdog

- Stream watchdog (5min) como padrão universal para todos os providers
- Evita sessões penduradas indefinidamente em providers lentos

## Links

- [Claude Code Updates July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog 2026](https://claudefa.st/blog/guide/changelog)
- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Managed Agents overview](https://platform.claude.com/docs/en/managed-agents/overview)
- [Enabling Claude Code to work more autonomously — Anthropic](https://www.anthropic.com/news/enabling-claude-code-to-work-more-autonomously)
