---
tipo: pesquisa
criado: 2026-05-27
atualizado: 2026-05-27
pergunta-central: Quais são as atualizações recentes do Claude Code CLI e sistema de agentes?
relacionado-a: [claude-api, ia, dev, automacao]
tags: [pesquisa, ia, dev, claude, cli]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-05-27

## ❓ Pergunta central
Quais são as atualizações recentes do Claude Code CLI e sistema de agentes?

## 🎯 Síntese
Semana de estabilização e refinamento: /simplify renomeado para /code-review com nível de esforço configurável e integração com PR comments; background sessions melhoradas com pinning via Ctrl+T; Dreaming consolida memória persistente entre sessões de agentes. Versão atual v2.1.150 (última atualização 23/mai).

## 🔬 Detalhes

### /code-review — Novo Nome e Capacidades (ex-/simplify)
- Renomeado de `/simplify` para `/code-review`
- Suporta nível de esforço: `/code-review high`, `/code-review medium`, `/code-review low`
- Flag `--comment`: posta resultados como comentários inline em PRs do GitHub
- Foco em bugs de corretude no nível de esforço escolhido

### Pinned Background Sessions
- `Ctrl+T` no `claude agents` para fixar uma sessão
- Sessões pinadas ficam vivas mesmo quando idle
- Reiniciam in-place para aplicar atualizações do Claude Code
- São descarregadas da memória apenas após sessões não-pinadas, sob pressão de memória

### Background Sessions — Melhorias
- Comando `/background` com melhorias gerais
- Auto-mode fixes
- Correções de worktrees de background jobs no Windows
- Remoção de worktrees agora funciona corretamente

### Bug Fixes da Versão Recente
- **Windows Terminal**: correção de strobing em tela cheia durante streaming em sessões background anexadas
- Correções de `agent view` com caracteres largos (wide chars)
- Fixes em dialog de tema
- Melhorias de confiabilidade de CLI geral

### Dreaming — Memória Cross-Session de Agentes
- Agente finaliza sessão e escreve notas de contexto
- Próximo agente no mesmo codebase lê as notas e acelera onboarding
- Reduz cold start em workflows longos e distribuídos
- Disponível como Research Preview via Claude Managed Agents

### Agent View — Dashboard de Sessões Paralelas
- Dashboard CLI unificado para todas as sessões em paralelo
- Visualização consolidada do estado de todas as sessões em progresso
- Lançado em 11/mai como Research Preview

### Gemini CLI vs Claude Code (Contexto Competitivo)
- Google lançou Gemini CLI como rival direto
- Android CLI 1.0 suporta explicitamente Claude Code, Codex, Gemini e Antigravity
- Análise semântica nativa, Compose previews e UI tests sem Android Studio

### Versão e Histórico
- Versão atual: **v2.1.150** (última em 23/mai/2026)
- 296+ releases rastreadas no changelog (v0.2.21 beta → v2.1.150)
- Limites de uso: 2× em todos os planos pagos (Pro, Max, Team, Enterprise)

## 🔗 Conexões
- [[Pesquisa - 2026-05-27 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-27 - Programação e Desenvolvimento]]
- [[Pesquisa - 2026-05-26 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates — May 2026](https://releasebot.io/updates/anthropic/claude-code)
- [What's New — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Changelog — All Release Notes 2026](https://claudefa.st/blog/guide/changelog)
- [Claude Code Agent View — CLI Dashboard](https://pasqualepillitteri.it/en/news/2384/claude-code-agent-view-cli-dashboard-sessions-2026)
- [Gemini CLI vs Claude Code 2026](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)

## 🚧 Lacunas
- Data de GA do Agent View (atualmente Research Preview)
- Detalhes sobre armazenamento e expiração das notas do Dreaming
- Limites de sessões pinadas por plano
