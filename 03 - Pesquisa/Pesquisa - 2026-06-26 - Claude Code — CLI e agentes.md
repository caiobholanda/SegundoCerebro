---
tipo: pesquisa
status: ativo
criado: 2026-06-26
atualizado: 2026-06-26
tags: [claude-code, cli, agentes, automacao]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 26 de junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-24 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-26

## Claude Opus 4.7 — Novo Padrão em Max e Team Premium

- Opus 4.7 é o novo modelo padrão nos planos Max e Team Premium
- Novo nível de esforço **xhigh** — recomendado para a maioria dos trabalhos de codificação
- Slider interativo `/effort` para ajuste em tempo real durante sessão

## MCP CLI — Login/Logout Direto

- `claude mcp login <n>` e `claude mcp logout <n>` autenticam servidores MCP via CLI
- Sem necessidade de abrir o menu interativo `/mcp`
- Comandos bash agora disparam resposta automática do Claude ao output

## Managed Agents — Beta Público com Agendamento

- Agentes rodam em cronograma (`cron schedule`) — cada disparo inicia nova sessão
- Uso seguro de ferramentas CLI e serviços autenticados em background
- Cada deployment agendado tem ciclo de vida independente

## Dynamic Workflows — Research Preview

- Escrita dinâmica de scripts de orquestração pelo Claude
- Dezenas a centenas de subagentes paralelos em uma única sessão
- Casos de uso: migrações de codebase, análise paralela, tarefas de engenharia complexas

## Routines — Agentes Cloud Agendados

- Trigger via cron, evento GitHub ou chamada API
- Templated cloud agents — execução remota sem sessão local ativa
- Push notifications mobile quando tarefa longa termina

## Claude como Agent Provider — JetBrains (Preview)

- Preview desde 22/06 — Claude disponível como provider de agente em IDEs JetBrains
- Changelog GitHub publicado em 22/06/2026

## Melhorias de Workflows e Plugins

- Views ricas para workflows e plugins no CLI
- Respostas mais inteligentes a comandos bash
- Melhorias no handling de agentes em background
- Correções: sessões, permissões, rendering e confiabilidade geral

## Sub-agentes e Hierarquia

- Sub-agentes aninhados confirmados até 3 níveis hierárquicos (pai → filho → neto)
- `claude agents --json` inclui campo `waitingFor` — rastreia estado de espera

## Links

- [Claude Code Updates — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Novidades — Claude Code Docs](https://code.claude.com/docs/pt/whats-new)
- [Claude como agent provider JetBrains — GitHub Changelog](https://github.blog/changelog/2026-06-22-new-features-and-claude-as-agent-provider-preview-in-jetbrains-ides/)
- [Releases — anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [CHANGELOG.md — Claude Code](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)
