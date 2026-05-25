---
tipo: pesquisa
criado: 2026-05-24
atualizado: 2026-05-24
pergunta-central: Quais são as novidades do Claude Code, CLI e agentes em maio de 2026?
relacionado-a: [claude-api, dev, automacao]
tags: [pesquisa, dev, claude, automacao]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-05-24

## ❓ Pergunta central
Quais são as novidades do Claude Code, CLI e agentes em maio de 2026?

## 🎯 Síntese
Claude Code Agent View (Research Preview desde 11/mai) unifica todas as sessões paralelas num único dashboard CLI. Rate limits dobrados. Dreaming traz memória entre sessões de agentes. Opus 4.7 agora é padrão com nível `xhigh`. Ampla atualização de confiabilidade: session recovery, MCP mais rápido e correções Windows.

## 🔬 Detalhes

### Agent View — Research Preview
- Lançado em 11/05/2026
- Dashboard CLI único que lista e gerencia todas as sessões paralelas em progresso
- Funciona como uma visão unificada de todo o estado de trabalho ativo
- UI pode mudar antes de GA (Research Preview)

### Rate Limits Dobrados
- Limites de cinco horas dobrados em Pro, Max, Team e Enterprise (baseado em assentos)
- Redução de horário de pico removida nos planos Pro e Max

### Dreaming — Memória entre Agentes
- Agente que encerra uma sessão deixa notas estruturadas para o próximo
- Continuidade automática de contexto entre sessões sem intervenção humana
- Feature mais comentada da atualização de maio

### Opus 4.7 como Padrão + Esforço `xhigh`
- Opus 4.7 é agora o padrão no Max e Team Premium
- Novo nível de esforço `xhigh` como configuração recomendada para codificação
- Fast Mode: ~2,5× tokens/s de output

### Atualização de Confiabilidade
- Melhor manipulação de sessões em background
- Gerenciamento aprimorado de modelos e plugins
- Inicialização mais rápida do MCP e SDK
- Correções para falhas de terminal, travamentos e recuperação de sessão no desktop e Windows

### Integrações Expandidas
- Microsoft 365: Excel, PowerPoint, Word (via Managed Agents)
- 10 templates de agentes para setor financeiro
- Plugin marketplace multi-harness (Claude Code, Codex CLI, Cursor, Gemini CLI)

## 🔗 Conexões
- [[Pesquisa - 2026-05-24 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-24 - Programação e Desenvolvimento]]
- [[Pesquisa - 2026-05-23 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates — May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Agent View: CLI Dashboard — Pasquale Pillitteri](https://pasqualepillitteri.it/en/news/2384/claude-code-agent-view-cli-dashboard-sessions-2026)
- [Code with Claude SF 2026: What Anthropic Shipped](https://blakecrosley.com/blog/code-with-claude-sf-2026-recap)
- [Novidades — Claude Code Docs](https://code.claude.com/docs/pt/whats-new)
- [Gemini CLI vs Claude Code 2026 — DataCamp](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)

## 🚧 Lacunas
- Data GA do Agent View (atualmente Research Preview)
- Limite de sessões paralelas suportadas pelo Agent View
- Como Dreaming interage com projetos que usam múltiplos workstreams simultâneos
