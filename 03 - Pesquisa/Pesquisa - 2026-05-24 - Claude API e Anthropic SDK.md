---
tipo: pesquisa
criado: 2026-05-24
atualizado: 2026-05-24
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-05-24

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?

## 🎯 Síntese
Anthropic avança em autonomia agêntica com Dreaming (memória entre sessões de agentes), Cache Diagnostics em beta público, e billing split do Agent SDK a partir de 15/jun. Opus 4.7 é agora GA e padrão no Max/Team Premium com novo nível de esforço `xhigh`.

## 🔬 Detalhes

### Claude Opus 4.7 — GA
- Disponível publicamente com foco em codificação e tarefas complexas de longa duração
- Visão aprimorada: processa imagens em maior resolução
- Agora padrão no Max e Team Premium
- Novo nível de esforço `xhigh` — configuração recomendada para a maioria do trabalho de codificação

### Cache Diagnostics — Beta Público
- Nova feature: passar `diagnostics.previous_message_id` na requisição
- API retorna `cache_miss_reason` explicando onde o prefixo do cache divergiu do turno anterior
- Facilita debug de misses e otimização de custos com prompt caching

### Agent SDK — Billing Split (15/jun/2026)
- A partir de 15/06: uso do Agent SDK e `claude -p` em planos de assinatura consome créditos separados
- Pro: crédito mensal separado do uso interativo
- Managed Agents expande: dreaming, orquestração multiagente, outcomes, webhooks

### Dreaming — Memória entre Agentes
- Agente que termina uma sessão deixa "notas" para o próximo agente que pegar o mesmo codebase
- Memória persistente entre sessões sem intervenção humana

### Rate Limits Dobrados
- Limites de cinco horas dobrados para todos os planos Pro, Max, Team e Enterprise
- Redução de horários de pico removida nos planos Pro e Max

### Novos Conectores Managed Agents
- 10 templates de agentes para o setor financeiro
- Integrações Microsoft 365: Excel, PowerPoint, Word (Outlook em breve)

## 🔗 Conexões
- [[Pesquisa - 2026-05-24 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-24 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-23 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Anthropic Release Notes — May 2026](https://releasebot.io/updates/anthropic)
- [Claude Platform API Docs](https://docs.anthropic.com/pt/release-notes/api)
- [Agent SDK Overview](https://code.claude.com/docs/en/agent-sdk/overview)
- [Anthropic Agent SDK Credits — The New Stack](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [Introducing Claude Opus 4.7](https://www.anthropic.com/news/claude-opus-4-7)

## 🚧 Lacunas
- Preço exato do crédito mensal do Agent SDK por plano (Pro/Max/Team)
- Data GA do Dreaming (ainda Research Preview?)
- Quais webhooks estão disponíveis nos Managed Agents outcomes
