---
tipo: pesquisa
status: em-andamento
criado: 2026-06-08
atualizado: 2026-06-08
tags: [dev, claude-code, ia]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em junho de 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-07 - Claude Code — CLI e agentes]]", "[[Pesquisa - 2026-06-08 - Claude API e Anthropic SDK]]"]
---

# Claude Code — CLI e Agentes — 2026-06-08

## Novos Recursos

- **Guardrails de versão** — `requiredMinimumVersion` e `requiredMaximumVersion` em managed settings; garante que agentes rodem apenas em versões compatíveis
- **`/plugin list --enabled/--disabled`** — lista plugins instalados com filtros de estado
- **"c to copy"** — atalho no `/btw` que copia a resposta em markdown bruto para a área de transferência
- **Skills `$` escape** — caractere `$` em skills agora escapado corretamente para evitar expansão inesperada

## Hooks Aprimorados

- **Stop e SubagentStop** retornam `hookSpecificOutput.additionalContext` sem gerar erro — permite fornecer feedback ao Claude ao encerrar sessões
- **OTEL_RESOURCE_ATTRIBUTES** agora incluídos como labels em datapoints de métricas — permite fatiar métricas de uso por dimensões personalizadas (ex: equipe, projeto, ambiente)

## Agent View + Dynamic Workflows

- **Agent View** (Research Preview) — painel CLI unificado para gerenciar múltiplas sessões paralelas; linhas "claude agents" mostram done/total antes do detalhe
- **Dynamic Workflows** (Research Preview) — orquestração paralela de subagentes a partir de script único com verificação contra test suite

## Correções de Bugs

- Composição IME CJK aparecendo no lugar errado → corrigido
- Links `file:///C:/...` quebrados no Windows → corrigido
- Falhas de voice mode com caracteres não-ASCII → corrigido
- Mensagens incorretas sobre disponibilidade de auto mode em provedores terceirizados → corrigido
- Problemas de inicialização, tarefas em background, JetBrains e permissões → corrigidos

## Contexto de Mercado

- **Gemini CLI vs Claude Code** — comparação emergindo em cobertura técnica; DataCamp publicou análise de diferenças e casos de uso
- Claude Code continua como referência para workflows agentic profissionais

## Links

- [Claude Code Updates June 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Releases GitHub](https://github.com/anthropics/claude-code/releases)
- [What's New - Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Gemini CLI vs Claude Code - DataCamp](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)
