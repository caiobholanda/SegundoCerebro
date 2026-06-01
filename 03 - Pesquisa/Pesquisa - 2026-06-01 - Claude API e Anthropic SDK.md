---
tipo: pesquisa
status: em-andamento
criado: 2026-06-01
atualizado: 2026-06-01
tags: [pesquisa, claude, anthropic, api, automatico]
related: ["[[Pesquisa - 2026-05-31 - Claude API e Anthropic SDK]]"]
pergunta-central: "Quais são as principais novidades na Claude API e Anthropic SDK em junho de 2026?"
relacionado-a: [claude-api, anthropic]
---

# Claude API e Anthropic SDK — 2026-06-01

## Destaque principal

**Claude Opus 4.8** lançado em 28/05/2026 — continua como o modelo de referência.

### Novidades da API (semana de 26/05–01/06)

- **System Instructions no array de mensagens**: API de Mensagens agora aceita entradas de sistema dentro do array de mensagens. Permite atualizar instruções do Claude durante a tarefa sem quebrar o cache de prompt.
- **Controle de Esforço (Effort Control)**: usuários escolhem o nível de esforço por request. Esforço alto = mais pensamento e profundidade; esforço baixo = resposta mais rápida. Configurável via parâmetro na requisição.
- **Fast Mode Opus 4.8**: $10/$50 por MTok (3× mais barato que versões anteriores do Fast Mode).
- **Dynamic Workflows**: orquestração de subagentes em escala — múltiplos agentes concorrentes a partir de um único script. Disponível para Max/Team/Enterprise.
- **Preços regulares**: $5 input / $25 output por MTok (sem alteração desde Opus 4.7).

### Disponibilidade

- claude.ai, Claude API direta
- AWS Bedrock, Google Cloud Vertex AI, Microsoft Azure Foundry

### Modelo padrão por plano

| Plano | Modelo padrão |
|-------|--------------|
| Max | Claude Opus 4.8 |
| Team Premium | Claude Opus 4.8 |
| Enterprise pay-as-you-go | Claude Opus 4.8 |
| API Anthropic | Claude Opus 4.8 |

## O que mudou desde 2026-05-31

- Principais novidades do Opus 4.8 já consolidadas (lançado 28/05)
- System Instructions mid-conversation = nova arquitetura para agentes de longa duração
- Fast Mode mais acessível financeiramente

## Links relacionados

- [[Pesquisa - 2026-05-31 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-30 - Claude API e Anthropic SDK]]

## Fontes

- [Introducing Claude Opus 4.8 — Anthropic](https://www.anthropic.com/news/claude-opus-4-8)
- [Release notes — Claude Help Center](https://docs.anthropic.com/pt/release-notes/claude-apps)
- [Claude Opus 4.8 — Exame](https://exame.com/inteligencia-artificial/claude-opus-4-8-e-lancado-o-que-muda-no-novo-modelo-de-ia-da-anthropic/)
