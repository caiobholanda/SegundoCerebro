---
tipo: pesquisa
status: ativo
criado: 2026-06-16
atualizado: 2026-06-16
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 16 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-15 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-16

## Billing Split — Pós-Ativação (D+1)

- Billing split entrou em vigor ontem (15/06) — hoje é o primeiro dia completo de operação
- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consumindo crédito separado
- Quem não fez claim por e-mail pode não ter o allowance ativo
- Monitorar uso via `/usage` para evitar surpresas de cobrança

## Fable 5 / Mythos 5 — Status Atual

- Claude Fable 5 disponível na API, AWS Bedrock, Vertex AI, Microsoft Foundry desde 09/06
- Grátis Pro/Max/Team/Enterprise **até 22/06** → após isso, créditos medidos ($10/$50 MTok)
- Context window 1M tokens, output máximo 128K tokens, pensamento adaptativo sempre ativo
- Mythos 5: mesma base do Fable 5, menos salvaguardas — acesso restrito (parceiros Glasswing)
- Restrição de controle de exportações EUA ainda em vigor para estrangeiros no Fable 5/Mythos 5

## Managed Agents — Novas Funcionalidades

- Implantações agendadas de Managed Agents confirmadas (scheduled deployments)
- Credenciais de variáveis de ambiente em vault (vault env credentials)
- Eventos de webhook de thread de sessão mais ricos (richer session thread webhooks)

## Integração Apple Foundation Models

- Claude disponível via Apple Foundation Models Framework
- Funciona nativamente em iOS 27, iPadOS 27, macOS 27, visionOS 27, watchOS 27
- Permite integração nativa com apps Apple sem chamar API externa diretamente

## Depreciações — Ontem (15/06/2026)

- **Sonnet 4** e **Opus 4** originais desativados — chamadas falham agora
- Migrar: `claude-sonnet-4` → `claude-sonnet-4-6` | `claude-opus-4` → `claude-opus-4-8`

## Links

- [Claude Fable 5 — MacMagazine](https://macmagazine.com.br/post/2026/06/09/anthropic-lanca-modelos-avancados-fable-5-e-mythos-5-para-o-claude/)
- [Claude Fable 5 — StartSe](https://www.startse.com/artigos/anthropic-lancou-o-claude-fable-5-conheca-o-que-ele-faz/)
- [Claude Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic Release Notes June 2026](https://releasebot.io/updates/anthropic)
