---
tipo: pesquisa
criado: 2026-05-28
atualizado: 2026-05-28
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em 28/mai/2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-05-28

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em 28/mai/2026?

## 🎯 Síntese
Semana marcada por expansão de segurança empresarial: 28 novas integrações com plataformas de compliance e segurança (CrowdStrike, Palo Alto, Okta, Cloudflare etc.). Claude Compliance API liberada para equipes de TI/segurança. Escritório de Seul abriu em 26/mai. Anthropic confirma que Claude permanecerá sem anúncios. Webinar de segurança realizado hoje (28/mai).

## 🔬 Detalhes

### 28 Integrações de Segurança e Compliance
- Novas integrações com: CrowdStrike, Palo Alto Networks, Microsoft, Okta, Zscaler, Netskope, Cloudflare, Fortinet, Wiz
- **Claude Compliance API**: acesso programático a logs de conversas e eventos de atividade do Claude Enterprise
- Objetivo: tornar Claude gerenciável dentro de ambientes corporativos regulados
- Fonte: Anthropic + SecurityWeek + Help Net Security (25/mai/2026)

### Claude permanece sem publicidade
- Anthropic declarou que incentivos publicitários são incompatíveis com um assistente genuinamente útil
- Estratégia de expansão de acesso sem comprometer confiança do usuário

### Expansão de plataforma
- Limites mais altos de Claude Code e Opus API para todos os planos
- Claude Managed Agents com: Dreaming, Multiagent Orchestration, Outcomes, Webhooks
- PwC anunciou parceria expandida com Anthropic para automação de workflows internos

### Abertura do escritório de Seul
- KiYoung Choi nomeado Representative Director of Korea
- Escritório abriu em 26/mai/2026

### Modelo atual consolidado
| Modelo | Input (MTok) | Output (MTok) |
|--------|-------------|---------------|
| Haiku 4.5 | $1 | $5 |
| Sonnet 4.6 | $3 | $15 |
| Opus 4.7 | $5 | $25 |
| Fast Mode Opus 4.7 | $30 | $150 |

- Cache reads: 0,1× base (90% desconto)
- Cache 1h: 2× base | Cache 5min: 1,25× base
- Batch: 50% desconto
- Opus 4.7: 1M tokens de contexto, suporte a imagens até 2576px/3,75MP

### Billing Split Agent SDK — lembrete urgente
- Efetivo em 15/jun/2026
- Claim por e-mail necessário antes de 15/jun para receber crédito
- Pro: $20/mês | Max 5x: $100/mês | Max 20x: $200/mês

## 🔗 Conexões
- [[Pesquisa - 2026-05-28 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-28 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-05-27 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Anthropic expands Claude enterprise security — 28 integrations](https://www.securityweek.com/anthropic-expands-claudes-enterprise-security-reach-with-28-new-integrations/)
- [Anthropic adds 28 security and compliance integrations](https://www.helpnetsecurity.com/2026/05/25/anthropic-security-compliance-integrations-claude/)
- [PwC expanded partnership with Anthropic](https://www.anthropic.com/news/pwc-expanded-partnership)
- [Anthropic Release Notes May 2026](https://releasebot.io/updates/anthropic)
- [Claude AI Complete Guide 2026](https://www.startuphub.ai/ai-news/reviews/2026/claude-ai-complete-guide-2026)

## 🚧 Lacunas
- Detalhes técnicos da Claude Compliance API (endpoints, rate limits, retenção de logs)
- Escopo exato da parceria PwC (quantos usuários, quais workflows)
- Data de GA dos webhooks nos Managed Agents
