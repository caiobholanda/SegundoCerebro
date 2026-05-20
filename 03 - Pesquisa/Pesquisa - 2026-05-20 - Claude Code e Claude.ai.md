---
tipo: pesquisa
status: ativo
criado: 2026-05-20
atualizado: 2026-05-20
tags: [ia, claude, cli, ferramentas, hooks, mcp]
pergunta-central: Quais são as últimas atualizações do Claude Code CLI e da plataforma claude.ai?
relacionado-a: Claude API
---

# Claude Code e Claude.ai — Novidades de 2026-05-20

## Novas Flags para Agentes em Background

Adicionadas flags para configurar sessões de agentes dispatched (background):

```bash
claude agent run \
  --add-dir ./src \
  --settings ./settings.json \
  --mcp-config ./mcp.json \
  --plugin-dir ./plugins \
  --permission-mode auto \
  --model claude-sonnet-4-6 \
  --effort high \
  --dangerously-skip-permissions
```

Permite configurar granularmente cada sessão de subagente sem alterar as configurações globais.

## Hooks: Novidades

### terminalSequence
- Hook JSON output agora aceita campo `terminalSequence`
- Permite que hooks emitam: notificações de desktop, títulos de janela, terminal bells
- Uso principal: notificações headless (quando não há terminal controlador visível)
- Exemplo de payload de hook com notificação:
```json
{
  "output": "Processamento concluído",
  "terminalSequence": "\x1b]9;2;Tarefa finalizada\x07"
}
```

### duration_ms em PostToolUse
- `PostToolUse` e `PostToolUseFailure` agora incluem `duration_ms` no input do hook
- Permite medir tempo de execução de cada ferramenta individualmente
- Útil para logging de performance, alertas de lentidão e otimização

## MCP: Melhorias

### Parallel Reconnect
- Subagentes e SDK reconfiguram servidores MCP em paralelo (antes era serial)
- Resultado: ~2× mais rápido na inicialização de sessões com múltiplos servidores MCP

### OAuth Fix
- Bug corrigido: refresh tokens não eram perdidos quando múltiplos servidores faziam refresh concorrentemente
- Efeito prático: usuários com vários servidores MCP remotos não precisam mais de re-autenticação diária

## Correções de Bugs

### WSL2 — Image Paste do Clipboard Windows
- Corrigido: colar imagens do clipboard do Windows no WSL2 agora funciona via fallback PowerShell quando `xclip`/`wl-paste` não conseguem ler dados de imagem
- Afeta: usuários Windows + WSL2 que tentavam passar screenshots para o Claude Code

### Permission Repeat Bug
- Corrigido: "Allowed by PermissionRequest hook" não repete mais uma vez por tool call em grupos collapsed de read/search

## /feedback Melhorado
- O comando `/feedback` agora pode incluir sessões recentes (últimas 24h ou 7 dias)
- Útil para reportar problemas que se estendem por mais de uma sessão

## Referência de Hooks (atualizada)

Total documentado: ~32+ eventos. Categorias:
- PreToolUse / PostToolUse / PostToolUseFailure
- PreAgentStart / PostAgentStop
- TaskCreated / TeammateIdle / TaskCompleted (Agent Teams)
- SessionStart / SessionEnd / PostCompact

## 🔄 Complemento — Limite +50% e Conferência Code with Claude

### Limites semanais +50% (até 13/07/2026)
- Ativo em todos os planos pagos: Pro, Max, Team, Enterprise — sem opt-in
- Combinado com o dobro do limite de 5 horas da semana anterior = 2× curto prazo + 1,5× semanal
- Motivação explícita: paridade com Codex (que consome menos tokens por tarefa equivalente)
- Disponível em CLI, extensões de IDE, desktop app e web app

### Agent View — Gerenciamento Multi-Sessão
- Tela única para ver todas as sessões Claude Code rodando simultaneamente
- Permite iniciar agentes, enviar para background, checar status e output, retomar só quando necessário
- Background sessions aparecem no `/resume` marcadas com `bg`

### Comando `/goal`
- Mantém Claude Code trabalhando entre turns até que condição de conclusão seja satisfeita
- Útil para tarefas longas sem supervisão contínua

### Code with Claude 2026 Conference (6/mai)
- Realizada em San Francisco, Londres e Tóquio
- **Sem lançamento de novo modelo** — foco deliberado em orquestração como diferencial competitivo
- Anunciados: Claude Code Routines, Remote Agents, CI auto-fix, Advisor Tool (Opus como advisor + Sonnet como executor), parceria com SpaceX/Colossus

### Claude Design (research preview) — Claude.ai
- Cria apresentações e protótipos visuais diretamente no chat
- Disponível gradualmente para assinantes Pro, Max, Team e Enterprise

### Google Workspace Integration — Claude.ai
- Claude lê e edita diretamente Docs, Gmail e Drive pela interface de chat
- Sem copiar-colar — trabalho contextual nos arquivos do usuário

## Fontes

- [Claude Code Updates maio 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog completo](https://claudefa.st/blog/guide/changelog)
- [Claude Code Weekly Limits +50% — Apidog](https://apidog.com/blog/claude-code-weekly-limits-50-percent-increase-july-2026/)
- [Code with Claude 2026: 5 New Agent Features — MindStudio](https://www.mindstudio.ai/blog/code-with-claude-2026-new-agent-features)
- [Why Anthropic Skipped a New Model at Code with Claude 2026 — Pravin Kumar](https://www.pravinkumar.co/blog/code-with-claude-2026-no-new-model)
- [Claude Design — StartSe](https://www.startse.com/artigos/claude-design-ia-que-cria-apresentacoes-e-prototipos-chega-para-assinantes-veja-como-usar/)
- [Claude Code Hooks Complete Reference 2026](https://thepromptshelf.dev/blog/claude-code-hooks-complete-reference-2026/)
- [Hooks reference — Claude Code Docs](https://code.claude.com/docs/en/hooks)
- [Claude Code CHANGELOG — GitHub](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)

## Conexões

- [[Pesquisa - 2026-05-19 - Claude Code e Claude.ai]] — PostToolUse duration_ms, updatedToolOutput, terminalSequence, MCP paralelo
- [[Pesquisa - 2026-05-20 - Claude API]] — MCP Tunnels, self-hosted sandboxes, Managed Agents
- [[Pesquisa - 2026-05-18 - Claude Code]] — Agent View, flags --add-dir, rate limits
