---
tipo: pesquisa
status: em-andamento
criado: 2026-06-10
atualizado: 2026-06-10
tags: [ia, dev, claude-api]
pergunta-central: Quais são as novidades da API Claude e Anthropic SDK em 2026-06-10?
relacionado-a: Claude Code
related: ["[[Pesquisa - 2026-06-09 - Claude API e Anthropic SDK]]", "[[Pesquisa - 2026-06-10 - Claude Code — CLI e agentes]]"]
---

# Claude API e Anthropic SDK — 2026-06-10

## 🔥 Destaque: Claude Fable 5 + Mythos 5 (lançado 09/06/2026)

### Claude Fable 5 — primeiro modelo Mythos disponível ao público
- Lançado em 09/06/2026 — modelo mais capaz já disponibilizado publicamente pela Anthropic
- Compartilha arquitetura com Claude Mythos 5 com adição de classificadores de segurança
- Classificadores filtram 4 categorias: cibersegurança, biologia, química e destilação de modelos
- +95% das sessões **não** acionam os classificadores (redirecionam para Opus 4.8)
- Benchmarks top em engenharia de software, visão computacional e investigação científica

### Preços e Disponibilidade
| Plano | Custo |
|---|---|
| API (input) | $10/MTok |
| API (output) | $50/MTok |
| Pro/Max/Team/Enterprise | Grátis até 22/06/2026, depois consome créditos |

- Disponível: Claude API, Claude Platform on AWS, **Amazon Bedrock**, Vertex AI, Microsoft Foundry

### Claude Mythos 5
- Sem classificadores de segurança — disponível apenas para parceiros Glasswing (EAP)
- Mesmo preço: $10/$50 MTok

### Política de Retenção (Mythos-class)
- Retenção obrigatória de **30 dias** para todo tráfego Mythos
- Dados **não** usados para treinamento; deletados após o período

## Contexto Corporativo
- Anthropic em processo pré-IPO avaliado em **$965 bilhões** (reportado em 10/06)
- Lançamento do Fable 5 estrategicamente posicionado antes do IPO

## Modelos Ativos na API

| Modelo | Status | Preço (input/output) |
|---|---|---|
| Claude Fable 5 | **NOVO** (GA) | $10/$50 MTok |
| Claude Mythos 5 | EAP (Glasswing) | $10/$50 MTok |
| Claude Opus 4.8 | GA (default alto esforço) | $5/$25 MTok |
| Claude Opus 4.1 | Deprecated — retirement **05/08/2026** | — |

## Features API em Status

| Feature | Status |
|---|---|
| Files API | beta |
| Skills | beta |
| MCP Connector | beta |
| Advisor Tool | beta |
| Apple Foundation Models | novo |
| Self-Hosted Sandboxes | beta pública |
| Prompt Caching | GA |

## Billing Change — 15/06/2026 (ATIVO)
- Agent SDK, `claude -p`, Claude Code GitHub Actions fora da cota de subscription
- Crédito mensal separado (Pro $20, Max 5x $100, Max 20x $200)

## Fontes
- [Anthropic lança Claude Fable 5 e Mythos 5 — MacMagazine](https://macmagazine.com.br/post/2026/06/09/anthropic-lanca-modelos-avancados-fable-5-e-mythos-5-para-o-claude/)
- [Claude Fable 5 — TechCrunch](https://techcrunch.com/2026/06/09/anthropic-released-claude-fable-5-its-most-powerful-model-publicly-days-after-warning-ai-is-getting-too-dangerous/)
- [Introducing Claude Fable 5 — Anthropic Docs](https://platform.claude.com/docs/en/about-claude/models/introducing-claude-fable-5-and-claude-mythos-5)
- [Claude Fable 5 on AWS Bedrock](https://aws.amazon.com/blogs/aws/anthropic-claude-fable-5-on-aws-mythos-class-capabilities-with-built-in-safeguards-now-available/)
- [Anthropic pré-IPO $965bi — Dataconomy](https://dataconomy.com/2026/06/10/anthropic-claude-fable-5-ipo-965-billion/)
- [Claude Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
