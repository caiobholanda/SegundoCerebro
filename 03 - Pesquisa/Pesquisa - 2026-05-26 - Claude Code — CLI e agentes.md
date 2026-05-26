---
tipo: pesquisa
criado: 2026-05-26
atualizado: 2026-05-26
pergunta-central: Quais são as novidades do Claude Code CLI, hooks e agentes em maio de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, ia, dev, claude, claude-code]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-05-26

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI, hooks e agentes em maio de 2026?

## 🎯 Síntese
Claude Code consolidou a arquitetura de agentes em background: novos flags `claude agents`, MCP reconnect paralelo, e `updatedToolOutput` para todos os tools via PostToolUse. Fast mode migrado para Opus 4.7 por padrão. Plugin details agora exibe custo projetado por sessão — útil para controle de custo em projetos agênticos.

## 🔬 Detalhes

### Hooks — Atualizações Recentes
- **`terminalSequence`** no JSON de output de hooks: emite notificações desktop, títulos de janela e bells sem terminal controlador
- **`duration_ms`** em PostToolUse e PostToolUseFailure: tempo de execução da ferramenta (exclui prompts de permissão e PreToolUse)
- **`hookSpecificOutput.updatedToolOutput`**: hooks PostToolUse agora podem substituir output de qualquer tool (antes era MCP-only)

### MCP — Melhorias
- **Reconnect paralelo**: servidores MCP reconectam em paralelo em vez de serial — ~2× mais rápido para subagentes e reconfigurações SDK
- Servidores MCP stdio recebem `CLAUDE_PROJECT_DIR` no ambiente (igual a hooks)
- Configs de plugin podem referenciar `${CLAUDE_PROJECT_DIR}` em comandos

### Agentes em Background — Novos Flags
Novos flags para `claude agents` (sessions disparadas em background):
```
--add-dir        adiciona diretório ao contexto do agente
--settings       arquivo de settings para a sessão
--mcp-config     config MCP específica do agente
--plugin-dir     diretório de plugins para o agente
--permission-mode modo de permissão (por ex. autoApprove)
--model          modelo a usar nessa sessão
--effort         nível de esforço (low/medium/high/xhigh)
--dangerously-skip-permissions  para CI/automação
```

### Fast Mode — Opus 4.7 como Padrão
- Fast mode agora usa Opus 4.7 por padrão (antes Opus 4.6)
- Custo: $30/$150 por MTok input/output
- Velocidade: ~2,5× tokens/s de output vs modo padrão

### Plugin Details — Visibilidade de Custo
- `claude plugin details <nome>` mostra inventário de componentes do plugin
- Exibe custo projetado por sessão em tokens
- `/plugin details` no painel também lista servidores LSP que o plugin provê

### Managed Agents — Dreaming
- Claude Code agents escrevem notas para si mesmos entre sessões
- Retêm informações sobre tarefas específicas cross-session
- Disponível via Managed Agents (Research Preview → GA)

## 🔗 Conexões
- [[Pesquisa - 2026-05-26 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-26 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-25 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Hooks: Complete 2026 Production Reference](https://thepromptshelf.dev/blog/claude-code-hooks-complete-reference-2026/)
- [Claude Code Updates by Anthropic - May 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Create custom subagents - Claude Code Docs](https://code.claude.com/docs/en/sub-agents)
- [Claude Code Agent Teams, Subagents, and MCP: The 2026 Playbook](https://www.developersdigest.tech/blog/claude-code-agent-teams-subagents-2026)
- [Claude Code Changelog 2026](https://claudefa.st/blog/guide/changelog)

## 🚧 Lacunas
- Data GA do Dreaming (ainda Research Preview?)
- Limite máximo de agentes paralelos por sessão paga
- Documentação de `--effort xhigh` (comportamento vs `high`)
