---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, dev, programacao, ia, ferramentas, typescript, python, greenops, amazon-q, cursor, claude-code, windsurf]
pergunta-central: "Qual ferramenta de AI coding vence em workflows agentivos complexos, e como o mercado de dev (TypeScript, Amazon Q, GreenOps) evoluiu desde a última pesquisa?"
relacionado-a: [Pesquisa - 2026-05-13 - Programacao e Dev, Pesquisa - 2026-05-08 - Programacao e Desenvolvimento]
---

# Pesquisa — Programação e Dev (14/05/2026)

## Pergunta central

Qual ferramenta de AI coding vence em workflows agentivos complexos, e como o mercado de dev (TypeScript, Amazon Q, GreenOps) evoluiu desde a última pesquisa?

## Sintese (3-5 linhas)

Claude Code domina em autonomia real e eficiência de tokens para tarefas agentivas complexas (SWE-bench 87.6%, 5.5x menos tokens que Cursor), mas Cursor segue preferido para feedback inline e fluxo IDE. Amazon Q Developer é a opção mais econômica para stacks AWS-first, com plano gratuito generoso e security scanning integrado. TypeScript no topo do GitHub já se reflete em demanda de vagas no Brasil, especialmente para React/Node.js. GreenOps emergiu como prática estruturada com ferramentas concretas (Scaphandre, Greenspector, SOFT framework). GitHub Copilot migra para billing por uso em junho de 2026.

## Detalhes

### 1. Cursor vs Claude Code: qual vence em agentic workflows?

A resposta depende do tipo de tarefa:

**Claude Code vence em:**
- Tarefas multi-arquivo com 5+ arquivos simultâneos — loop read/plan/edit/verify nativo
- Eficiência de tokens: usa 5.5x menos tokens (33K vs 188K — benchmarks Morph)
- SWE-bench Verified: 87.6% com Claude Opus 4.7 (vs Cursor Composer 2: 73.7 no SWE-bench Multilingual)
- Contexto de 200K tokens para entender bases de código completas
- Criação autônoma de PRs, execução de testes e comandos

**Cursor vence em:**
- Feedback visual imediato — cada mudança visível no VS Code antes de aceitar
- Multi-model routing (Claude, GPT-5, Gemini, Composer proprietário)
- Curva de aprendizado menor para devs acostumados ao VS Code
- Rascunhos rápidos com aprovação manual

**Padrão adotado por devs sêniors:** combinar os dois. IDE assistant (Cursor/Copilot) para trabalho do dia a dia + Claude Code para tarefas grandes e autônomas.

**Novidade maio/2026:** Claude Code adicionou Routines (cloud agents agendados por cron, GitHub event ou API call), ferramenta Monitor e dobrou rate limits para planos Pro/Max/Enterprise.

### 2. Windsurf/Codeium: limitações em repos grandes

**Problemas conhecidos:**
- Dificuldade com arquivos acima de 300-500 linhas — problemático em codebases enterprise
- No Windows VM: indexação pode demorar até 6 minutos (recomendado macOS ou Linux nativo)
- Contexto e limites técnicos do Cascade não documentados de forma completa

**Pontos positivos:**
- Cascade faz assistência multi-arquivo com entendimento de dependências
- Recentemente adquirido pela Cognition (maker do Devin)
- Changelog mostra melhorias contínuas de performance em repos grandes
- Preço atrativo: plano gratuito disponível, Pro competitivo

**Comparação com Cursor:** Cursor também degrada em codebases >15K linhas, especialmente em stacks mistas (C++ + Rust). Problema não é exclusivo do Windsurf.

### 3. GreenOps e Sustainable Programming: ferramentas concretas

Framework SOFT (Green Software Foundation, nov/2025) — agora padrão estruturado de board até dev:

| Ferramenta | O que mede | Como integrar |
|------------|-----------|---------------|
| Scaphandre | Consumo energético em containers | Docker/K8s |
| Greenspector | Energia no pipeline CI/CD | GitHub Actions, Jenkins |
| CodeCarbon/CarbonTracker | Pegada de carbono em ML | pip install codecarbon |
| Carbon Aware SDK | Workloads conscientes de energia limpa | Cloud (Azure, AWS, GCP) |

**Métrica SCI** (ISO certificada): emissões por unidade de trabalho (por API call, transação, sessão). Torna carbono comparável entre sistemas.

**Dado relevante:** Algoritmos eficientes reduzem consumo em 30-95%. C é 75x mais eficiente que Python energeticamente.

### 4. TypeScript #1 no GitHub: impacto no Brasil

TypeScript atingiu #1 por contribuidores ativos no GitHub em agosto/2025: 2,636,006 contribuidores/mês (alta de 66.63% ao ano, ~1M novos contribuidores).

**Por que TypeScript lidera:**
- Type system reduz ambiguidade de código gerado por LLMs — captura erros antes de chegar em produção
- Scaffolding padrão TypeScript em frameworks como Next.js, Angular, NestJS
- Compatibilidade natural com agentic coding (Copilot, Cursor, Claude Code)

**Impacto no Brasil:**
- Brasil tem 759K+ devs (6º maior população de devs do mundo), crescimento de 11.6% (+924K) em 2025
- Skills mais demandadas: React/TypeScript, Python/ML, Java/Kotlin
- São Paulo, Belo Horizonte e Curitiba como hubs principais
- Salário senior: $71K-$105K (vs $150K-$220K nos EUA) — vantagem competitiva para contratação remota
- América Latina é a região de sourcing que mais cresce para empresas US buscando devs TypeScript remotos

### 5. Amazon Q Developer: preço e vantagem real vs GitHub Copilot

**Planos Amazon Q Developer (2026):**
- **Free**: ilimitado completions + security scanning completo (SAST 12+ linguagens)
- **Pro**: $19/usuário/mês — mais requests agentivos + controles de admin

**GitHub Copilot:**
- **Free**: 2.000 completions + 50 chats/mês
- **Pro**: $10/mês (individual)
- **Business**: $19/usuário/mês
- **Enterprise**: $39/usuário/mês (requer GitHub Enterprise Cloud: total ~$60/usuário)

**Cálculo real (equipe de 50):**
- Amazon Q Pro: $950/mês (inclui security scanning)
- GitHub Copilot Enterprise: ~$3.000/mês
- **Economia com Amazon Q: ~68% para equipes AWS**

**Quando usar Amazon Q:**
- Stack primariamente AWS (CloudFormation, Lambda, ECS, RDS)
- Necessidade de SAST + IaC scanning sem ferramenta separada
- Modernização automática de Java 8/11→17/21 ou .NET Framework→.NET 8
- Integração nativa com AWS Management Console e CloudWatch

**Quando usar GitHub Copilot:**
- Stack multi-cloud ou agnóstico de cloud
- Melhor qualidade geral de completions em linguagens diversas
- Agent mode autônomo (GA em VS Code e JetBrains desde mai/2026)
- PR review integrado com GitHub

### 6. Novidades em ferramentas de dev (mai/2026)

**Claude Code / Anthropic:**
- Claude Opus 4.7 como modelo padrão no Max e Team Premium
- SWE-bench Verified subiu de 80.8% para 87.6%
- Routines: cloud agents agendados (cron, GitHub event, API call)
- Rate limits dobrados para Pro/Max/Enterprise

**GitHub Copilot:**
- Migração para billing por uso a partir de 1 de junho de 2026
- Agent mode GA em VS Code e JetBrains
- Melhorias no code review: comentários agrupados, severity labels, UI de changeset atualizada
- Relatórios de uso downloadáveis para admins

**Cursor:**
- Cursor Composer 2 lançado: 61.3 no CursorBench (+37% vs Composer 1.5)
- Agentic system novo em rollout (TechCrunch, mar/2026)
- Novo modelo proprietário Composer integrado ao routing multi-modelo

## Conexoes

- [[Pesquisa - 2026-05-13 - Programacao e Dev]]
- [[Pesquisa - 2026-05-13 - Claude Code]]
- [[Pesquisa - 2026-05-13 - Inteligencia Artificial]]
- [[Pesquisa - 2026-05-08 - Programacao e Desenvolvimento]]
- [[Referência - Artigo - Cursor vs Claude Code Agentic Comparison 2026]]
- [[Referência - Artigo - Amazon Q Developer vs GitHub Copilot 2026]]
- [[Referência - Artigo - GreenOps Sustainable Programming 2026]]
- [[Referência - Doc - Claude Code Routines 2026]]
- [[Referência - Doc - Claude Code Changelog 2026]]

## Fontes

- [Claude Code vs Cursor vs Windsurf: Which Agentic IDE Wins in May 2026? (Medium)](https://diptendud.medium.com/claude-code-vs-cursor-vs-windsurf-which-agentic-ide-wins-in-may-2026-bf7ad498e852)
- [Claude Code vs Cursor: What to Choose in 2026 (Builder.io)](https://www.builder.io/blog/cursor-vs-claude-code)
- [Claude Code vs GitHub Copilot vs Cursor (2026) (CosmicJS)](https://www.cosmicjs.com/blog/claude-code-vs-github-copilot-vs-cursor-which-ai-coding-agent-should-you-use-2026)
- [Claude Code vs Cursor vs Copilot: The 2026 Developer Comparison (Sitepoint)](https://www.sitepoint.com/claude-code-vs-cursor-vs-copilot-the-2026-developer-comparison/)
- [Amazon Q vs GitHub Copilot (2026) (Neuronad)](https://neuronad.com/amazon-q-vs-github-copilot/)
- [Amazon Q Developer Pricing 2026 (DevTools Review)](https://devtoolsreview.com/pricing/amazon-q-pricing/)
- [Comparing Amazon Q and GitHub Copilot Agentic AI in VS Code (Visual Studio Magazine)](https://visualstudiomagazine.com/articles/2026/02/23/comparing-amazon-q-and-github-copilot-agentic-ai-in-vs-code-tests.aspx)
- [The Carbon-Efficient Developer: Why GreenOps is the New Standard for 2026 (Medium)](https://medium.com/waterstons-development/the-carbon-efficient-developer-why-greenops-is-the-new-standard-for-2026-4cf6b07422d0)
- [Green Code in 20 Statistics for 2026 (Adopter)](https://www.adopter.net/knowledge-hub/20-statistics-you-need-to-know-in-2026-on-green-code)
- [Octoverse: TypeScript to #1 (GitHub Blog)](https://github.blog/news-insights/octoverse/octoverse-a-new-developer-joins-github-every-second-as-ai-leads-typescript-to-1/)
- [How to Hire Software Developers in Brazil 2026 (Revelo)](https://www.revelo.com/blog/hire-software-developers-in-brazil)
- [Claude Code vs GitHub Copilot (May 2026) — Opus 4.7, Agents & New Pricing (MetaCTO)](https://www.metacto.com/blogs/comparing-claude-code-and-github-copilot-for-engineering-teams)
- [Windsurf Review 2026: SWE-1.5, Codemaps, Cascade, Pricing (VibeCoding)](https://vibecoding.app/blog/windsurf-review)
- [Cursor 3 Review 2026 — Agent-First IDE vs Claude Code](https://dj420-gif.github.io/PromptPulse/Blog/cursor-3-review-2026.html)

## Lacunas

- Windsurf com repos >100K LOC: ainda sem benchmark público consolidado para codebases realmente grandes (>100K LOC); dados disponíveis chegam a 15K-500 linhas por arquivo
- TypeScript no mercado brasileiro: dados de vagas abertas específicas para TS no Brasil ainda fragmentados — não há estudo de mercado dedicado nacional (2026)
- GreenOps adoção real no Brasil: nenhum dado encontrado sobre adoção do framework SOFT ou métricas SCI em empresas brasileiras de tech
- Cursor Composer 2 vs Claude Code Routines: comparação direta de workflows de cloud agents ainda não publicada
