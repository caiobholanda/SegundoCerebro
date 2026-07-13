```markdown
---
tipo: pesquisa
criado: 2026-07-12
atualizado: 2026-07-12
pergunta-central: Qual é o estado atual de Railway, Vercel e Fly.io para deploy em julho de 2026?
relacionado-a: []
related: []
tags: [pesquisa, dev, cloud, deploy, infra]
---

# Pesquisa - Deploy e Infraestrutura Cloud

## ❓ Pergunta central
Qual é o estado atual de Railway, Vercel e Fly.io para deploy em julho de 2026?

## 🎯 Síntese (3-5 linhas)
Em julho de 2026 o padrão SaaS consolidou-se: Vercel para frontend Next.js, Railway para backends indie (deploy automático sem Dockerfile em <1 min), e Fly.io para produção global com controle total. Vercel encareceu 4× desde 2024; Fly.io removeu o free tier e adicionou 2 novos itens de billing em early 2026. Custo típico de indie SaaS: $7-15/mês no Railway/Render, $10-20 no Fly.io, $20-200 no Vercel.

## 🔬 Detalhes
- **Railway**: setup automático (detecta framework, builda e deploya sem Dockerfile/YAML) em <1min; MCP server permite agentes gerenciarem projetos/deploys/logs nativamente; Metal Q2 fundação + Q3 maturação (saiu do GCP); $100M Series B jan/2026; 2M devs, +200k/mês
- **Fly.io**: maturou com Postgres gerenciado, GPUs (A100s e L40S), suporte Kubernetes, object storage, scale-to-zero; removeu free tier permanente em 2024; billing inter-region networking (fev) + volume snapshots (jan) em 2026; escolha para produção global com performance máxima
- **Vercel**: imbatível para Next.js + backends simples/rápidos; DX e CDN premium; 4 aumentos de preço desde 2024; Vercel Services lançado (microsserviços + Vercel Connect agent stack); Fluid Compute (Active CPU pricing, -80% funções idle)
- **Custos comparados**:
  - Render/Railway: ~$7-15/mês para SaaS típico
  - Fly.io: ~$10-20/mês (considerando IPv4 + volume snapshots)
  - Vercel: $20-200/mês dependendo do uso real
- **AWS App Runner**: em maintenance mode (não aceita novos clientes desde 30/abr) → novos projetos devem usar ECS Express Mode

## 🔗 Conexões
- [[2026-07-12 - Programação e Desenvolvimento]]
- [[2026-07-12 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [PaaS Comparison 2026: Railway, Render, Fly.io vs Vercel - BirJob](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Fly.io vs Railway 2026 - The Software Scout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [Best Cloud Application Deployment Platforms 2026 - Railway Blog](https://blog.railway.com/p/best-cloud-application-deployment-platforms-2026)

## 🚧 Lacunas
- Railway Metal (infra própria) está totalmente estável após incidentes de maio?
- Fly.io GPU instances (A100/L40S) são viáveis para inferência de modelos locais?
- Vercel Services (microsserviços) compete diretamente com Railway para backends?
```
