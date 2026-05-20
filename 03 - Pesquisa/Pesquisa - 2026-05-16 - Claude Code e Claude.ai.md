---
tipo: pesquisa
status: ativo
criado: 2026-05-16
atualizado: 2026-05-16
tags: [ia, dev, claude, claude-code, mcp, hooks, subagentes]
pergunta-central: Quais são as principais atualizações do Claude Code CLI e claude.ai em 2026?
relacionado-a: Claude API
---

# Claude Code e Claude.ai — Novidades maio 2026

## Modelo Padrão Atual (abril 2026)

- **Sonnet 4.6**: modelo padrão para a maioria dos usuários — melhor eficiência de tokens, suporte a adaptive thinking, contexto de 1M tokens a preço padrão
- **Opus 4.7**: modelo flagship, padrão nos planos Max e Team Premium desde 16/04/2026

## Hooks — Novidades Recentes

Os hooks executam ao redor de tool calls, inícios de sessão, eventos de stop e conclusão de subagentes:

### Novas capacidades
- **PostToolUse hooks** agora podem substituir o output de qualquer ferramenta via `hookSpecificOutput.updatedToolOutput` (antes restrito a MCP)
- **Inputs de hook** agora incluem `duration_ms` — tempo de execução da ferramenta, excluindo prompts de permissão e hooks PreToolUse
- **`terminalSequence`** no output JSON de hooks: permite emitir notificações desktop, títulos de janela e bells sem terminal controlador

### Caso de uso prático
```json
{
  "hookSpecificOutput": {
    "updatedToolOutput": "output modificado pelo hook"
  },
  "terminalSequence": "\033]9;Task completed!\033\\"
}
```

## MCP Servers — Melhorias

- Limite aumentado para **500K caracteres** por resposta de tool — suficiente para a maioria dos outputs reais (arquivos grandes, logs, queries de banco)
- **Configuração em paralelo**: subagentes e SDK agora conectam MCP servers simultaneamente, não serialmente — redução significativa de tempo de inicialização
- Fix: subagentes agora herdam corretamente MCP servers injetados dinamicamente

## Subagentes e Agent Teams

Agent teams são subagentes especializados coordenados por um agente principal:

- Cada subagente tem seu próprio context window, prompt e permissões de ferramentas
- O agente principal cuida de planejamento e integração
- Subagentes especializados: code review, test runner, frontend QA, security checking

### Correções recentes
- Fix: subagentes em worktrees isolados agora têm acesso correto de Read/Edit aos arquivos do próprio worktree

## Arquitetura Completa (referência)

```
Claude Code
├── Configuração (hierarchy de settings)
├── Permissões
├── Hooks (PreToolUse / PostToolUse / Stop / SubagentComplete)
├── MCP Servers
└── Subagentes
    ├── Context window próprio
    ├── Permissões próprias
    └── Ferramentas próprias
```

## Conexoes

- [[Pesquisa - 2026-05-16 - Claude API]]
- [[Pesquisa - 2026-05-16 - Economia de Tokens]]
- [[_MOC - Diário]]

## Fontes

- [Claude Code Changelog 2026 — Claudefast](https://claudefa.st/blog/guide/changelog)
- [Claude Code Agent Teams, Subagents, MCP — Developers Digest](https://www.developersdigest.tech/blog/claude-code-agent-teams-subagents-2026)
- [Changelog — Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Full Stack: MCP, Skills, Subagents, Hooks — alexop.dev](https://alexop.dev/posts/understanding-claude-code-full-stack/)
