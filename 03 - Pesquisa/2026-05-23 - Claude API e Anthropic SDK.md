---
tipo: pesquisa
criado: 2026-05-23
atualizado: 2026-05-23
pergunta-central: Quais são as novidades mais recentes da Claude API e do Anthropic SDK em maio de 2026?
relacionado-a: [Claude Code — CLI e agentes, Economia de Tokens em LLMs]
tags: [pesquisa, ia, dev, claude, anthropic]
---

# Pesquisa - Claude API e Anthropic SDK (2026-05-23)

## ❓ Pergunta central
Quais são as novidades mais recentes da Claude API e do Anthropic SDK em maio de 2026?

## 🎯 Síntese
Claude Opus 4.7 está em GA com preço mantido ($5/$25 MTok). A Anthropic expandiu a plataforma com Self-Hosted Sandboxes (beta público), CLI `ant` para a API, e nova separação de billing para uso via Agent SDK a partir de 15/jun. Managed Agents ganhou dreaming, orquestração multiagente, outcomes e webhooks.

## 🔬 Detalhes

### Claude Opus 4.7
- Disponível via `claude-opus-4-7`; preço mantido: $5 input / $25 output por MTok
- Melhoria notável em engenharia de software avançada (tarefas mais difíceis)

### Self-Hosted Sandboxes (beta público)
- Mantém arquivos sensíveis, pacotes e serviços na **sua** infraestrutura
- Loop do agente roda na infra da Anthropic; execução de ferramentas migra para seu ambiente
- Útil para dados sigilosos em pipelines agentic

### CLI `ant`
- Cliente de linha de comando direto para a Claude API
- Integração nativa com Claude Code
- Versionamento de recursos de API em arquivos YAML

### Billing split — 15 de junho de 2026
- Assinaturas Claude divididas em dois grupos: **uso próprio** (tools de primeira parte) vs **Agent SDK** (terceiros)
- Crédito mensal Agent SDK: Pro = $20 | Max 5× = $100 | Max 20× = $200
- OpenClaw e terceiros foram reinstaurados, mas consomem crédito Agent SDK separado

### Managed Agents — novos recursos
- Dreaming (processamento background entre conversas)
- Orquestração multiagente com outcomes e webhooks
- Limites de API elevados para Claude Code e Opus

### Conectores MCP
- 20+ novos conectores MCP lançados
- 12 plug-ins de área de prática (advocacia — pesquisa, contratos, discovery, gestão de casos)

## 🔗 Conexões
- [[2026-05-23 - Claude Code — CLI e agentes]]
- [[2026-05-23 - Economia de Tokens em LLMs]]
- [[2026-05-22 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Anthropic Release Notes — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude API Docs — Release Notes](https://docs.anthropic.com/pt/release-notes/api)
- [Anthropic Agent SDK Billing — The New Stack](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [OpenClaw reinstaurado — VentureBeat](https://venturebeat.com/technology/anthropic-reinstates-openclaw-and-third-party-agent-usage-on-claude-subscriptions-with-a-catch)

## 🚧 Lacunas
- Quais workloads específicos se beneficiam mais do Self-Hosted Sandboxes vs sandbox gerenciado?
- Detalhes de precificação do Managed Agents dreaming ($0,08/h ainda válido?)
- Quais os 20 novos conectores MCP disponíveis?
