---
tipo: pesquisa
criado: 2026-05-19
atualizado: 2026-05-19
pergunta-central: Quais são as novidades da Claude API em maio de 2026 e como o Agent SDK muda a forma de construir aplicações?
relacionado-a: [Pesquisa - 2026-05-18 - Claude API, Pesquisa - 2026-05-19 - Claude Code e Claude.ai, Pesquisa - 2026-05-19 - Economia de Tokens]
tags: [pesquisa, ia, dev]
---

# Pesquisa - 2026-05-19 - Claude API

## ❓ Pergunta central
Quais são as novidades da Claude API em maio de 2026 e como o Agent SDK muda a forma de construir aplicações?

## 🎯 Síntese (3-5 linhas)
O ecossistema da Claude API amadureceu significativamente: o Agent SDK saiu do beta e permite construir agentes autônomos usando o mesmo núcleo do Claude Code. O novo CLI `ant` facilita acesso direto à API. A partir de junho de 2026, billing de Agent SDK é separado das assinaturas interativas — importante para quem tem planos Pro/Max. Files API, Skills API e MCP connector completam o conjunto de ferramentas para aplicações de produção.

## 🔬 Detalhes
- **Modelos disponíveis**: Claude Opus 4.7 (mais capaz, raciocínio complexo), Sonnet 4.6, Haiku 4.5 — preços estáveis em $5/$25 por milhão de tokens para Opus
- **Agent SDK (GA)**: permite criar agentes com sandbox seguro, ferramentas integradas e streaming SSE — mesmo núcleo do Claude Code
- **Claude Managed Agents**: harness totalmente gerenciado para executar Claude como agente autônomo (beta pública)
- **CLI `ant`**: cliente de linha de comando para a API com integração nativa ao Claude Code e versionamento de recursos em YAML
- **Mudança de billing (junho 2026)**: uso do Agent SDK via `claude -p` retira de crédito mensal separado do uso interativo
- **Capacidades complementares**: Files API (documentos persistentes entre conversas), Skills API (boas práticas ensinadas), MCP connector (beta), prompt caching, citations, batch processing
- **10 templates de agentes** lançados para acelerar desenvolvimento com integrações Microsoft 365

## 🔗 Conexões
- [[Pesquisa - 2026-05-18 - Claude API]]
- [[Pesquisa - 2026-05-19 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-19 - Economia de Tokens]]

## 📚 Fontes
- [Models overview — Claude API Docs](https://platform.claude.com/docs/en/about-claude/models/overview)
- [Agent SDK overview — Claude Code Docs](https://code.claude.com/docs/en/agent-sdk/overview)
- [Anthropic Release Notes maio 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Anthropic billing overhaul junho 2026 — Apiyi](https://help.apiyi.com/en/anthropic-claude-subscription-agent-sdk-billing-split-june-2026-en.html)
- [Claude Platform Release Notes](https://docs.anthropic.com/en/release-notes/overview)

## 🔄 Complemento (pesquisa vespertina 2026-05-19)

### Tabela de Preços Completa — mai/2026

| Modelo | Input ($/MTok) | Output ($/MTok) | Cache Read |
|--------|---------------|-----------------|------------|
| Haiku 4.5 | $1,00 | $5,00 | $0,10 |
| Sonnet 4.6 | $3,00 | $15,00 | $0,30 |
| Opus 4.7 | $5,00 | $25,00 | $0,50 |
| Opus 4.7 Fast Mode | $30,00 | $150,00 | — |

> Batch API = 50% de desconto em todos os modelos  
> Cache reads = 0,1× o preço base (90% de desconto)  
> Contexto 1M tokens: Opus 4.7 e Sonnet 4.6 sem surcharge adicional  
> Fast Mode Opus 4.7: 2,5× mais rápido — só justificado em latência crítica

### Tokenizador Opus 4.7 — atenção na migração
- **+35% de tokens** para o mesmo texto vs. gerações anteriores
- Estimar custos baseado em Opus 4.6 subestima o gasto real com 4.7
- Recomendação: re-medir prompts longos antes de escalar em produção

### Advisor Tool (beta)
- Header: `anthropic-beta: advisor-tool-2026-03-01`
- Agente consulta modelo "advisor" em paralelo às outras ferramentas
- Reduz erros de raciocínio em pipelines multi-step

### Histórico de lançamentos Claude 4.x
- **Opus 4.5** (24/11/2025): foco em coding, long-horizon, enterprise
- **Opus 4.6** (05/02/2026): contexto 1M, recordes em programming
- **Opus 4.7** (16/04/2026): tokenizador novo, imagens até 2576px / 3,75MP

## 🚧 Lacunas
- Limites de rate do Agent SDK vs. uso interativo em detalhe
- Preço exato dos créditos mensais separados de Agent SDK
- Comparação de performance Opus 4.7 vs. 4.6 em benchmarks objetivos
