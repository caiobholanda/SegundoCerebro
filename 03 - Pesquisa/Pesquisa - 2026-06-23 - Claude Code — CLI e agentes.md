---
tipo: pesquisa
status: ativo
criado: 2026-06-23
atualizado: 2026-06-23
tags: [claude, dev, automacao, agentes]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 23 de junho de 2026?
relacionado-a: Claude API e Anthropic SDK, Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-20 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e agentes — 2026-06-23

## Ultraplan (Visualização Antecipada)

- Elabore um plano no CLI local → revise e comente num editor web → execute remotamente ou puxe de volta para local
- Separa planejamento (cloud) da execução (local ou remoto)
- Ideal para tarefas complexas que exigem revisão antes de execução autônoma

## /ultrareview — Frota de Caça a Bugs

- Visualização pública de pesquisa
- Frota de agentes especialistas em caça a bugs roda **na nuvem**
- Resultados chegam automaticamente ao CLI ou Desktop
- Complementar ao `/code-review` local

## Routines — Automação Agendada

- Agentes cloud disparados por:
  - Cronograma (cron)
  - Eventos do GitHub
  - Chamada de API
- Notificações push móveis quando tarefa longa termina ou Claude precisa de input
- `/usage` para monitorar o que está consumindo os limites de uso

## CLI → Binários Nativos

- CLI migrado para binários nativos (semana 24, 8-12/jun)
- Melhoria de performance e inicialização

## Managed Agents (Beta Público)

- Execução em cronogramas com acesso seguro a ferramentas CLI e serviços autenticados
- Variáveis de ambiente armazenadas em **cofre** (vault)
- Integrações com recursos de navegador para trabalho recorrente

## Dynamic Workflows (Research Preview)

- Tarefas paralelas ponta a ponta: bases de código, migrações, engenharia complexa
- Verificação integrada e **progresso salvo**
- Disponível em: CLI, Desktop, VS Code, API e principais plataformas cloud

## Comparativo Claude Code vs Gemini CLI

- Gemini CLI: open-source, gratuito, 1M ctx, integra Google Search nativamente
- Claude Code: agentic, melhor para tarefas longas multi-arquivo, maior ecossistema de hooks/skills
- DataCamp (2026): Claude Code recomendado para projetos enterprise e workflows complexos

## Links

- [Novidades — Claude Code Docs](https://code.claude.com/docs/pt/whats-new)
- [Claude Code Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Gemini CLI vs. Claude Code: Differences and Use Cases (2026)](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)
- [Claude Code's Latest Updates — StartupHub.ai](https://www.startuphub.ai/ai-news/technology/2026/claude-code-s-latest-updates)
