---
tipo: pesquisa
status: em-andamento
criado: 2026-06-09
atualizado: 2026-06-09
tags: [ia, dev, claude-code]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 2026-06-09?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-08 - Claude Code — CLI e agentes]]", "[[Pesquisa - 2026-06-09 - Claude API e Anthropic SDK]]"]
---

# Claude Code — CLI e Agentes — 2026-06-09

## Dynamic Workflows (Research Preview)

- Orquestração end-to-end paralela para tarefas complexas (codebases, migrações, engenharia)
- Claude escreve scripts de orquestração dinamicamente → dezenas a centenas de subagentes em paralelo por sessão
- Verificação embutida antes de qualquer resultado chegar ao usuário
- Progresso salvo entre sessões
- Disponível: CLI, Desktop, VS Code, API, principais plataformas cloud

## Novos Comandos e Atalhos

- `/plugin list` — lista plugins instalados com filtros `--enabled` / `--disabled`
- `/btw` → atalho `c` para copiar resposta em markdown puro para clipboard (mantém formatação ao colar)

## Hooks Atualizados

- `Stop` e `SubagentStop` agora podem retornar `hookSpecificOutput.additionalContext`
- Permite dar feedback ao Claude e manter o turno ativo sem ser tratado como erro de hook

## Managed Settings

- `requiredMinimumVersion` e `requiredMaximumVersion` — Claude Code recusa iniciar se a versão estiver fora do range; redireciona para versão aprovada
- `fallbackModel` — até 3 modelos de fallback testados em ordem quando o primário está sobrecarregado
- `--fallback-model` também funciona em sessões interativas

## Security-Guidance Plugin

- Plugin de segurança proativo revisa mudanças de código do Claude em tempo real
- Detecta vulnerabilidades e aplica correções na mesma sessão
- Disponível via plugin marketplace

## Bug Fixes

- Corrigido: `claude -p` travava indefinidamente após resultado final quando background shell nunca encerrava → shells em background agora terminados ~5s após resultado com stdin fechado
- Corrigido: flickering no terminal JetBrains 2026.1+
- Corrigido: drops de Shift+non-ASCII em terminais com protocolo Kitty keyboard

## Links

- [Claude Code Updates June 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Releases GitHub](https://github.com/anthropics/claude-code/releases)
- [What's New — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Changelog](https://claudefa.st/blog/guide/changelog)
