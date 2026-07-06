---
tipo: pesquisa
status: em-andamento
criado: 2026-07-06
atualizado: 2026-07-06
pergunta-central: Quais são as novidades do Claude Code CLI em julho 2026?
relacionado-a: [Claude API e Anthropic SDK]
related: ["[[2026-07-06 - Claude API e Anthropic SDK]]"]
tags: [pesquisa, claude, dev, ia]
---

# Pesquisa - Claude Code — CLI e agentes (2026-07-06)

## Síntese

Julho 2026 traz correções relevantes em hooks e melhorias de confiabilidade no MCP. A referência oficial de hooks agora documenta **30 eventos** (era 27-28). Nova opção `alwaysLoad` para servidores MCP. Modelos padrão de organização agora configuráveis via console de admin.

## Novidades (Jul 2026)

### Hooks
- **Bug fix**: hooks com matchers separados por vírgula (ex: `"Bash,PowerShell"`) não estavam disparando — corrigido
- Referência oficial documenta **30 hook events** (desde 01/jul/2026)
- 5 hooks principais: `PreToolUse`, `PostToolUse`, `UserPromptSubmit`, `SessionStart`, `Stop`
- Tools de MCP aparecem normalmente em `PreToolUse`/`PostToolUse` — mesmo comportamento que tools nativas

### MCP (Model Context Protocol)
- Nova opção `alwaysLoad` no config do servidor MCP: quando `true`, todos os tools daquele servidor pulam o `tool-search deferral` e ficam sempre disponíveis
- MCP server errors com retry automático para erros de rede transitórios (com backoff curto)

### Modelos de Organização
- Admins podem configurar **modelo padrão da org** no console
- Aparece como "Org default" (ou "Role default") em `/model` quando o usuário não escolheu um

### Filosofia Hooks + MCP
- MCP resolve o problema de alcançar fora do sandbox
- Hooks resolvem o problema de governar o agente quando age de forma não supervisionada
- Combinados: agente com ação ampla mas comportamento controlado

## Lacunas

- Novidades da `/goal` e Routines em julho não confirmadas
- Status do Agent View (estava em Research Preview em mai/2026)

## Conexões

- [[2026-07-06 - Claude API e Anthropic SDK]]
- [[_Skills/nota-diaria]]

## Fontes

- [Claude Code Updates July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Hooks reference - Claude Code Docs](https://code.claude.com/docs/en/hooks)
- [Claude Code Hooks 2026 - MorphLLM](https://www.morphllm.com/claude-code-hooks)
- [Hooks and MCP for Claude Code - GoPenAI](https://blog.gopenai.com/hooks-and-mcp-for-claude-code-7c535374cdf7)
