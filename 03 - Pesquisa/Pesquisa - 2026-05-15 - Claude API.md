---
tipo: pesquisa
status: ativo
criado: 2026-05-15
atualizado: 2026-05-15
tags: [pesquisa, ia, claude, api, billing, mcp, skills]
pergunta-central: "Como a separação de billing para uso programático a partir de junho/2026 impacta desenvolvedores que usam Agent SDK e claude -p, e quais mudanças recentes ocorreram no MCP Connector e Skills API?"
relacionado-a: [Pesquisa - 2026-05-14 - Claude API, Pesquisa - 2026-05-13 - Claude API, Pesquisa - 2026-05-14 - Economia de Tokens]
---

# Pesquisa — Claude API (15/05/2026)

## ❓ Pergunta central

Como a separação de billing para uso programático a partir de junho/2026 impacta desenvolvedores que usam Agent SDK e `claude -p`, e quais mudanças recentes ocorreram no MCP Connector e Skills API?

## 🎯 Síntese

A partir de 15 de junho de 2026, a Anthropic separa o billing programático do interativo: assinantes recebem um crédito mensal dedicado (de $20 a $200 dependendo do plano) para cobrir uso via Agent SDK, `claude -p`, GitHub Actions e apps de terceiros que autenticam pela assinatura — cobrado nas taxas mais caras de API, não de subscrição. Créditos não acumulam. Esgotado o crédito, o uso para a menos que "extra usage" esteja ativo. Em paralelo, o MCP Connector atualizou seu header beta e a Skills API entrou em beta com suporte no Claude Platform on AWS.

## 🔬 Detalhes

### 1. Separação de Billing Programático — Vigência: 15/06/2026

- **O que muda**: uso via Agent SDK, `claude -p` (headless mode), Claude Code GitHub Actions e apps de terceiros autenticados pela assinatura do usuário passa a consumir um **crédito mensal separado** — não compete mais com o uso interativo de chat
- **Créditos por plano** (mensais, não acumulam):
  | Plano | Crédito Programático |
  |---|---|
  | Pro | $20 |
  | Max 5x | $100 |
  | Max 20x | $200 |
  | Team | $100/assento |
  | Enterprise | $200/assento |
- **Taxa de cobrança**: taxas de API padrão (não taxas de subscrição — mais caras)
- **Ao esgotar o crédito**: uso programático é bloqueado automaticamente, a menos que o usuário ative "extra usage" (cobrança pay-as-you-go pelas taxas de API)
- **Créditos não utilizados**: expiram no fim do ciclo — sem rollover
- **O que NÃO muda**: uso interativo no claude.ai e Claude Desktop permanece ilimitado conforme o plano

### 2. Impacto Prático para Desenvolvedores

- Quem usa `claude -p` esporadicamente (automações pessoais, scripts): $20/mês do Pro pode ser suficiente
- Quem usa Claude Code em produção ou GitHub Actions intensivamente: Max 20x ($200) ou Enterprise necessário
- Apps de terceiros que autenticam via OAuth da assinatura do usuário (ex.: clientes Claude com login do usuário) agora consomem o crédito programático — impacto direto nos usuários finais dessas ferramentas
- Estratégia recomendada: mover automações de alto volume para API key própria (fora da assinatura), evitando esgotamento do crédito

### 3. MCP Connector — Atualização do Header Beta

- **Novo header**: `mcp-client-2025-11-20` (substitui `mcp-client-2025-04-04`, que está deprecado)
- Funcionalidade atual: conecta Claude a servidores MCP remotos sem código cliente — API gerencia conexão, discovery de tools e error handling
- Suporta autenticação OAuth para servidores protegidos
- Uma request pode conectar múltiplos endpoints MCP simultaneamente
- **Limitação atual**: apenas o subset `tools` do protocolo MCP está exposto — `resources` e `prompts` ainda não suportados

### 4. Skills API (Beta)

- Lançada para ensinar ao Claude "boas práticas" de um domínio específico, garantindo resultados consistentes
- Disponível no Claude Platform on AWS junto a prompt caching, citations e batch
- Permite criar "habilidades" reutilizáveis que o modelo aplica em chamadas subsequentes
- Ainda em beta — funcionalidade pode mudar antes do GA

### 5. Foco em Legal — 20+ Conectores

- Anthropic lançou mais de 20 conectores e 12 plugins de área prática para profissionais do direito
- Integração com ferramentas jurídicas via MCP, permitindo Claude consultar bases de jurisprudência, contratos e documentos processuais diretamente na API
- Sinaliza expansão vertical da plataforma para setores regulamentados

## 🔗 Conexões

- [[Pesquisa - 2026-05-14 - Claude API]] — contexto de CCU/AWS, Managed Agents Memory e ant CLI
- [[Pesquisa - 2026-05-13 - Claude API]] — base de Managed Agents, Dreaming, Agent Teams
- [[Pesquisa - 2026-05-14 - Economia de Tokens]] — relação com estratégias de custo na API
- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — contexto histórico base

## 📚 Fontes

- [Anthropic tosses agents into the API billing pool — The Register](https://www.theregister.com/ai-ml/2026/05/14/anthropic-tosses-agents-into-the-api-billing-pool/5240748)
- [Claude subscriptions get separate budgets for programmatic use — The Decoder](https://the-decoder.com/claude-subscriptions-get-separate-budgets-for-programmatic-use-billed-at-full-api-prices/)
- [Anthropic splits Claude Subscriptions: What Changes for Indie Hackers on June 15 — DevToolPicks](https://devtoolpicks.com/blog/anthropic-splits-claude-subscriptions-agent-sdk-credit-june-2026)
- [What Anthropic's $200 Agent SDK Credit Means — DEV Community](https://dev.to/vainamoinen/what-anthropics-200-agent-sdk-credit-means-if-you-run-claude-p-in-production-ce2)
- [MCP connector — Claude API Docs](https://platform.claude.com/docs/en/managed-agents/mcp-connector)
- [Anthropic Goes All-In on Legal — LawSites](https://www.lawnext.com/2026/05/anthropic-goes-all-in-on-legal-releasing-more-than-20-connectors-and-12-practice-area-plugins-for-claude.html)
- [Anthropic Release Notes — Releasebot](https://releasebot.io/updates/anthropic)

## 🚧 Lacunas

- Comportamento exato do "extra usage" após esgotar o crédito: há notificação prévia? limite configurável?
- Como apps de terceiros saberão que o crédito do usuário acabou — resposta de erro da API ou do SDK?
- Skills API: formato exato das "skills" e como se diferenciam de system prompts longos ou cached prompts
- Previsão de GA para Skills API e MCP resources/prompts support
