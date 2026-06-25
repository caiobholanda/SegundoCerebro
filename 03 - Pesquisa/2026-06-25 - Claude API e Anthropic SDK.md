---
tipo: pesquisa
criado: 2026-06-25
atualizado: 2026-06-25
pergunta-central: Quais as novidades da Claude API e plataforma Anthropic em junho 2026?
relacionado-a: [Claude Code, Economia de Tokens]
related: ["[[2026-06-24 - Claude API e Anthropic SDK]]"]
tags: [pesquisa, ia, claude, api]
---

# Pesquisa - Claude API e Anthropic SDK

## ❓ Pergunta central
Quais as novidades da Claude API e plataforma Anthropic em junho 2026?

## 🎯 Síntese (3-5 linhas)
Fable 5 entrou em cobrança medida após o período gratuito (encerrou 22/06, $10/$50 por MTok). Billing split está ativo desde 15/06. A API ganhou fallback server-side, MCP tunnels para redes privadas, Rate Limits API e Multi-agent sessions em beta público. Managed Agents agora roda em sandbox corporativo com MCP privado. Claude chegou ao ecossistema Apple (Foundation Models, iOS/macOS/watchOS 27) e ao Slack via Claude Tag.

## 🔬 Detalhes
- **Claude Fable 5** (GA desde 09/06): 1M ctx, 128K output, $10/$50 MTok — período gratuito Pro/Max/Team encerrou em 22/06; a partir de agora consome créditos
- **Claude Mythos 5**: disponível apenas para ciber-defensores e provedores de infraestrutura selecionados (parceiros Glasswing)
- **Billing split** (ativo desde 15/06): Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consomem pool separado (Pro $20, Max5x $100, Max20x $200/mês)
- **Fallback server-side** (header `server-side-fallback-2026-06-01`): recusas retentam em segundo modelo no mesmo round-trip, sem cobrança extra
- **Sem cobrança por recusas**: requests com `stop_reason: "refusal"` sem output gerado não são mais cobrados
- **MCP Tunnels** (research preview): permite conectar servidores MCP dentro de redes privadas
- **Rate Limits API**: admins podem consultar os limites da organização e dos workspaces via API
- **Managed Agents enterprise**: sandbox corporativo + MCP privado; multi-agent sessions e Outcomes em beta público (`managed-agents-2026-04-01`)
- **Claude Tag no Slack** (beta Team/Enterprise): @Claude em canais com acesso a ferramentas e bases de código
- **Apple Foundation Models**: suporte no framework iOS 27, iPadOS 27, macOS 27, visionOS 27
- **Sonnet 4 e Opus 4 originais** descontinuados em 15/06 — chamadas falham

## 🔗 Conexões
- [[2026-06-25 - Claude Code — CLI e agentes]]
- [[2026-06-25 - Economia de Tokens em LLMs]]
- [[Projeto - Sistema Chamados]]

## 📚 Fontes
- [Anthropic Release Notes – Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Platform Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
- [Claude Fable 5 e Mythos 5 – Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Opus 4.8 – Anthropic](https://www.anthropic.com/news/claude-opus-4-8)

## 🚧 Lacunas
- Como o fallback server-side afeta latência e custo médio por request?
- Quais as condições exatas de elegibilidade para acessar Mythos 5?
- Impacto do billing split em workflows agênticos existentes após 15/06
