---
tipo: pesquisa
status: ativo
criado: 2026-05-18
atualizado: 2026-05-18
tags: [ia, dev, claude, anthropic, api]
pergunta-central: Quais são as principais mudanças e novidades da Claude API em maio de 2026 — Files API, billing split e Claude Platform no AWS?
relacionado-a: [Claude Code, Economia de Tokens, Inteligencia Artificial]
---

# Pesquisa — Claude API (2026-05-18)

## 🎯 Síntese

A semana de 18/05 consolida mudanças estruturais na API: o **billing split** de 15/06 separa uso programático de subscriptions interativas, a **Claude Platform no AWS** traz acesso via IAM e billing unificado, e o **Opus 4.7** chega como default do Fast Mode. As novas APIs (Files, Skills, MCP Connector) tornam o ecossistema mais completo sem exigir infraestrutura própria.

## 🔬 Detalhes

### Files API (beta)
- Upload e referência de documentos persistentes entre conversas
- Elimina re-envio de contexto em sessões multi-turn
- Disponível via Messages API, Batches e Managed Agents

### Skills (beta)
- Ensina Claude boas práticas para resultados consistentes
- Combinável com Agent SDK para comportamentos customizados

### MCP Connector (beta)
- Conecta Claude a qualquer servidor MCP remoto sem escrever código client
- Reduz atrito para integrar ferramentas externas em pipelines

### Claude Platform no AWS
- API Anthropic-managed com billing AWS e autenticação IAM
- Acesso completo: Messages API, Files API, Batches API, Managed Agents, code execution
- Simplifica compliance e gestão de custos para empresas no ecossistema AWS

### Billing Split — 15/06/2026
- Uso programático (API/SDK) ganha budget dedicado separado da subscription interativa
- Subscription limits reservados apenas para uso no produto Claude (web/app)
- Impacto direto em projetos que misturam uso pessoal e programático no mesmo plano

### Managed Agents — Dreaming + Multiagent Orchestration
- **Dreaming**: agente revisa sessões passadas para detectar padrões e auto-melhorar
- **Multiagent Orchestration**: agente líder quebra tarefas e delega a especialistas com modelo/prompt/tools próprios
- Preço: $0,08/hora por agente ativo

### Opus 4.7 como default do Fast Mode
- Fast Mode agora usa Opus 4.7 por padrão (antes Opus 4.6)
- Preço Fast Mode Opus 4.7: $30 input / $150 output por MTok — uso só justificado em latência crítica

## 🔗 Conexões
- [[Pesquisa - 2026-05-17 - Claude API]]
- [[Pesquisa - 2026-05-18 - Economia de Tokens]]
- [[Pesquisa - 2026-05-18 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-18 - Inteligencia Artificial]]

## 📚 Fontes
- [Claude Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic tosses agents into the API billing pool — The Register](https://www.theregister.com/ai-ml/2026/05/14/anthropic-tosses-agents-into-the-api-billing-pool/5240748)
- [Anthropic Launches Claude Platform on AWS — InfoQ](https://www.infoq.com/news/2026/05/anthropic-claude-aws/)
- [Agent SDK billing split June 2026 — Apiyi.com](https://help.apiyi.com/en/anthropic-claude-subscription-agent-sdk-billing-split-june-2026-en.html)
- [Anthropic updates Claude Managed Agents — 9to5Mac](https://9to5mac.com/2026/05/07/anthropic-updates-claude-managed-agents-with-three-new-features/)

## 🔄 Complemento (pesquisa vespertina)

### Advisor Tool (beta)
- Ferramenta de consultoria integrada à API
- Header necessário: `anthropic-beta: advisor-tool-2026-03-01`
- Detalhes técnicos ainda em beta fechado — comportamento exato não documentado publicamente

### Claude for Small Business
- Conectores prontos sem código: QuickBooks, PayPal, HubSpot, Canva, Docusign, Google Workspace, Microsoft 365
- Workflows para PMEs que querem usar Claude sem infraestrutura própria
- Posicionamento: competidor direto ao ChatGPT Enterprise para empresas menores

### Rate Limits — confirmação do dobro
- Rate limits de 5 horas do Claude Code **dobrados** para planos Pro, Max, Team e Enterprise
- Afeta tanto Claude Code quanto API Opus em enterprise scale
- Elimina gargalos em horário de pico para contas pagos

### Preços Atuais Claude (mai/2026)

| Modelo | Input ($/MTok) | Output ($/MTok) | Cache Read |
|--------|---------------|-----------------|------------|
| Opus 4.7 | $5 | $25 | $0,50 |
| Opus 4.7 Fast Mode | $30 | $150 | — |
| Sonnet 4.6 | $3 | $15 | $0,30 |
| Haiku 4.5 | $0,80 | $4 | $0,08 |

> Cache reads = 0,1× o preço base de input (desconto de 90%)

## 🚧 Lacunas
- Como o billing split impacta projetos que usam API via Bedrock/Vertex em vez de platform.claude.com?
- A Files API tem limite de tamanho/retenção por arquivo?
- O Skills beta é disponível para todos os planos ou só Enterprise?
- O Advisor Tool está em beta fechado? Como solicitar acesso?
