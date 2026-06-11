---
tipo: pesquisa
status: ativo
criado: 2026-06-11
atualizado: 2026-06-11
tags: [dev, deploy, cloud, infraestrutura]
pergunta-central: Qual é o estado atual das plataformas de deploy em junho de 2026?
relacionado-a: Programação e Desenvolvimento
related: ["[[Pesquisa - 2026-06-10 - Deploy e Infraestrutura Cloud]]"]
---

# Deploy e Infraestrutura Cloud — 2026-06-11

## Padrão 3 Camadas (Consolidado em 2026)

```
FRONTEND  → Vercel (Next.js) | Netlify (Jamstack) | Cloudflare Pages (custo-sensitivo)
BACKEND   → Railway | Render | Fly.io | DigitalOcean
DATABASE  → MongoDB Atlas | PlanetScale | Railway Postgres | Fly.io Postgres
```

## Railway

- **$100M Series B** — janeiro 2026
- **Railway Metal**: migração da infraestrutura Google Cloud → data centers próprios
  - Promessa: 50% mais barato que AWS
  - Risco: transição gerou instabilidades reportadas
- Auto-detecção de linguagem (Node.js, Python, Go, Ruby, Rust, Docker) sem configuração
- Melhor DX para indie dev e protótipos

## Fly.io

Em 2026, não é mais só "Docker global" — é uma plataforma completa:

| Recurso | Status |
|---------|--------|
| GPU A100 / L40S | Disponível |
| Kubernetes | Suportado |
| Managed Postgres | Disponível |
| Object Storage | Disponível |
| Scale-to-zero | Ativo |
| DCs globais | 35+ regiões |

- Melhor escolha para produção com requisitos globais

## Vercel

- Referência insubstituível para Next.js e static sites
- 4 aumentos de preço desde 2024 → $20–200/mês
- Faz sentido financeiro apenas para frontend-heavy / Next.js

## Cloudflare Pages

- Bandwidth ilimitado grátis
- Melhor custo-benefício para sites estáticos e custo-sensitivos

## Recomendação para 2026

| Cenário | Plataforma |
|---------|-----------|
| Protótipo / indie dev | Railway |
| Produção global | Fly.io |
| Frontend / Next.js | Vercel |
| Estático / custo zero | Cloudflare Pages |

## Links

- [[Pesquisa - 2026-06-10 - Deploy e Infraestrutura Cloud]]
- [[Pesquisa - 2026-06-11 - Programação e Desenvolvimento]]
