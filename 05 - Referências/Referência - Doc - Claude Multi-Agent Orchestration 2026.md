---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://platform.claude.com/docs/en/managed-agents/multi-agent
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude, api, managed-agents, multiagent, orquestracao]
---

# Referência — Multiagent Sessions (Claude Managed Agents)

Documentação oficial sobre Multi-Agent Orchestration no Claude Managed Agents, em public beta desde 06/05/2026.

## Arquitetura técnica

- **Agente líder (lead agent)**: quebra o trabalho em partes e delega para especialistas
- **Agentes especialistas**: cada um tem seu próprio modelo, prompt e toolset
- Cada agente roda em **sua própria session thread** (context-isolated event stream com histórico de conversação próprio)
- Todos os agentes compartilham o **mesmo container e filesystem**
- Especialistas trabalham em paralelo no filesystem compartilhado

## Filesystem compartilhado: como funciona tecnicamente

- Todos os agentes do mesmo multiagent session **compartilham o mesmo container e filesystem** — não é montagem de rede separada
- Cada agente escreve no mesmo espaço de arquivos do container
- **File locking** disponível em Agent Teams para evitar conflitos de escrita concorrente
- O agente líder pode verificar progresso de outros agentes mid-workflow porque **eventos são persistentes**
- Cada agente mantém memória do que fez (por sessão thread)

## Visibilidade e rastreabilidade

- Toda execução rastreável no Claude Console: qual agente fez o quê, em que ordem e por quê
- Eventos persistentes no event stream de cada sessão

## Contexto vs. estado

- **Context**: isolado por session thread (cada agente tem seu próprio histórico)
- **Filesystem/state**: compartilhado pelo container

## Primitivas de coordenação (Agent Teams no Claude Code)

- Shared task list com dependency tracking
- Peer-to-peer messaging entre agentes
- File locking para evitar conflitos

## Beta header

`managed-agents-2026-04-01`

## Fontes relacionadas

- [[Referência - Doc - Claude Managed Agents Memory 2026]]
- [[Referência - Doc - Claude Agent SDK Overview]]
