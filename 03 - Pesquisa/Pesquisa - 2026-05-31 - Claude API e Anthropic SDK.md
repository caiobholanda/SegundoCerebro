---
tipo: pesquisa
criado: 2026-05-31
atualizado: 2026-05-31
pergunta-central: Quais são as novidades da Claude API e modelos Anthropic em maio/2026?
relacionado-a: [Claude Code, Economia de Tokens]
related: ["[[Pesquisa - 2026-05-30 - Claude API e Anthropic SDK]]"]
tags: [pesquisa, claude-api, anthropic]
---

# Pesquisa - Claude API e Anthropic SDK (2026-05-31)

## ❓ Pergunta central
O que há de novo na Claude API, modelos e infraestrutura Anthropic nesta semana?

## 🎯 Síntese
Claude Opus 4.8 lançado em 28/05/2026 com melhorias em codificação agente (64,3%→69,2%) e raciocínio multidisciplinar (54,7%→57,9%). Preços regulares mantidos ($5/$25 MTok). Fast Mode 3× mais barato que versões anteriores ($10/$50). Novos recursos: Effort Control, Dynamic Workflows (research preview), disponível em AWS, Google Cloud Vertex AI e Microsoft Foundry.

## 🔬 Detalhes

### Claude Opus 4.8 (lançado 28/05/2026)
- **Codificação agente**: 64,3% → 69,2% (+4,9pp)
- **Raciocínio multidisciplinar**: 54,7% → 57,9% (+3,2pp)
- **4× menos falhas não detectadas** em código próprio
- Sinaliza com mais frequência suas próprias incertezas
- ID na API: `claude-opus-4-8`

### Preços
| Modo | Input | Output |
|------|-------|--------|
| Regular | $5/MTok | $25/MTok |
| Fast Mode | $10/MTok | $50/MTok |

- Fast Mode: 2,5× velocidade normal, 3× mais barato que Fast Mode anterior
- Preço regular = idêntico ao Opus 4.7

### Novos Recursos
- **Effort Control**: define nível de esforço por request (alto/extra/máximo) via claude.ai, Cowork e API
- **Dynamic Workflows** (research preview): orquestração de múltiplos agentes em paralelo com verificação integrada
- Disponível em todos os canais: claude.ai, API, AWS, Google Cloud Vertex AI, Microsoft Foundry

### Contexto de Lançamento
- Lançado menos de 2 meses após Opus 4.7 — ritmo de atualização acelerado
- Resposta direta à pressão competitiva de OpenAI e Google

## 🔗 Conexões
- [[Pesquisa - 2026-05-30 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-31 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-31 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [Exame — Claude Opus 4.8 lançado](https://exame.com/inteligencia-artificial/claude-opus-4-8-e-lancado-o-que-muda-no-novo-modelo-de-ia-da-anthropic/)
- [PC Guia — Opus 4.8 com preços mais baixos](https://www.pcguia.pt/2026/05/anthropic-lanca-o-novo-modelo-de-ia-opus-4-8-com-precos-mais-baixos/)
- [9to5Mac — Anthropic upgrades Claude](https://9to5mac.com/2026/05/28/anthropic-upgrades-claude-with-new-opus-4-8-model-heres-whats-new/)
- [Claude API Pricing Docs](https://platform.claude.com/docs/pt-BR/about-claude/pricing)

## 🚧 Lacunas
- Detalhes técnicos do Dynamic Workflows (limites de agentes por run, preço por hora)
- Comparativo de benchmark completo Opus 4.8 vs GPT-5.3 e Gemini 3.5
- Data de GA do Dynamic Workflows (saída do research preview)
