---
tipo: pesquisa
criado: 2026-05-26
atualizado: 2026-05-26
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-05-26

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?

## 🎯 Síntese
Anthropic consolidou a plataforma agêntica: Self-Hosted Sandboxes em public beta, 20+ conectores MCP legais, Claude Security (Project Glasswing) em public beta, e cache de 1 hora disponível. Billing split Agent SDK confirmado para 15/jun. Preços atuais estáveis — Opus 4.7 $5/$25, sem surcharges de contexto longo desde mar/2026.

## 🔬 Detalhes

### Preços Atuais (maio/2026)
| Modelo | Input (MTok) | Output (MTok) |
|--------|-------------|---------------|
| Haiku 4.5 | $1 | $5 |
| Sonnet 4.6 | $3 | $15 |
| Opus 4.7 | $5 | $25 |
| Fast Mode Opus 4.7 | $30 | $150 |

- **Batch**: 50% desconto em todos os modelos
- **Cache reads**: 0,1× preço base (90% desconto)
- **Cache 1 hora**: 2× preço base (vs 1,25× para cache de 5 min)
- **Contexto longo**: sem surcharge desde 13/mar/2026 (Opus 4.7 + Sonnet 4.6)

### Self-Hosted Sandboxes — Public Beta
- Arquivos sensíveis, pacotes e serviços ficam na infraestrutura própria do cliente
- Agent loop permanece na infraestrutura da Anthropic
- Alternativa aos sandboxes gerenciados para equipes com requisitos de compliance

### Claude Security — Project Glasswing
- Agora em public beta
- Ferramentas de verificação cibernética para equipes de segurança elegíveis
- Funcionalidades: scan de codebase, triagem de vulnerabilidades, geração de fixes

### Conectores MCP — Expansão Legal
- 20+ novos conectores MCP para mercado jurídico
- 12 plugins de área de prática (pesquisa, contratos, discovery, gestão de matérias)

### Billing Split Agent SDK (15/jun/2026)
- Pro: $20/mês crédito separado
- Max 5x: $100/mês
- Max 20x: $200/mês
- Sem rollover; tarifas full-API

### Receita Anthropic
- $30B ARR em abril/2026 (vs $9B no final de 2025)
- 500+ empresas gastando >$1M/ano na plataforma

## 🔗 Conexões
- [[Pesquisa - 2026-05-26 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-26 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-25 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Pricing - Claude API Docs](https://platform.claude.com/docs/en/about-claude/pricing)
- [Anthropic Claude API Pricing 2026 — Complete Guide](https://www.finout.io/blog/anthropic-api-pricing)
- [Higher usage limits for Claude and a compute deal with SpaceX](https://www.anthropic.com/news/higher-limits-spacex)
- [Anthropic launches Claude Design](https://techcrunch.com/2026/04/17/anthropic-launches-claude-design-a-new-product-for-creating-quick-visuals/)
- [Claude AI in 2026: Complete Guide](https://www.startuphub.ai/ai-news/reviews/2026/claude-ai-complete-guide-2026)

## 🚧 Lacunas
- SLA e limites do Self-Hosted Sandboxes (documentação ainda parcial)
- Detalhes de preço do cache de 1 hora para Haiku 4.5
- Quais conectores MCP jurídicos são gratuitos vs pagos
