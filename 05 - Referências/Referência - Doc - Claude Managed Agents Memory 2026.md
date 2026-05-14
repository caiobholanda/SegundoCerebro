---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://platform.claude.com/docs/en/managed-agents/memory
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude, api, managed-agents, memory, beta]
---

# Referência — Using Agent Memory (Claude Managed Agents)

Documentação oficial sobre o sistema de memória persistente para Claude Managed Agents, disponível em public beta desde 23/04/2026.

## Conceitos centrais

- **Memory store**: coleção de documentos de texto com escopo de workspace, otimizada para Claude
- Montada como diretório no container da sessão em `/mnt/memory/`
- O agente lê e escreve com as mesmas file tools que usa no restante do filesystem
- Cada escrita cria uma **memory version** imutável (audit trail + point-in-time recovery)

## Limites técnicos documentados

| Parâmetro | Valor |
|-----------|-------|
| Tamanho máximo por memória individual | 100 kB (~25k tokens) |
| Máximo de stores por sessão | 8 |
| TTL de versões | 30 dias (recentes preservadas independente da idade) |
| `instructions` por store attachment | máx. 4.096 caracteres |

## Persistência e acesso

- Stores persistem além das sessões: workspace-scoped, não session-scoped
- Múltiplas sessões podem compartilhar o mesmo store
- `access`: `read_write` (padrão) ou `read_only`
- Stores não podem ser adicionados/removidos de sessões ativas (somente em criação)

## Segurança

- Prompt injection risk: usar `read_only` para material de referência que o agente não precisa modificar
- Operação de `redact` disponível para apagar conteúdo de versões históricas (compliance, PII)
- Archiving de store é irreversível (one-way)

## Beta header

`managed-agents-2026-04-01` (padrão para toda API de Managed Agents)

## Fontes relacionadas

- [[Referência - Doc - Claude Agent SDK Overview]]
- [[Referência - Doc - Anthropic Release Notes 2026]]
