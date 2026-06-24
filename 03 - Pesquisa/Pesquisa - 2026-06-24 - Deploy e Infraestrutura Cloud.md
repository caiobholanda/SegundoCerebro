---
tipo: pesquisa
status: ativo
criado: 2026-06-24
atualizado: 2026-06-24
tags: [deploy, infraestrutura, cloud, devops]
pergunta-central: Quais são as novidades em deploy e infraestrutura cloud em junho 2026?
relacionado-a: Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-23 - Deploy e Infraestrutura Cloud]]"]
---

# Deploy e Infraestrutura Cloud — 2026-06-24

## Railway — Post-Outage (Maio 2026)

### O Incidente de 19/05/2026
- Google Cloud suspendeu a conta de produção do Railway às 22:20 UTC
- Duração: ~8 horas (até ~06:14 UTC de 20/05)
- **Causa raiz**: controle plane da API/banco de dados ainda hospedado no GCP
- **Cascata**: edge proxies dependem do control plane GCP para popular tabelas de roteamento
- Workloads no Railway Metal e AWS ficaram de pé, mas *inacessíveis* — rotas não resolviam

### Mudanças Arquiteturais em Andamento
- Removendo GCP do hot path do data plane
- Shards de banco de dados high-availability distribuídos entre AWS e Railway Metal
- Mesh redesenhado: routing tables populados de múltiplos paths sobreviventes
- Lição: DX máxima não compensa se o control plane tem single point of failure

## Fly.io — Estado Atual

- Free tier permanente removido em 2024
- Inter-region private networking: faturado por Machine rates (fev/2026)
- Volume snapshots: faturados desde jan/2026
- Plataforma madura: GPU A100/L40S, K8s, Postgres gerenciado, scale-to-zero, 35+ DCs
- Melhor custo-benefício em workloads de produção

## Vercel — Tendência

- 4 aumentos de preço desde 2024
- Faixa real: $20–$200/mês (vs $7–$15 em Railway/Render)
- Ainda compensa para Next.js; questionável para outros stacks

## Custo Comparativo Indie SaaS

| Plataforma | Custo típico/mês | Melhor para |
|------------|-----------------|-------------|
| Railway / Render | $7–$15 | Protótipos, MVPs, DX rápida |
| Fly.io | $10–$20 | Produção global, GPU, K8s |
| Vercel | $20–$200 | Next.js / CDN / Serverless |
| Cloudflare Pages | Gratuito | Estático, custo-sensitivo |

## Padrão Recomendado 2026

- **Protótipos/MVPs**: Railway (DX, zero config, <1min deploy)
- **Produção**: Fly.io (35+ DCs, GPU, scale-to-zero, K8s)
- **Frontend/Next.js**: Vercel
- **Estático**: Cloudflare Pages

## Links

- [Incident Report May 19, 2026 — Railway Blog](https://blog.railway.com/p/incident-report-may-19-2026-gcp-account-outage)
- [Railway GCP Outage — InfoQ](https://www.infoq.com/news/2026/05/railway-gcp-account-outage/)
- [PaaS Comparison 2026: Railway, Render, Fly.io vs Vercel — BirJob](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Fly.io vs Railway 2026 — The Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [Railway Review 2026 — ribby.dev](https://ribby.dev/blog/railway-review-2026)
