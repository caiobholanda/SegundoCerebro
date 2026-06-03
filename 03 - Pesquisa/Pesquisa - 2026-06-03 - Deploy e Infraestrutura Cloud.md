---
tipo: pesquisa
status: em-andamento
criado: 2026-06-03
atualizado: 2026-06-03
tags: [pesquisa, deploy, cloud, infraestrutura, railway, flyio, vercel, automatico]
related: ["[[Pesquisa - 2026-06-02 - Deploy e Infraestrutura Cloud]]"]
pergunta-central: "Qual é o estado atual das plataformas de deploy cloud (Railway, Fly.io, Vercel) em junho de 2026?"
relacionado-a: [deploy, cloud, infraestrutura]
---

# Deploy e Infraestrutura Cloud — 2026-06-03

## Destaque principal

**Fly.io introduz cobrança adicional em 2026**: inter-region private networking agora cobrado a taxas de Machine desde **fev/2026**; volume snapshots cobrados desde **jan/2026**. Railway se consolida como padrão para projetos pequenos. Vercel aumentou preços 4 vezes desde 2024.

## Estado dos players (jun/2026)

### Railway
- Padrão para projetos pequenos — melhor DX: push code → app rodando
- Free tier: 500h/mês + 512MB RAM
- One-click deploy de PostgreSQL, MySQL e Redis
- $100M Series B (jan/2026), data centers próprios (50% mais barato que AWS equivalente)

### Fly.io
- Maturidade plena: Postgres gerenciado, GPU A100/L40S, Kubernetes, object storage, scale-to-zero
- 35+ regiões globais
- **Atenção**: free tier removido em 2024; novas cobranças em jan e fev/2026
- Melhor opção para produção global com GPU

### Vercel
- Insubstituível para Next.js frontend
- 4 aumentos de preço desde 2024 — só compensa se o stack é Next.js com API routes simples
- CDN global e DX são o diferencial

## Padrão arquitetural 2026 (consolidado)

```
Frontend → Edge/CDN (Vercel / Netlify / Cloudflare Pages)
Backend  → PaaS container (Railway / Render / Fly.io / DigitalOcean)
Estado   → Managed DB (MongoDB Atlas / PlanetScale / Supabase)
```

## O que mudou desde 2026-06-02

- Fly.io: cobranças adicionais de jan/fev confirmadas e documentadas (inter-region + snapshots)
- Padrão 3 camadas permanece estável — sem novos players emergentes
- Comparativos de custo/performance publicados confirmam Railway como melhor DX indie

## Links relacionados

- [[Pesquisa - 2026-06-02 - Deploy e Infraestrutura Cloud]]
- [[Pesquisa - 2026-06-01 - Deploy e Infraestrutura Cloud]]

## Fontes

- [PaaS Comparison 2026: Railway vs Render vs Fly.io vs Vercel — Birjob](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Fly.io vs Railway 2026 — The Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [Mesmo app no Vercel, Railway e Fly.io — Medium](https://navanathjadhav.medium.com/i-deployed-the-same-app-to-vercel-railway-and-fly-io-cost-performance-compared-607dedd46ae6)
- [Deploying Full Stack Apps 2026 — Nucamp](https://www.nucamp.co/blog/deploying-full-stack-apps-in-2026-vercel-netlify-railway-and-cloud-options)
- [10 Fly.io Alternatives — DigitalOcean](https://www.digitalocean.com/resources/articles/flyio-alternative)
