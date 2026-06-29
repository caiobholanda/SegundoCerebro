---
tipo: pesquisa
criado: 2026-06-28
atualizado: 2026-06-28
pergunta-central: Quais são as principais atualizações da Claude API e Anthropic SDK em junho de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, claude-api, ia]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-06-28

## ❓ Pergunta central
Quais são as principais atualizações da Claude API e Anthropic SDK em junho de 2026?

## 🎯 Síntese
Junho/2026 traz Claude Fable 5 (classe Mythos) com capacidades que excedem qualquer modelo anterior da Anthropic. Descontinuação de Sonnet 4 e Opus 4 base. Claude Platform chega à AWS com faturamento IAM nativo. Mudança de faturamento do Agent SDK para pool separado foi anunciada (15/jun) e pausada no mesmo dia. Sandboxes auto-hospedados em beta público.

## 🔬 Detalhes

### Claude Fable 5 (Classe Mythos)
- Lançado em junho de 2026
- Capacidades excedem todos os modelos Anthropic anteriores
- Disponível na Claude API e planos Enterprise baseados em consumo
- Desempenho excepcional em: engenharia de software, trabalho de conhecimento, visão e pesquisa científica

### Descontinuações
- Claude Sonnet 4 → atualizar para **Claude Sonnet 4.6**
- Claude Opus 4 → atualizar para **Claude Opus 4.8**
- Recomendação: migrar pipelines para versões .6 e .8 o quanto antes

### Claude Platform na AWS
- Claude API disponível com faturamento e autenticação IAM da AWS
- Acesso a: Messages API, Files API, Message Batches API, Claude Managed Agents
- Simplifica adoção enterprise para clientes já na AWS

### Mudança de Faturamento Agent SDK (Pausada)
- Anunciado: uso do Agent SDK moveria para pool de crédito mensal separado a partir de 15/jun
- Pausado no próprio dia 15/jun — implementação adiada sem nova data
- Impacto: builders com uso intenso de agentes devem monitorar comunicados oficiais

### Requisições de Recusa Sem Custo
- Requests com `stop_reason: "refusal"` que não geram output não são mais faturados
- Redução de custos em aplicações com filtragem de conteúdo

### Sandboxes Auto-Hospedados (Beta Público)
- Execução de ferramentas na infraestrutura do cliente; loop do agente permanece na Anthropic
- Ver detalhes em [[Pesquisa - 2026-06-28 - Claude Code — CLI e agentes]]

## 🔗 Conexões
- [[Pesquisa - 2026-06-28 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-28 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-06-28 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-05-25 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Updates by Anthropic — June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Latest Anthropic API release notes — June 2026 — fazm.ai](https://fazm.ai/t/latest-anthropic-api-release-notes-june-2026)
- [Claude Fable 5 and Claude Mythos 5 — Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Credit Overhaul 2026: Anthropic Pauses the June 15 Change — Digital Applied](https://www.digitalapplied.com/blog/anthropic-claude-credit-overhaul-june-15-2026)
- [Claude Developer Platform Updates — June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-developer-platform)

## 🚧 Lacunas
- Nova data para implementação do faturamento separado do Agent SDK
- Benchmark comparativo Claude Fable 5 vs GPT-5.2
- Documentação de migração Sonnet 4 → 4.6 e Opus 4 → 4.8
