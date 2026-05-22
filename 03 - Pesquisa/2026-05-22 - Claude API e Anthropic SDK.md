---
tipo: pesquisa
criado: 2026-05-22
atualizado: 2026-05-22
pergunta-central: Quais são as novidades da Claude API e do ecossistema Anthropic na semana de 22/05/2026?
relacionado-a: [Pesquisa - 2026-05-20 - Claude API, Pesquisa - 2026-05-21 - Claude API e Anthropic SDK]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - 2026-05-22 - Claude API e Anthropic SDK

## ❓ Pergunta central
Quais são as novidades da Claude API e do ecossistema Anthropic na semana de 22/05/2026?

## 🎯 Síntese (3-5 linhas)
O ecossistema Anthropic continua se consolidando após a semana do Code with Claude London (19/05). Claude Opus 4.7 está disponível em todos os canais (API, Bedrock, Vertex AI, Microsoft Foundry) mantendo o preço do Opus 4.6 ($5/$25 por MTok). Os recursos lançados como MCP Tunnels e Self-Hosted Sandboxes entraram em fase de adoção. A aquisição da Stainless (~$300M) continua sendo o movimento mais impactante da semana anterior, forçando OpenAI e Google a reconstruírem suas toolchains de SDK.

## 🔬 Detalhes

### Claude Opus 4.7 — Status atual
- Disponível em: API direta, Amazon Bedrock, Google Cloud Vertex AI, Microsoft Foundry
- Preço: $5/MTok input, $25/MTok output (mesmo do Opus 4.6)
- Fast Mode: $30/MTok input, $150/MTok output (2,5× velocidade)
- Tokenizador +35% tokens que modelos anteriores para o mesmo texto

### Files API, Skills e MCP Connector (betas ativos)
- **Files API (beta)**: upload e referência de documentos em conversas
- **Skills (beta)**: ensina ao Claude melhores práticas e comportamentos customizados
- **MCP Connector (beta)**: conecta Claude a qualquer servidor MCP remoto sem escrever código cliente

### Claude Managed Agents — novidades recentes
- **Self-Hosted Sandboxes (public beta)**: execução de ferramentas na infra do cliente (Cloudflare, Daytona, Modal, Vercel) — resolve bloqueador enterprise de dados sensíveis
- **MCP Tunnels (research preview)**: rota agentes a servidores MCP privados sem expor à internet pública; gateway com conexão outbound encriptada
- **Cache Diagnostics (public beta)**: API reporta `cache_miss_reason` via `diagnostics.previous_message_id`

### Limites Claude Code ampliados
- +50% limites semanais para planos Pro, Max, Team e Enterprise (válido até 13/07/2026)
- Duplicação de sessões de 5h para assinantes pagos
- Eliminação de reduções dinâmicas de uso em horários de pico para planos pagos

### Claude Platform on AWS
- API disponível com billing AWS e autenticação IAM
- Acesso a: Messages API, Files API, Message Batches API, Managed Agents

## 🔗 Conexões
- [[2026-05-21 - Claude API e Anthropic SDK]]
- [[2026-05-22 - Claude Code — CLI e agentes]]
- [[2026-05-22 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [Claude Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic acquires Stainless](https://www.anthropic.com/news/anthropic-acquires-stainless)
- [Claude Code Weekly Limits +50%](https://pasqualepillitteri.it/en/news/2494/claude-code-weekly-limits-50-percent-anti-codex-anthropic-2026)
- [Introducing Claude Opus 4.7](https://www.anthropic.com/news/claude-opus-4-7)
- [Anthropic enhances Claude Managed Agents — 9to5Mac](https://9to5mac.com/2026/05/19/anthropic-enhances-claude-managed-agents-with-two-new-privacy-and-security-features/)
- [Guia de preços Anthropic API](https://www.doit.com/blog/anthropic-api-pricing)

## 🚧 Lacunas
- Data de GA do MCP Tunnels (atualmente research preview)
- Pricing dos Self-Hosted Sandboxes comparado ao sandbox gerenciado
- Roadmap de integração da Stainless dentro da Anthropic pós-aquisição
