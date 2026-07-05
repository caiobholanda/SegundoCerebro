---
tipo: pesquisa
status: em-andamento
criado: 2026-07-04
atualizado: 2026-07-04
tags: [ia, claude, api, dev]
pergunta-central: Quais são as novidades da API da Anthropic e do Claude SDK em julho de 2026?
relacionado-a: "[[Pesquisa - 2026-07-02 - Claude API e Anthropic SDK]]"
related: []
---

# Claude API e Anthropic SDK — 2026-07-04

## Sonnet 5 como novo padrão

- Lançado em 30/jun; desde 1/jul é o modelo padrão em Free, Pro, Max, Team e Enterprise
- Preço promocional: **$2/$10 por MTok** até 31/ago → depois $3/$15
- Contexto nativo de **1M tokens**, output até 128k
- Performance próxima ao Opus 4.8 a custo muito menor
- Score de 63,2% em agentic coding benchmarks
- Menor taxa de comportamentos indesejáveis que Sonnet 4.6 (mais resistente a prompt injection e misuse)

## Fable 5 + Mythos 5 — retorno após suspensão

- Ambos desbloqueados mundialmente em 1/jul após ~3 semanas de restrição por controles de exportação EUA
- Retorno com classificador de segurança reforçado
- Fable 5 mantém preço de $10/$50 MTok; Mythos 5 restrito a parceiros enterprise

## Enterprise — novos recursos admin

- Analytics mais ricas para admins: visibilidade de uso, custo e tendências de produtividade por modelo
- Direitos em nível de modelo (model-level entitlements)
- Alertas de gasto configuráveis
- Suporte a org default models: organização define qual modelo cada tier usa por padrão

## Autenticação — WIF expandido

- WIF (Workload Identity Federation) agora cobre **todos os endpoints da Claude API**
- Compatível com qualquer provedor OIDC (não só Google/AWS)
- Inclui Claude Code headless e Agent SDK
- Elimina chaves API estáticas em pipelines CI/CD

## Azure / Microsoft Foundry

- Claude disponível nativamente no Azure via Microsoft Foundry
- Integração com IAM, cobrança e governança existentes do Azure
- Suporte opcional a zona de dados dos EUA (conformidade)
- Managed Agents e Skills disponíveis via platform Azure

## Managed Agents — beta público consolidado

- Agentes com cron schedule, vault de env vars, browser capabilities
- Suporte a MCP privado corporativo
- Retries automáticos em falhas de streaming e erros SSL

## Links

- [Introducing Claude Sonnet 5 — Anthropic](https://www.anthropic.com/news/claude-sonnet-5)
- [Claude Fable 5 Returns, Anthropic Launches Sonnet 5](https://www.it-connect.tech/claude-fable-5-returns-worldwide-as-anthropic-launches-sonnet-5/)
- [Models overview — Platform Docs](https://platform.claude.com/docs/en/about-claude/models/overview)
- [Pricing — Platform Docs](https://platform.claude.com/docs/en/about-claude/pricing)
- [Anthropic Release Notes July 2026](https://releasebot.io/updates/anthropic)
