---
tipo: pesquisa
status: ativo
criado: 2026-06-13
atualizado: 2026-06-13
tags: [claude-code, cli, agentes, automacao]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em junho 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-12 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-13

## Nested Sub-Agents (novidade chave da semana)

- Claude Code agora suporta **sub-agentes aninhados** — confirmado até 5 níveis de profundidade
- Cada sub-agente tem contexto independente; custo ~3–4× sessão sequencial equivalente
- Sub-agentes melhoram: model handling mais inteligente, region handling otimizado

## Agent View

- Painel CLI unificado para gerenciar múltiplas sessões de agentes
- Permite: iniciar agentes, enviar ao background, verificar status + última resposta, retomar quando necessário
- `claude agents --json` agora inclui campo **`waitingFor`** — mostra por qual input o agente está esperando

## Dynamic Workflows

- Suporte a **end-to-end parallel task handling**: codebases inteiros, migrações, engenharia complexa
- Claude escreve scripts de orquestração dinamicamente, roda dezenas a centenas de subagentes em paralelo
- Verificação embutida + progresso salvo entre sessões
- Disponível em CLI, Desktop, VS Code, API e plataformas cloud principais

## Version Guardrails

- Novas configurações managed settings: `requiredMinimumVersion` e `requiredMaximumVersion`
- Claude Code recusa iniciar se versão estiver fora da faixa permitida
- Útil para ambientes corporativos que precisam de versão específica

## Plugin Search Aprimorado

- Nova busca de plugins no marketplace
- Melhorias de workflow: Chrome, VSCode e terminal

## Fixes de Sessão e Bugs

- Correções em: session, model picker, memory, permissions, UI
- Chrome: melhorias de integração
- VSCode: melhorias de workflow

## Links
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Agent SDK 2026 — Totalum](https://www.totalum.app/blog/claude-agent-sdk-totalum-2026)
