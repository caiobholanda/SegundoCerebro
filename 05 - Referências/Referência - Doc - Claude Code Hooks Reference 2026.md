---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://code.claude.com/docs/en/hooks
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude-code, hooks, lifecycle, automacao]
---

# Referência - Doc - Claude Code Hooks Reference 2026

## 🔗 Fonte
- **URL**: https://code.claude.com/docs/en/hooks
- **Autor**: Anthropic
- **Data publicação**: Atualizado continuamente (consultado 2026-05-14)

## 📝 Resumo (suas palavras)
Documentação oficial de referência para o sistema de hooks do Claude Code. Lista todos os eventos de lifecycle disponíveis, tipos de handler suportados e exemplos de configuração. Fonte autoritativa para a lista completa dos 25+ pontos de interceptação.

## 💡 Trechos-chave

### Eventos de lifecycle (lista completa identificada até 14/05/2026)

**Sessão e configuração:**
- `Setup` — antes da sessão iniciar
- `SessionStart` — início de sessão
- `SessionEnd` — encerramento de sessão
- `InstructionsLoaded` — após carregar instruções/CLAUDE.md
- `ConfigChange` — mudança de configuração em runtime

**Prompt e interação:**
- `UserPromptSubmit` — ao submeter um prompt (pode bloquear/modificar)
- `UserPromptExpansion` — expansão de prompt pelo sistema
- `Elicitation` — Claude solicita informação ao usuário
- `ElicitationResult` — resposta ao Elicitation recebida

**Ferramentas:**
- `PreToolUse` — antes de qualquer ferramenta executar (checkpoint de segurança primário)
- `PermissionRequest` — Claude solicita permissão
- `PermissionDenied` — permissão negada
- `PostToolUse` — após ferramenta executar com sucesso
- `PostToolUseFailure` — após ferramenta falhar

**Parada e continuação:**
- `Stop` — Claude ou subagente encerra (pode forçar continuação)
- `StopFailure` — falha ao encerrar
- `Notification` — notificação gerada

**Subagentes:**
- `SubagentStart` — subagente inicia
- `SubagentStop` — subagente encerra

**Compactação:**
- `PreCompact` — antes de compactar contexto
- `PostCompact` — após compactar contexto

**Worktrees:**
- `WorktreeCreate` — criação de worktree
- `WorktreeRemove` — remoção de worktree

**Sistema de arquivos e estado:**
- `CwdChanged` — diretório de trabalho alterado
- `FileChanged` — arquivo modificado

**Agent Teams (mais recentes):**
- `TaskCreated` — tarefa criada em time de agentes
- `TeammateIdle` — agente parceiro ocioso
- `TaskCompleted` — tarefa do time concluída

### Tipos de handler
- **Command hooks** — executam shell scripts
- **HTTP hooks** — POST para endpoint, recebem JSON de volta (adicionado fevereiro 2026)
- **Prompt hooks** — chamam um LLM prompt
- **Agent hooks** — disparam um subagente

### Features recentes
- `async: true` — executa hooks em background sem bloquear Claude (janeiro 2026)
- `/hooks` menu agora é read-only (proteção contra modificação acidental)
- `disableAllHooks` para desabilitar todos de uma vez

## 🪞 Reflexão
A lista real parece ter 27-28 eventos documentados, não exatamente 25 como citado em algumas fontes. Alguns eventos (TaskCreated, TeammateIdle, TaskCompleted) são específicos de Agent Teams. Skills podem definir hooks próprios no frontmatter YAML, com escopo limitado ao lifetime da skill.

## 🔗 Conecta com
- [[Pesquisa - 2026-05-13 - Claude Code]]
- [[Pesquisa - 2026-05-14 - Claude Code]]
- [[Referência - Artigo - Claude Code Hooks Subagents Skills 2026]]
