---
tipo: pesquisa
criado: 2026-07-09
atualizado: 2026-07-09
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em julho de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-07-09

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em julho de 2026?

## 🎯 Síntese
Julho traz consolidação da linha Claude 5 como padrão, com Sonnet 5 no Claude Code (promo $2/$10 até 31/ago), Opus 4.8 e Haiku 4.5 disponíveis na Messages API. Enterprise recebe analytics enriquecidas por usuário/grupo. Fast Mode Opus 4.7 será removido em 24/jul. Managed Agents ganha cron nativo e sandboxes auto-hospedados.

## 🔬 Detalhes

### Modelos Disponíveis
- **Opus 4.8** e **Haiku 4.5** disponíveis na Messages API para coding, agentic work e reasoning complexo
- **Sonnet 5** como modelo padrão no Claude Code — contexto nativo 1M tokens, 128k output
- Sonnet 5 pricing promocional: **$2/$10 MTok** até 31/ago/2026 → $3/$15 em setembro

### Deprecações
- **Fast Mode Opus 4.7** depreciado — remoção em **24/jul/2026**
- Após remoção, requests com `speed: "fast"` para `claude-opus-4-7` retornam erro

### Enterprise & Analytics
- Dashboard admin mostra uso e custo por **grupo e por usuário**
- Exibe artefatos criados, arquivos editados, skills e connectors usados ao lado do custo
- Novos **spend alerts** e model-level entitlements

### Rate Limits & Tiers
- Rate limits de Sonnet e Haiku agora **iguais ao Opus** em todos os tiers
- Tiers consolidados em 3: **Start → Build → Scale**

### Managed Agents
- **Deployments agendados** via cron nativo — sem precisar de scheduler próprio
- **Sandboxes auto-hospedados** disponíveis como alternativa à infra da Anthropic para execução de tools

## 🔗 Conexões
- [[2026-07-09 - Claude Code — CLI e agentes]]
- [[2026-07-09 - Economia de Tokens em LLMs]]
- [[2026-07-08 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Updates - July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Claude Platform Docs - Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
- [Introducing Claude Opus 4.8 - Anthropic](https://www.anthropic.com/news/claude-opus-4-8)
- [Anthropic Release Notes - July 2026](https://releasebot.io/updates/anthropic)

## 🚧 Lacunas
- Pricing definitivo do Haiku 4.5 após período promocional
- Detalhes técnicos dos sandboxes auto-hospedados (requisitos, limites)
- Data de GA definitiva para Managed Agents cron além de beta
