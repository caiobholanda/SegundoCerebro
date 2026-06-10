---
tipo: pesquisa
status: em-andamento
criado: 2026-06-10
atualizado: 2026-06-10
tags: [dev, deploy, cloud]
pergunta-central: Qual é o estado atual do deploy cloud para indie devs e produção em 2026?
relacionado-a: Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-09 - Deploy e Infraestrutura Cloud]]", "[[Pesquisa - 2026-06-10 - Programação e Desenvolvimento]]"]
---

# Deploy e Infraestrutura Cloud — 2026-06-10

## Padrão 3 Camadas (Consolidado 2026)

```
Edge/CDN          →  Vercel (Next.js) / Cloudflare Pages (estático)
Container PaaS    →  Railway (protótipos) | Fly.io (produção)
Managed Database  →  Supabase / Neon / PlanetScale / Fly Postgres
```

## Comparativo de Plataformas

### Railway
- A partir de ~$5/mês (usage-based)
- Deploy Git-based: conecta GitHub → detecta framework → build → deploy sem Dockerfile ou YAML
- 500h execução grátis + 512 MB RAM por serviço no tier free
- Preferido por indie devs: melhor DX, zero configuração
- $100M Series B (jan/2026), 2M devs, data centers próprios

### Fly.io
- Maduro em 2026: managed Postgres, GPU (A100/L40S), Kubernetes, object storage, scale-to-zero
- 35+ regiões globais
- Removeu tier gratuito permanente (2024) + 2 novos itens de billing (jan-fev/2026)
- Padrão para produção global — melhor custo-benefício para apps sérias

### Vercel
- 4 aumentos de preço desde 2024
- $20–$200/mês vs $7–15 no Railway/Render para mesma carga
- Insubstituível para Next.js frontend — plataforma pensada para o framework
- Não recomendado como backend container

### Render / Northflank
- Interoperáveis com Railway e Fly.io no nível container
- Migrar entre eles = basicamente troca de DNS + env vars

## Intercambialidade das Plataformas

Railway, Render e Fly.io são **praticamente intercambiáveis** no nível de container Docker. App dockerizada pode mover entre eles com mudanças mínimas.

## Tendências

- **Agentic Ops**: agentes de IA gerando pipelines CI/CD automaticamente
- **GPU como commodity**: Fly.io com A100/L40S acessíveis para workloads de ML
- **Scale-to-zero**: padrão para apps com tráfego irregular

## Fontes
- [PaaS Comparison 2026 — birjob.com](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Fly.io vs Railway 2026 — The Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [Deploy comparativo — Navanath Jadhav/Medium](https://navanathjadhav.medium.com/i-deployed-the-same-app-to-vercel-railway-and-fly-io-cost-performance-compared-607dedd46ae6)
- [Deploying Full Stack Apps 2026 — nucamp.co](https://www.nucamp.co/blog/deploying-full-stack-apps-in-2026-vercel-netlify-railway-and-cloud-options)
- [Railway Review 2026 — ribby.dev](https://ribby.dev/blog/railway-review-2026)
