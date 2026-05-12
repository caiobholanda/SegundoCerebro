---
tipo: meta
criado: 2026-05-08
atualizado: 2026-05-08
---

# _Claude/ — Índice

Memória autônoma do Claude Code. Atualizada automaticamente via hooks.

## Arquivos Principais

- [[_HOT_CACHE]] — contexto recente, injetado em toda nova sessão
- [[_GLOBAL]] — preferências e padrões aprendidos globalmente

## Projetos

- [[projetos/sistema-chamados/_CONTEXTO|sistema-chamados / Contexto]]
- [[projetos/sistema-chamados/_DECISOES|sistema-chamados / Decisões]]

## Como Funciona

| Evento | O que acontece |
|--------|---------------|
| **SessionStart** | `_HOT_CACHE.md` é lido e injetado no contexto automaticamente |
| **PostCompact** | Resumo da conversa é salvo em `_HOT_CACHE.md` + `00 - Inbox/` |
| **Stop** | Commit + push automático do `sistema-chamados` |

## Para o Claude

Ao aprender algo novo e duradouro:
- Preferências/padrões globais → atualizar `_GLOBAL.md`
- Decisão técnica de um projeto → append em `projetos/{nome}/_DECISOES.md`
- Contexto do projeto mudou → atualizar `projetos/{nome}/_CONTEXTO.md`
