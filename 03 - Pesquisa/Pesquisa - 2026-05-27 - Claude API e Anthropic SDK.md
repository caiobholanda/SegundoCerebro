---
tipo: pesquisa
criado: 2026-05-27
atualizado: 2026-05-27
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-05-27

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em maio de 2026?

## 🎯 Síntese
Semana de consolidação pós Code with Claude SF: Dreaming (memória entre sessões de agentes) confirmado como diferencial de produto; billing split Agent SDK em 15/jun exige ação do usuário (claim por email). Claude Platform no AWS ganha acesso ao Console. Project Glasswing (Claude Mythos Preview) identifica zero-days em larga escala.

## 🔬 Detalhes

### Dreaming — Memória Persistente de Agentes
- Agentes escrevem notas para si mesmos ao terminar uma sessão
- Quando outro agente retoma o mesmo codebase, lê as notas para se contextualizar
- Disponível como Research Preview nos Claude Managed Agents
- Resolve o problema de "cold start" em workflows longos de desenvolvimento

### Billing Split Agent SDK — 15/jun/2026
- Anunciado em 14/mai; efetivo em 15/jun
- Usuários **precisam reclamar crédito por e-mail antes de 15/jun** — sem claim = sem allowance
- Escopo separado: `claude -p`, Claude Code GitHub Actions, apps de terceiros via Agent SDK
- Créditos mensais (sem rollover):

| Plano | Crédito Agent SDK |
|-------|------------------|
| Pro | $20/mês |
| Max 5x | $100/mês |
| Max 20x | $200/mês |

- Terminal + web continuam no limite padrão da subscription
- Motivo: "subscription arbitrage" — usuários pagando $20/mês mas consumindo centenas de dólares via Agent loops longos

### Claude Platform no AWS — Expansão
- Clientes AWS agora acessam o Claude Console (ambiente de dev/teste)
- Inclui: prompt improver, prompt generator, evaluation tools
- Modelos disponíveis: Opus 4.7, Sonnet 4.6, Haiku 4.5

### Project Glasswing — Claude Mythos Preview
- Organizações selecionadas testando ferramentas de segurança ofensiva/defensiva
- Em testes internos: identificou **milhares de zero-day vulnerabilities** em sistemas operacionais e browsers principais em semanas
- Público-alvo: red teams e equipes de segurança autorizadas

### Self-Hosted Sandboxes — Public Beta
- Arquivos sensíveis, pacotes e serviços ficam na infraestrutura do cliente
- Loop do agente permanece na Anthropic
- Para equipes com requisitos de compliance/data residency

### MCP Tunnels — Research Preview
- Disponível para quem solicitar acesso
- 20+ conectores MCP legais (pesquisa, contratos, discovery, matter management)

### Métricas da Plataforma
- Anthropic: $30B ARR (abr/2026), vs $9B no final de 2025
- 500+ empresas gastando >$1M/ano

### Preços Atuais
| Modelo | Input (MTok) | Output (MTok) |
|--------|-------------|---------------|
| Haiku 4.5 | $1 | $5 |
| Sonnet 4.6 | $3 | $15 |
| Opus 4.7 | $5 | $25 |
| Fast Mode Opus 4.7 | $30 | $150 |

- Cache reads: 0,1× base (90% desconto)
- Cache 1h: 2× base | Cache 5min: 1,25× base
- Batch: 50% desconto

## 🔗 Conexões
- [[Pesquisa - 2026-05-27 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-27 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-05-27 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-05-26 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Anthropic Release Notes — May 2026](https://releasebot.io/updates/anthropic)
- [Anthropic June 15 Billing Split — 5 Key Points](https://help.apiyi.com/en/anthropic-claude-subscription-agent-sdk-billing-split-june-2026-en.html)
- [Anthropic splits billing — Agent SDK gets separate credit pools](https://thenewstack.io/anthropic-agent-sdk-credits/)
- [Code with Claude SF 2026 Recap](https://blakecrosley.com/blog/code-with-claude-sf-2026-recap)
- [Claude Mythos Preview — Project Glasswing](https://red.anthropic.com/2026/mythos-preview/)

## 🚧 Lacunas
- Detalhes sobre tempo de vida das "notas do Dreaming" entre sessões
- Lista completa de organizações elegíveis para Project Glasswing
- SLA e limites dos Self-Hosted Sandboxes
