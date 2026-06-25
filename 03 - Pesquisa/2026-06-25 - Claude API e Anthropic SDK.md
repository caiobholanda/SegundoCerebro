---
tipo: pesquisa
criado: 2026-06-25
atualizado: 2026-06-25
<<<<<<< HEAD
pergunta-central: Quais as novidades da Claude API e plataforma Anthropic em junho 2026?
relacionado-a: [Claude Code, Economia de Tokens]
related: ["[[2026-06-24 - Claude API e Anthropic SDK]]"]
tags: [pesquisa, ia, claude, api]
=======
pergunta-central: Quais são as principais funcionalidades da Claude API e do Anthropic SDK, e como elas podem ser integradas em projetos de IA?
relacionado-a: []
related: []
tags: [pesquisa, ia, dev, claude]
>>>>>>> 2fe417dd6f2a991dd229c8ad7a0f7422af3d2bac
---

# Pesquisa - Claude API e Anthropic SDK

## ❓ Pergunta central
<<<<<<< HEAD
Quais as novidades da Claude API e plataforma Anthropic em junho 2026?

## 🎯 Síntese (3-5 linhas)
Fable 5 entrou em cobrança medida após o período gratuito (encerrou 22/06, $10/$50 por MTok). Billing split está ativo desde 15/06. A API ganhou fallback server-side, MCP tunnels para redes privadas, Rate Limits API e Multi-agent sessions em beta público. Managed Agents agora roda em sandbox corporativo com MCP privado. Claude chegou ao ecossistema Apple (Foundation Models, iOS/macOS/watchOS 27) e ao Slack via Claude Tag.

## 🔬 Detalhes
- **Claude Fable 5** (GA desde 09/06): 1M ctx, 128K output, $10/$50 MTok — período gratuito Pro/Max/Team encerrou em 22/06; a partir de agora consome créditos
- **Claude Mythos 5**: disponível apenas para ciber-defensores e provedores de infraestrutura selecionados (parceiros Glasswing)
- **Billing split** (ativo desde 15/06): Agent SDK, `claude -p`, GitHub Actions e apps de terceiros consomem pool separado (Pro $20, Max5x $100, Max20x $200/mês)
- **Fallback server-side** (header `server-side-fallback-2026-06-01`): recusas retentam em segundo modelo no mesmo round-trip, sem cobrança extra
- **Sem cobrança por recusas**: requests com `stop_reason: "refusal"` sem output gerado não são mais cobrados
- **MCP Tunnels** (research preview): permite conectar servidores MCP dentro de redes privadas
- **Rate Limits API**: admins podem consultar os limites da organização e dos workspaces via API
- **Managed Agents enterprise**: sandbox corporativo + MCP privado; multi-agent sessions e Outcomes em beta público (`managed-agents-2026-04-01`)
- **Claude Tag no Slack** (beta Team/Enterprise): @Claude em canais com acesso a ferramentas e bases de código
- **Apple Foundation Models**: suporte no framework iOS 27, iPadOS 27, macOS 27, visionOS 27
- **Sonnet 4 e Opus 4 originais** descontinuados em 15/06 — chamadas falham

## 🔗 Conexões
- [[2026-06-25 - Claude Code — CLI e agentes]]
- [[2026-06-25 - Economia de Tokens em LLMs]]
- [[Projeto - Sistema Chamados]]

## 📚 Fontes
- [Anthropic Release Notes – Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Platform Release Notes](https://platform.claude.com/docs/en/release-notes/overview)
- [Claude Fable 5 e Mythos 5 – Anthropic](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Opus 4.8 – Anthropic](https://www.anthropic.com/news/claude-opus-4-8)

## 🚧 Lacunas
- Como o fallback server-side afeta latência e custo médio por request?
- Quais as condições exatas de elegibilidade para acessar Mythos 5?
- Impacto do billing split em workflows agênticos existentes após 15/06
=======
Quais são as principais funcionalidades da Claude API e do Anthropic SDK, e como elas podem ser integradas em projetos de IA?

## 🎯 Síntese (3-5 linhas)
A Claude API e o Anthropic SDK são ferramentas desenvolvidas pela Anthropic para facilitar a integração de modelos de linguagem avançados, como o Claude, em aplicativos e produtos. A API oferece acesso a funcionalidades como geração de texto, análise de linguagem e personalização. O SDK complementa a API com bibliotecas e ferramentas que simplificam a implementação e a experimentação de IA. São recursos essenciais para desenvolvedores que buscam incorporar IA de forma rápida e eficiente.

## 🔬 Detalhes
- A Claude API permite o acesso ao modelo de linguagem Claude, desenvolvido pela Anthropic, com foco em segurança, alinhamento ético e respostas úteis.
- Entre as funcionalidades da API estão: conclusão de texto, chatbots contextuais e análise de linguagem, incluindo compreensão de texto e classificação.
- O Anthropic SDK é um conjunto de ferramentas que fornece bibliotecas e exemplos para integração com a Claude API em linguagens como Python e JavaScript.
- A Anthropic prioriza práticas de IA responsável, incorporando limites de segurança e filtros para evitar usos prejudiciais ou não éticos dos modelos.
- A API é baseada em uma arquitetura de API REST, permitindo chamadas HTTP padrão com endpoints bem documentados para facilitar o uso.
- Recursos como personalização de modelos e treinamento adicional sobre dados específicos estão disponíveis para adaptar a IA às necessidades de negócios.

## 🔗 Conexões
- [[Pesquisa - Modelos de Linguagem Natural]]
- [[Referência - Introdução à Anthropic]]

## 📚 Fontes
- [[Referência - Claude API Documentation]]
- [[Referência - Anthropic SDK GitHub Repository]]
- [[Referência - Blog Anthropic sobre IA responsável]]

## 🚧 Lacunas
- Como a Claude API e o Anthropic SDK se comparam em custo-benefício com alternativas como OpenAI e Google Bard?
- Há limitações em termos de volume de dados ou complexidade das tarefas que esses recursos conseguem lidar?
- Quais são os casos de uso mais bem-sucedidos ou inovadores já implementados com a Claude API?
```
>>>>>>> 2fe417dd6f2a991dd229c8ad7a0f7422af3d2bac
