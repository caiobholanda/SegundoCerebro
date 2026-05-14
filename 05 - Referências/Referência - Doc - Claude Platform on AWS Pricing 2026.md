---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://platform.claude.com/docs/en/about-claude/pricing
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude, api, aws, pricing, ccu]
---

# Referência — Claude Platform on AWS Pricing

Documentação oficial de preços da Anthropic, incluindo a seção dedicada ao Claude Platform on AWS com o modelo de cobrança em Claude Consumption Units (CCUs).

## Conteúdo principal

- Claude Platform on AWS usa CCU (Claude Consumption Unit) como unidade de faturamento no AWS Marketplace
- 1 CCU = $0,01 USD (fixo); 100 CCUs = $1,00 USD
- Conversão: uso em tokens é tarifado em USD pelas taxas padrão por modelo, depois convertido para CCUs
- Faturamento mensal via AWS Marketplace; medição horária; somente pós-pago (arrears)
- Sem crédito pré-pago; descontos negociados resultam em menos CCUs cobrados
- Fast mode **não disponível** no Claude Platform on AWS
- `inference_geo: "us"` aplica multiplicador 1.1x no Platform on AWS (assim como na API direta)

## Preços dos modelos (API padrão)

| Modelo | Input | Output |
|--------|-------|--------|
| Opus 4.7 / 4.6 / 4.5 | $5/MTok | $25/MTok |
| Sonnet 4.6 / 4.5 | $3/MTok | $15/MTok |
| Haiku 4.5 | $1/MTok | $5/MTok |

## Claude Managed Agents

- Tokens: mesmas taxas por modelo + multiplicadores de cache
- Session runtime: $0,08/hora de sessão ativa (status `running`)
- Container-hours NÃO são cobrados separadamente para Managed Agents

## Fontes relacionadas

- [[Referência - Doc - Anthropic Release Notes 2026]]
- [[Referência - Doc - Claude Agent SDK Overview]]
