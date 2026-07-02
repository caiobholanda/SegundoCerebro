---
tipo: pesquisa
status: ativo
criado: 2026-07-02
atualizado: 2026-07-02
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 2 de julho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-26 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-07-02

## Claude Sonnet 5 — Novo Modelo Padrão (lançado 30/jun)

- Preço introdutório: **$2/MTok input / $10/MTok output** (válido até 31/ago/2026)
- Após 31/ago: $3/$15 MTok
- Contexto nativo: **1M tokens** | output máximo: **128k tokens**
- Posicionado como o Sonnet mais agêntico até agora — planos, uso de ferramentas (browser, terminal), execução autônoma
- Modelo padrão nos planos Free, Pro, Max, Team e Enterprise
- Disponível: API Claude, AWS Bedrock, Google Cloud Vertex AI
- Score agentic coding: **63,2%** em benchmarks

## Fable 5 e Mythos 5 — Desbloqueados

- Governo EUA retirou controles de exportação que mantinham Fable 5 e Mythos 5 bloqueados por ~3 semanas
- Fable 5 volta disponível a partir de **1º de julho** no Claude Platform, Claude.ai, Claude Code e Claude Cowork
- Retorna com: classificador de segurança reforçado + novo framework da indústria para avaliar jailbreaks

## Depreciações Ativas

- **Fast Mode para Opus 4.7**: depreciado, removido em **24/jul/2026**
  - Após remoção: requisições com `speed: "fast"` para `claude-opus-4-7` retornarão erro
- `claude-sonnet-4` e `claude-opus-4` originais: desativados desde 15/06 (chamadas falham)

## CLI ant

- Nova CLI para interação com a API do Claude via terminal
- Integração nativa com Claude Code
- Versionamento de recursos da API em arquivos YAML

## Billing Split — Vigente desde 15/06

- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros em crédito separado
- Pro $20/mês | Max5x $100/mês | Max20x $200/mês (não acumula)
- Recusas sem output (`stop_reason: "refusal"`) não são cobradas

## Tabela de Preços Atualizada

| Tier | Modelo | Input / Output (MTok) |
|------|--------|-----------------------|
| Mythos-class | claude-fable-5 | $10 / $50 |
| Flagship | claude-opus-4-8 | $5 / $25 |
| Balanced | claude-sonnet-5 (promo até 31/ago) | $2 / $10 |
| Balanced | claude-sonnet-5 (após 31/ago) | $3 / $15 |
| Fast | claude-haiku-4-5 | $1 / $5 |

## Tiers Consolidados (desde 26/jun)

- **Start / Build / Scale** — consolidação dos planos de API anteriores
