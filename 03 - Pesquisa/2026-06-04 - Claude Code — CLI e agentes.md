---
tipo: pesquisa
status: em-andamento
criado: 2026-06-04
atualizado: 2026-06-04
tags: [pesquisa, claude, cli, agentes, automatico]
related: ["[[2026-06-03 - Claude Code — CLI e agentes]]"]
pergunta-central: "Quais são as principais novidades no Claude Code CLI e agentes em 04/06/2026?"
relacionado-a: [claude-code, cli]
---

# Claude Code — CLI e agentes — 2026-06-04

## Destaque principal

**Microsoft cancelou licenças corporativas do Claude Code** e está empurrando engenheiros internos para o **Copilot CLI** — sinaliza tensão crescente entre Microsoft (parceira OpenAI) e Anthropic.

**Anthropic publicou post sobre autonomia**: "Enabling Claude Code to work more autonomously" — documenta a filosofia de design por trás das permissões adaptativas.

## Novidades (semana de 03–04/06)

### Métricas e observabilidade
- `OTEL_RESOURCE_ATTRIBUTES` agora incluídos como labels em métricas → fatia uso por team/repo
- `claude agents` rows: mostram `done/total` antes do detalhe; peek exibe item com maior runtime

### Melhorias de agentes
- `claude agents --json`: campo `waitingFor` mostra por que sessão está bloqueada (ex.: permission prompt)
- Autocomplete no dispatch input sugere native slash commands + bundled skills (não apenas project skills)

### Correção de comportamento
- **Parallel tool calls**: Bash com falha não cancela mais outras chamadas na mesma bateria — cada ferramenta retorna resultado independente
- Clicar slash command no autocomplete agora **preenche** o prompt; Enter para executar (antes executava direto)

### Plugin / marketplace
- `skipLfs` adicionado como opção em marketplace sources (pula Git LFS durante clone/update)

### Fixes CJK e Windows
- Correções para input IME chinês/japonês/coreano
- Fix links em terminal Windows
- Melhorias performance em voice mode com caracteres especiais

## Contexto competitivo

- Microsoft cancela licenças Claude Code → push para Copilot CLI internamente
- Anthropic reage com post de filosofia de autonomia (posicionamento de produto)

## O que mudou desde 2026-06-03

- Microsoft cancel confirmado (novo evento)
- Post oficial sobre autonomia publicado
- Fixes CJK + Windows em update recente

## Links relacionados

- [[2026-06-03 - Claude Code — CLI e agentes]]
- [[2026-06-04 - Claude API e Anthropic SDK]]

## Fontes

- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Microsoft Cancels Claude Code Licenses — OpenTools](https://opentools.ai/news/microsoft-cancels-claude-code-licenses-copilot-cli)
- [Enabling Claude Code to work more autonomously — Anthropic](https://www.anthropic.com/news/enabling-claude-code-to-work-more-autonomously)
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
