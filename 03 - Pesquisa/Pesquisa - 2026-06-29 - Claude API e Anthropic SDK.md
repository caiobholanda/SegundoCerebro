---
tipo: pesquisa
criado: 2026-06-29
atualizado: 2026-06-29
pergunta-central: Quais são as principais novidades da Claude API e Anthropic SDK em junho de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, claude-api]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-06-29

## ❓ Pergunta central
Quais são as principais novidades da Claude API e Anthropic SDK em junho de 2026?

## 🎯 Síntese
Junho foi o mês mais denso de lançamentos da Anthropic: Fable 5 + Mythos 5 (09/06), Billing Split (15/06), Opus 4.8 com 1M tokens default, WIF para eliminar API keys estáticas, self-hosted sandboxes em beta público e Dynamic Workflows chegando ao API/Bedrock/Vertex/Foundry. Modelos Sonnet 4 e Opus 4 originais foram deprecados (chamadas retornam erro).

## 🔬 Detalhes

### Novos Modelos
- **Claude Fable 5** (09/06): modelo mais capaz em release pública; $10/$50 MTok; fallback automático para Opus 4.8 em <5% sessões
- **Claude Mythos 5** (09/06): release restrita Project Glasswing; $10/$50 MTok; foco em pesquisa científica avançada
- **Claude Opus 4.8**: 1M tokens como contexto padrão (sem header beta); backbone do fallback de segurança do Fable 5

### Deprecações
- Claude Sonnet 4 e Claude Opus 4 originais **deprecados em 15/06/2026**
- Chamadas a esses modelos agora retornam erro (não fallback silencioso)

### Billing Split — 15/06
- Agent SDK, `claude -p`, GitHub Actions, apps terceiros (OpenClaw, Conductor, Zed, Jean) saem do subscription → pool separado de créditos
- Pro $20/mês, Max5x $100/mês, Max20x $200/mês (não acumula entre meses)
- Fatura de uso headless separada da conversa interativa
- Context engineering tornou-se obrigatório em workflows agênticos

### Sem Cobrança por Recusas
- API não cobra quando `stop_reason: "refusal"` sem output gerado (ativo desde 02/06)

### Workload Identity Federation (WIF)
- Compatível com qualquer OIDC-compliant provider
- Substitui API keys estáticas por credenciais de curta duração com escopo por request
- Cobre todos os endpoints da Claude API

### Self-Hosted Sandboxes (beta público)
- Execução de ferramentas migra para infraestrutura própria do cliente
- Agent loop permanece na Anthropic; políticas de rede e segurança do cliente se aplicam
- Enables compliance corporativo em ambientes restritos

### Dynamic Workflows na API
- Suporte em research preview: Claude Code CLI, Desktop, VS Code (Pro/Max/Team/Enterprise)
- Disponível também em Amazon Bedrock, Vertex AI e Microsoft Foundry
- Orquestra até 1.000 subagentes em paralelo via scripts JavaScript auto-gerados

### Server-Side Fallback
- Header `server-side-fallback-2026-06-01`: recusas retentam no mesmo round-trip com modelo alternativo
- Reduz necessidade de retry logic no cliente

### MCP Tunnels (Research Preview)
- Acesso a redes privadas via MCP sem exposição pública
- Managed Connectors MCP iniciando com Okta

### Outros
- Claude Tag no Slack (Team/Enterprise beta)
- Rate Limits API revisados para acomodar Dynamic Workflows

## 🔗 Conexões
- [[Pesquisa - 2026-06-29 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-29 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-06-29 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-28 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Latest Anthropic API Release Notes June 2026 — fazm.ai](https://fazm.ai/t/latest-anthropic-api-release-notes-june-2026)
- [Claude Fable 5 and Mythos 5 — Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Agent SDK Credits 2026 — Totalum](https://www.totalum.app/blog/claude-agent-sdk-credits-2026)
- [Claude Credit Overhaul 2026 — Digital Applied](https://www.digitalapplied.com/blog/anthropic-claude-credit-overhaul-june-15-2026)
- [Claude Fable 5 on AWS — Amazon Web Services](https://aws.amazon.com/blogs/aws/anthropic-claude-fable-5-on-aws-mythos-class-capabilities-with-built-in-safeguards-now-available/)

## 🚧 Lacunas
- Detalhes do pricing pós-billing split para Bedrock e Vertex AI
- Roadmap do Project Glasswing para acesso mais amplo ao Mythos 5
- SLA garantido para self-hosted sandboxes em produção
