---
tipo: pesquisa
status: ativo
criado: 2026-05-17
atualizado: 2026-05-17
tags: [ia, dev, claude, cli, mcp]
pergunta-central: Quais são as novidades do Claude Code CLI e do claude.ai em maio de 2026?
relacionado-a: Claude API, automação vault
---

# Pesquisa — Claude Code e Claude.ai (maio 2026)

## Hooks — novas capacidades

### duration_ms em PostToolUse

`PostToolUse` e `PostToolUseFailure` agora incluem o campo `duration_ms` no JSON de entrada — tempo de execução da ferramenta, excluindo prompts de permissão e o próprio hook `PreToolUse`.

```json
{
  "tool_name": "Bash",
  "tool_input": {"command": "npm test"},
  "tool_response": "...",
  "duration_ms": 4823
}
```

Uso: monitorar tools lentas, alertar quando execuções excedem threshold, logs de performance.

### updatedToolOutput para todos os tools

`PostToolUse` agora pode substituir o output de qualquer tool via `hookSpecificOutput.updatedToolOutput` (antes limitado a MCP tools). Permite pós-processamento ou sanitização de resultados antes de chegar ao contexto.

### terminalSequence para notificações

Novo campo `terminalSequence` no JSON de saída de hooks. Permite emitir sequências ANSI para notificações desktop, atualizar títulos de janela ou disparar bells — sem precisar de terminal controlado.

```json
{
  "hookSpecificOutput": {
    "terminalSequence": "\033]0;Claude: tarefa concluída\007"
  }
}
```

## MCP — melhorias

- **Conexões em paralelo**: subagentes e SDK agora conectam servidores MCP em paralelo (antes serial) — reduz tempo de inicialização significativamente.
- **`/mcp` mostra contagem de tools** por servidor conectado e sinaliza servidores com zero tools (útil para debug de configuração).
- **`CLAUDE_CODE_PLUGIN_PREFER_HTTPS`**: nova variável de ambiente para clonar fontes de plugin via HTTPS em vez de SSH (útil em ambientes sem chave GitHub SSH configurada).

## Agent View

Interface para gerenciar múltiplas sessões a partir de uma única view de CLI:
- Iniciar agentes
- Colocá-los em background
- Verificar status
- Retornar apenas quando input é necessário

Disponível em Research Preview. Sem data de GA anunciada.

## /goal e controles de agente

`/goal` oferece controle declarativo de término: "pare após N turnos", "finalize quando critério X for satisfeito". Subagentes travam após **10 min de idle** sem atividade.

## Novos slash commands confirmados (semana 12-14/05)

- `/goal` — define objetivo e critério de parada
- `--plugin-url` — carrega plugin de URL customizada
- `/recap` — resumo da sessão atual
- `claude project purge` — limpa projetos antigos

## Fontes

- [Claude Code Changelog 2026 (claudefa.st)](https://claudefa.st/blog/guide/changelog)
- [Claude Code Updates May 2026 (Releasebot)](https://releasebot.io/updates/anthropic/claude-code)
- [Changelog oficial (code.claude.com)](https://code.claude.com/docs/en/changelog)
- [Releases GitHub (anthropics/claude-code)](https://github.com/anthropics/claude-code/releases)

## Conexões

- [[Pesquisa - 2026-05-16 - Claude Code]]
- [[Pesquisa - 2026-05-17 - Claude API]]
- [[Pesquisa - 2026-05-16 - Claude Code e Claude.ai]]
