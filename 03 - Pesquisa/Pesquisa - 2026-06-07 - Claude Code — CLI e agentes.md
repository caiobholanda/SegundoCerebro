---
tipo: pesquisa
status: em-andamento
criado: 2026-06-07
atualizado: 2026-06-07
tags: [ia, dev, claude-code]
pergunta-central: Quais são as novidades do Claude Code CLI em junho de 2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-06 - Claude Code — CLI e agentes]]", "[[Pesquisa - 2026-06-07 - Claude API e Anthropic SDK]]"]
---

# Claude Code — CLI e Agentes — 2026-06-07

## Novos Comandos e Plugins

- `/plugin list` — lista plugins instalados com filtros `--enabled` / `--disabled`
- Autocomplete para argumentos de `/plugin`: subcomandos, nomes de plugins instalados e plugins de marketplaces conhecidos
- Plugins agora podem declarar `defaultEnabled: false`
- `requiredMinimumVersion` e `requiredMaximumVersion` em managed settings — Claude Code recusa inicialização se versão estiver fora do range permitido

## Hooks Aprimorados

- **Stop** e **SubagentStop** hooks agora retornam `hookSpecificOutput.additionalContext` — permite dar feedback ao Claude e continuar o turno sem ser marcado como erro de hook
- Skills: sintaxe de escape `\$` para incluir `$` literal antes de um dígito em command bodies

## Atalhos e UX

- Atalho `c to copy` no `/btw` — copia a resposta em markdown bruto para o clipboard preservando formatação ao colar

## Agentes e Workflows

- **Agent View**: gerencia múltiplas sessões a partir de uma CLI — iniciar agentes, enviar para background, checar status e última resposta, voltar apenas quando necessário
- **Dynamic Workflows** (research preview): Claude escreve scripts de orquestração dinâmicos que rodam dezenas a centenas de subagentes paralelos em uma sessão, com verificação antes de entregar ao usuário

## Confiabilidade

- Correções de startup, background tasks, Windows e permissões
- Menus mais claros e workflows de agente mais suaves
- Melhores métricas com labels mais ricos
- Correções de MCP e parallel tool handling

## Links
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Releases GitHub](https://github.com/anthropics/claude-code/releases)
- [Claude Code Updates June 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Features Guide 2026](https://toolsbase.dev/en/reference/claude-code-features)
