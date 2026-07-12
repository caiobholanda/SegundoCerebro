```markdown
---
tipo: pesquisa
criado: 2026-07-11
atualizado: 2026-07-11
pergunta-central: Quais são as novidades e estado atual das plataformas de deploy cloud em julho de 2026?
relacionado-a: []
related: []
tags: [pesquisa, dev, deploy, cloud, infraestrutura]
---

# Pesquisa - Deploy e Infraestrutura Cloud

## ❓ Pergunta central
Quais são as novidades e estado atual das plataformas de deploy cloud em julho de 2026?

## 🎯 Síntese (3-5 linhas)
Railway emerge como padrão para projetos indie/small SaaS com custo de $7-15/mês, e agora tem MCP server nativo que permite agentes como Claude gerenciar projetos, vars, deploys e logs. Vercel acumulou 4 aumentos de preço desde 2024 mas mantém liderança em frontend. Fly.io adicionou billing em inter-region networking (fev) e volume snapshots (jan), aumentando custo real.

## 🔬 Detalhes
- **Railway MCP server**: Claude, Cursor e qualquer agente MCP pode criar projetos, gerenciar variáveis, disparar deploys e ler logs sem scraping de dashboard — integração nativa com AI workflows
- **Railway guia AI apps 2026**: publicou guia específico para deploy de aplicações de IA em 2026
- **Vercel Fluid Compute**: Active CPU pricing paga por tempo de CPU em execução ativa, não wall-clock — economiza ~80% em funções idle esperando resposta de LLM
- **Vercel pricing**: 4 aumentos de preço desde 2024; custo real varia muito ($20-200/mês indie SaaS dependendo do uso)
- **Fly.io billing expansões**: inter-region private networking cobrado a Machine rates (fev/2026); volume snapshots cobrados desde jan/2026 — custo sobe $10-20/mês para stacks típicas
- **Custo comparativo indie SaaS** (1 web service + 1 worker + Postgres, tráfego moderado):
  - Railway/Render: ~$7-15/mês
  - Fly.io: ~$10-20/mês (com IPv4 + snapshots)
  - Vercel: $20-200/mês (altamente variável)
- **Padrão 2026**: Vercel (frontend Next.js) + Railway (backend) usado em conjunto; Railway ganhou suporte Next.js one-click deploy SSR

## 🔗 Conexões
- [[2026-07-11 - Programação e Desenvolvimento]]
- [[2026-07-11 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [PaaS Comparison 2026: Railway, Render, Fly.io vs Vercel - BirJob](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Best Platforms to Deploy AI Apps 2026 - Railway Blog](https://blog.railway.com/p/best-platforms-deploy-ai-apps-2026)
- [Fly.io vs Railway 2026 - Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)

## 🚧 Lacunas
- Railway Metal rollout Q3 — qual o impacto de performance vs era GCP?
- AWS App Runner em maintenance — o que foi anunciado como substituto oficial além de ECS Express Mode?
- Vercel Services (lançado 1/jul) — maturidade atual e casos de uso reais?
```
