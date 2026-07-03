---
tipo: pesquisa
status: em-andamento
criado: 2026-07-03
atualizado: 2026-07-03
tags: [dev, claude-code, automacao, agentes]
related: []
pergunta-central: Quais as novidades do Claude Code CLI e agentes em julho de 2026?
relacionado-a: Desenvolvimento de Software
---

# Claude Code — CLI e Agentes (2026-07-03)

## Claude Sonnet 5 como Modelo Padrão

Claude Code agora usa **Claude Sonnet 5** como modelo padrão, com janela de contexto nativa de 1M tokens e pricing promocional válido até 31 de agosto. Requer atualização para a versão 2.1.197.

## Dynamic Workflows (Research Preview)

Novo recurso em research preview: **Dynamic Workflows** trazem tratamento de tarefas paralelas ponta a ponta para migrações de codebase, trabalho de engenharia complexo e mais. Inclui verificação integrada e progresso salvo entre CLI, Desktop, VS Code, API e as principais plataformas cloud.

## Melhorias nos Agentes Background

- Sessões concluídas não alternam mais entre "Done" e "Needs your input".
- Agentes travados agora são rotulados como "Needs attention".
- Resultados que mencionam um PR exibem link clicável.
- Notificações do hook `agent_needs_input` / `agent_completed` para agentes que precisam de input ou terminam.

## Commit + Push + Draft PR Automático

Agentes em background agora **fazem commit, push e abrem draft PR automaticamente** ao finalizar trabalho de código em um worktree, sem precisar pausar para perguntar.

## Nova Skill /dataviz

Adicionada skill `/dataviz` para orientação em design de charts e dashboards, incluindo validador de paleta de cores executável.

## Managed Agents com Agendamento (Public Beta)

Suporte a **Managed Agents** que rodam em schedules via cron, usando CLI tools e serviços autenticados com segurança. Inclui automação baseada em cron, variáveis de ambiente em vault e integrações com browser.

---

## Fontes

- [Releasebot — Claude Code Updates July 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Anthropic — Enabling Claude Code to work more autonomously](https://www.anthropic.com/news/enabling-claude-code-to-work-more-autonomously)
- [Claude Code Changelog — claudefa.st](https://claudefa.st/blog/guide/changelog)
- [GitHub — anthropics/claude-code](https://github.com/anthropics/claude-code)
