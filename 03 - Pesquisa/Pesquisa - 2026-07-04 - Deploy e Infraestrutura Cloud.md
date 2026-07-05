---
tipo: pesquisa
status: em-andamento
criado: 2026-07-04
atualizado: 2026-07-04
tags: [dev, cloud, infraestrutura]
pergunta-central: Qual é o estado do ecossistema de deploy cloud em julho de 2026?
relacionado-a: "[[Pesquisa - 2026-07-02 - Deploy e Infraestrutura Cloud]]"
related: []
---

# Deploy e Infraestrutura Cloud — 2026-07-04

## Padrão 3 camadas consolidado

| Camada | Ferramenta | Uso típico |
|--------|-----------|-----------|
| Frontend/Edge | Vercel / Cloudflare Pages | Next.js, estático |
| Backend/PaaS | Railway (proto) / Fly.io (prod) | APIs, workers |
| DB gerenciado | Railway Postgres / Fly.io Postgres / Supabase | dados |

## Vercel

- **4 aumentos de preço desde 2024** — pressão crescente em projetos mid/large
- Otimizado para Next.js com framework-aware infrastructure
- Infraestrutura para apps IA incluída (AI SDK, streaming)
- Custo típico para indie SaaS: **$20–200/mês** dependendo do tráfego
- Fluid Compute: Active CPU pricing reduz custos de funções idle em ~80%

## Railway

- Plano Hobby: $5/mês + $5 créditos de uso
- Plano Pro: $20/mês + $20 créditos + **hard spend limits** (diferencial vs Fly.io)
- 2M devs; Série B $100M
- DX melhor do mercado: deploy em < 1min sem Dockerfile
- Custo típico indie SaaS: **$7–15/mês**
- Após incidente de maio 2026 (GCP suspendeu conta de produção — 8h fora), Railway redesenhou arquitetura removendo GCP do hot path → HA via AWS+Metal

## Fly.io

- Free tier removido (jan/fev 2026)
- Duas novas linhas de cobrança em 2026: volume snapshots (jan) + inter-region networking (fev)
- 35+ DCs globais; GPU A100/L40S; Kubernetes nativo
- Melhor para produção global e workloads com GPU
- Custo típico indie SaaS: **$10–20/mês** (IPv4 + volumes)

## Render

- Flat fee $25/mês + consumo (sem per-seat)
- Free tier real sem expiração (diferencial)
- Custo típico: **$7–15/mês**

## AWS App Runner — em maintenance

- Não aceita novos clientes desde 30/abr/2026
- Projetos novos → **ECS Express Mode** como substituto recomendado

## Heroku

- Em sustaining mode desde fev/2026: sem novos recursos, sem Enterprise
- Adequado apenas para legado existente

## MCP Server deploy — ranking

Vercel > Railway > Render > Fly.io para MCP servers (latência + facilidade)

## Links

- [PaaS Comparison 2026 — BirJob](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Fly.io vs Railway 2026 — The Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [10 Vercel Alternatives 2026 — DigitalOcean](https://www.digitalocean.com/resources/articles/vercel-alternatives)
- [Free Cloud Deploy Platforms 2026 — Snapdeploy](https://snapdeploy.dev/blog/free-cloud-deployment-platforms-2026-comparison)
- [Railway vs Vercel — Railway Docs](https://docs.railway.com/platform/compare-to-vercel)
