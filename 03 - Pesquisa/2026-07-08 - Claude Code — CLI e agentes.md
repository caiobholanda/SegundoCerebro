---
tipo: pesquisa
status: em-andamento
criado: 2026-07-08
atualizado: 2026-07-08
tags: [ia, claude, dev, cli, agentes]
pergunta-central: Quais são as atualizações do Claude Code CLI e do sistema de agentes em julho de 2026?
relacionado-a: []
related: []
---

# Claude Code — CLI e Agentes — 2026-07-08

## Workflows Dinâmicos

Adicionada configuração **"Dynamic workflow size"** em `/config` para controlar o número de agentes em workflows dinâmicos (small / medium / large). Permite calibrar custo × paralelismo em tarefas com múltiplos subagentes.

## OpenTelemetry — Novos Atributos

Atributos OTel adicionados: `workflow.run_id` e `workflow.name` — rastreamento completo de atividade de agentes por sessão/workflow em plataformas de observabilidade.

## Modo de Permissão Manual como Padrão

Permission mode **"Manual"** agora é o padrão em CLI, VS Code e JetBrains. Significa que cada ação de escrita/execução requer aprovação explícita — mais seguro para sessões não supervisionadas.

## Correções de Confiabilidade (Julho)

**Background agents**:
- Agentes mostravam apenas "exit_with_message" ao falhar na inicialização → corrigido
- Sessões de background ignoravam `effortLevel` nas configurações → corrigido
- Agentes não reconheciam flag `disableMouse` em background → corrigido
- Erro ao abrir chats de agentes em modo background → corrigido

**Edição de arquivos**:
- Falha ao editar arquivos em diretórios não-git com WorktreeCreate hooks → corrigido

**AskUserQuestion**: não mais auto-continua sem interação do usuário.

## Correções de Interface e Terminal

- Conteúdo saltando ao rolar histórico → corrigido
- Terminal piscando durante digitação em modo bash → corrigido
- Problema com histórico de shell suggestions → corrigido
- Melhorias no modo fullscreen

## Links

- [Claude Code Changelog — gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Claude Code Updates Julho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
