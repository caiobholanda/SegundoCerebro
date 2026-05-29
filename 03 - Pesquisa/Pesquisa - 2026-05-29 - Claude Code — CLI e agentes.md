---
tipo: pesquisa
status: em-andamento
criado: 2026-05-29
atualizado: 2026-05-29
tags: [pesquisa, claude-code, cli, agentes, automacao]
related: ["[[Pesquisa - 2026-05-28 - Claude Code — CLI e agentes]]"]
pergunta-central: Quais as novidades do Claude Code CLI e agentes em maio de 2026?
relacionado-a: [claude-code, automacao]
---

# Claude Code — CLI e Agentes — 2026-05-29

## Dynamic Workflows (Research Preview)

Principal novidade da semana, lançada com Opus 4.8 em 28/05:

- Planeja tarefa complexa → fan-out de subagentes → verifica outputs vs test suite
- **16 agentes concorrentes** e **1.000 agentes total** por run
- Implementado como workflows em JavaScript dentro do Claude Code
- Disponível para **Enterprise, Team e Max plans**

Uso típico: Claude Code cria um plano, delega partes a subagentes paralelos, agrega resultados e verifica.

## Dreaming (Memory entre Sessões)

- Agente que termina sessão deixa notas persistentes para o próximo agente no mesmo codebase
- Substitui replay completo de histórico por memória curada compacta
- Redução significativa de tokens + continuidade cross-session

## Agent View

Painel CLI unificado lançado em 11/05:
- Lista única de todas as sessões paralelas ativas
- Visualização do estado de trabalho em andamento sem trocar de terminal

## Melhorias de Estabilidade (maio)

- Suporte expandido a **PowerShell no Windows** (sem necessidade de Git Bash)
- Confiabilidade de **worktree e daemon** melhorada
- Estimativas de custo de contexto mais ricas no plugin
- Correção de bugs de sessão, plugin e CLI

## Integração Android

Google lançou **Android CLI 1.0** no Google I/O 2026 com suporte explícito a Claude Code:
- Análise semântica de código Android
- Compose previews e UI tests sem abrir Android Studio
- Suporte também a: Codex, Gemini e Antigravity

## Contexto Competitivo

DataCamp publicou comparativo **Gemini CLI vs Claude Code 2026** — Claude Code ainda lidera em uso prático de agentes e integração com workflows complexos.

## Links
- [Releasebot — Claude Code May 2026](https://releasebot.io/updates/anthropic/claude-code)
- [Dynamic Workflows — Unite.AI](https://www.unite.ai/what-opus-4-8-changes-for-anyone-running-agents-on-claude/)
- [Android CLI 1.0](https://gd.eurisko.com.br/2026/05/24/google-amplia-desenvolvimento-com-ia-ao-lancar-android-cli-para-agentes-como-claude-code-e-codex)
