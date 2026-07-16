---
tipo: pesquisa
criado: 2026-07-15
atualizado: 2026-07-15
pergunta-central: Quais são as principais novidades da Claude API e Anthropic SDK em julho de 2026?
relacionado-a: [Claude Code — CLI e agentes, Economia de Tokens em LLMs]
related: []
tags: [pesquisa, claude-api, anthropic, ia]
---

# Claude API e Anthropic SDK (2026-07-15)

## ❓ Pergunta central
Quais são as principais novidades da Claude API e do ecossistema Anthropic SDK em julho de 2026?

## 🎯 Síntese
Julho consolidou a expansão enterprise da Anthropic: analytics por grupo/usuário, GA no Azure via Microsoft Foundry, rate limits unificados (Sonnet/Haiku agora igualam Opus), novo beta header de memória, suporte a code_execution em 7 linguagens, e lançamento do Claude for Teachers para educadores K-12 nos EUA.

## 🔬 Detalhes

### Enterprise Analytics
- Dashboard admin: uso e custo por **grupo** e por **usuário**
- Outputs exibidos: artifacts criados, arquivos editados, skills e connectors utilizados — ao lado do custo
- Spend alerts configuráveis

### Microsoft Foundry (Azure) — GA
- Claude disponível nativamente no Azure via Microsoft Foundry
- Identity, billing e governance Azure-nativos + suporte a US data zone
- Modelos disponíveis: **Opus 4.8** e **Haiku 4.5** (Messages API)
- Casos de uso: coding, agentic work, complex reasoning

### Rate Limits — Consolidação
- Claude Sonnet e Claude Haiku agora **igualam Claude Opus** em todos os tiers
- Tiers consolidados: **Start**, **Build**, **Scale** (antes havia mais subdivisões)

### Novos recursos SDK
- **Beta header** `agent-memory-2026-07-22`:
  - Muda comportamento de listagem de memórias (ordem estável, ignora `order_by`/`order`)
  - SDKs atualizados para enviar o header por padrão
- **code_execution_20260120**: suporte em Python, TypeScript, Go, Java, Ruby, PHP e C#
  - REPL state persistence
  - Versão mínima para tool calling programático

### Claude for Teachers
- Educadores K-12 verificados nos EUA ganham acesso gratuito a ferramentas premium
- Teaching skills + biblioteca de skills pedagógicas
- Conteúdo mapeado a padrões acadêmicos de todos os 50 estados

## 🔗 Conexões
- [[2026-07-15 - Claude Code — CLI e agentes]]
- [[2026-07-15 - Economia de Tokens em LLMs]]
- [[2026-07-14 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Developer Platform Updates July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-developer-platform)
- [Anthropic Release Notes July 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Agent SDK 2026 — Totalum Blog](https://www.totalum.app/blog/claude-agent-sdk-totalum-2026)
- [Agent SDK overview — Claude Code Docs](https://code.claude.com/docs/en/agent-sdk/overview)

## 🚧 Lacunas
- Claude for Teachers chegará ao Brasil/LATAM?
- Quais são os limites de rate no tier Start vs Build vs Scale após consolidação?
