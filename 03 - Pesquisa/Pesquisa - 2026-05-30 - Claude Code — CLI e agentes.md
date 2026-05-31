---
tipo: pesquisa
status: em-andamento
criado: 2026-05-30
atualizado: 2026-05-30
tags: [pesquisa, claude-code, cli, agentes, ia]
related: ["[[Pesquisa - 2026-05-29 - Claude Code — CLI e agentes]]"]
pergunta-central: Quais as novidades do Claude Code CLI e agentes em maio de 2026?
relacionado-a: [claude-code, cli]
---

# Claude Code — CLI e Agentes — 2026-05-30

## v2.1.154 (28/05/2026) — Principais Mudanças

- **Opus 4.8 como padrão** com esforço alto por padrão
- **Nível `/effort xhigh`**: nova opção de raciocínio profundo
- **`/workflows`**: orquestra dezenas a centenas de agentes em background via Dynamic Workflows

## Agent View — Dashboard Unificado (Research Preview)

Lançado em 11/05/2026. Painel de CLI que gerencia todas as sessões em paralelo numa única tela:
- Lista unificada de sessões paralelas em andamento
- Visão do estado completo do trabalho atual
- Sem sair do terminal

## Dynamic Workflows no Claude Code

Integração com Opus 4.8:
- **Planejar** → **fan-out de subagentes** → **verificar** vs test suite
- Acesso via `/workflows` direto no CLI
- Disponível: Max, Team e Enterprise

## Melhorias Gerais (maio/2026)

- Controles de modelo e agente mais inteligentes
- Melhor comportamento de sessões em background
- Status de atualização e `doctor` mais claros
- Refinamentos em plugins e CLI
- Tratamento melhorado no macOS e Windows (PowerShell nativo)
- Correções de bugs: MCP, atualização, clipboard e terminal

## Integrações

- **Android**: novo comando `android studio` para integração com Android Studio
- **Plugin marketplace**: estimativas de custo de contexto projetado por plugin (`/plugin cost`)
- **Cumprimento de dependências de plugin**: força verificação antes da execução

## Gemini CLI vs Claude Code (2026)

Datacamp publicou comparativo: Claude Code lidera em orquestração de agentes complexos; Gemini CLI tem vantagem de custo em tarefas simples com modelos flash.

## Links
- [Claude Code Updates — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Agent View Research Preview](https://pasqualepillitteri.it/en/news/2384/claude-code-agent-view-cli-dashboard-sessions-2026)
- [Novidades — Claude Code Docs](https://code.claude.com/docs/pt/whats-new)
- [Claude Code Changelog](https://claudefa.st/blog/guide/changelog)
- [Gemini CLI vs Claude Code — DataCamp](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)
