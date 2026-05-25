---
tipo: pesquisa
criado: 2026-05-25
atualizado: 2026-05-25
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-05-25

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?

## 🎯 Síntese
Code with Claude SF (6/mai) consolidou a visão agêntica da Anthropic: SpaceX Colossus 1 (300+ MW compute), Managed Agents com Multiagent Orchestration + Outcomes + Dreaming, e 10 templates financeiros prontos. OpenClaw foi reinstaurado com agentes de terceiros consumindo crédito do Agent SDK separado. Billing split acontece em 15/jun.

## 🔬 Detalhes

### Code with Claude SF 2026 (6/mai)
- Evento presencial + London (19/mai) + Tokyo (10/jun)
- **SpaceX Colossus 1**: parceria de compute 300+ megawatts com a SpaceX
- **Vercept adquirida** pela Anthropic (detalhes não divulgados)
- **10 templates de agentes financeiros** como plugins Cowork e Code + cookbook Managed Agents

### Managed Agents — Três Novas Features
- **Multiagent Orchestration**: escala frota de agentes para dividir tarefas complexas
- **Outcomes**: define critérios de sucesso para que agentes iterem e melhorem sozinhos
- **Dreaming**: Claude recorda sessões anteriores e constrói sobre trabalho passado (memória cross-session)

### OpenClaw Reinstaurado
- Agentes de terceiros e `claude -p` voltaram a funcionar em planos de assinatura
- Porém, agora consomem do crédito separado do Agent SDK (não do limite interativo)
- Estratégia: separar billing interativo de billing agêntico

### Agent SDK — Billing Split (15/jun/2026)
- Pro: $20/mês crédito separado
- Max 5x: $100/mês
- Max 20x: $200/mês
- Metered em tarifas full-API, sem rollover

### Cache Diagnostics — Beta Público
- `diagnostics.previous_message_id` na requisição
- API retorna `cache_miss_reason` mostrando onde o prefixo divergiu
- Facilita debug de prompt caching e redução de custos

## 🔗 Conexões
- [[Pesquisa - 2026-05-25 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-25 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-24 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Code with Claude SF 2026: What Anthropic Actually Shipped](https://blakecrosley.com/blog/code-with-claude-sf-2026-recap)
- [Code with Claude 2026: Managed Agents, Proactive Workflows — InfoQ](https://www.infoq.com/news/2026/05/code-with-claude/)
- [Anthropic reinstates OpenClaw and third-party agent usage — VentureBeat](https://venturebeat.com/technology/anthropic-reinstates-openclaw-and-third-party-agent-usage-on-claude-subscriptions-with-a-catch)
- [Anthropic splits billing: Agent SDK gets separate credit pools — The New Stack](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [Anthropic June 15 Billing Change — Codersera](https://codersera.com/blog/anthropic-june-2026-billing-change-claude-code/)

## 🚧 Lacunas
- Detalhes da aquisição da Vercept (valor, equipe, produto)
- Data GA do Dreaming (ainda Research Preview?)
- Preço exato por hora do Managed Agents Orchestration (acima de $0,08/h?)
