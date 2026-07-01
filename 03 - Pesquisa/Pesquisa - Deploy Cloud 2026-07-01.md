---
tipo: pesquisa
status: ativo
criado: 2026-07-01
atualizado: 2026-07-01
tags: [deploy, cloud, railway, flyio, vercel, hosting]
related: []
pergunta-central: Quais são as novidades em plataformas de deploy e cloud em julho de 2026?
relacionado-a: Programação
---

# Deploy e Cloud — Novidades Julho 2026

## Vercel — Vercel Ship 2026 (junho/julho)

O maior movimento recente vem do Vercel Ship 2026, com anúncios que mudam o posicionamento da plataforma de "hosting de frontend" para stack completo de agentes e microsserviços:

- **Vercel Services** (lançado 1º de julho): microsserviços como cidadãos de primeira classe na plataforma. Frontend e backend deployados juntos, comunicação interna sem passar pela internet pública.
- **Vercel Connect**: camada de acesso seguro para agentes — credenciais temporárias com escopo por tarefa individual. Parte da estratégia "Agent Stack".
- **Vercel for Enterprise Apps and Agents**: identidade, acesso e governança para deploy corporativo de agentes.
- **eve**: framework open-source de agentes, lançado como a forma interna que o Vercel usa para construir e escalar agentes em produção.
- **Vercel AI SDK**: adicionado `serviceTier` provider option para modelos Fireworks; Workflow Development Kit em beta com retry handling mais robusto, fixes de HTTP/2 e melhorias de observabilidade.

Contexto de preço: plano Pro ainda em $20/usuário/mês. Um time de 3 pessoas paga $60–$150/mês no Vercel versus $15–$45/mês no Railway para carga equivalente.

## Railway — Postgres HA e Agentic Provisioning

- **Março 2026**: Railway lançou Postgres com alta disponibilidade via Patroni (one-click). Significativo para times que usavam Railway como proto e precisavam de Postgres resiliente sem sair da plataforma.
- **Agentic provisioning** via Stripe Projects CLI chegou algumas semanas depois: provisionar serviços via CLI agentic, sem precisar da UI.
- Remoção do crédito pré-pago ainda vigora: obrigatório cartão pós-pago. Planos: Hobby ($5/mês) ou Pro ($20/mês por membro).
- Modelo de cobrança baseado em uso real de CPU, memória e rede — réplicas cobradas apenas pelo tempo ativo.

## AWS App Runner — Fim de um Ciclo

- **31 de março 2026**: AWS anunciou modo de manutenção para o App Runner.
- **30 de abril 2026**: parou de aceitar novos clientes. Sem novos recursos.
- Substituto oficial da AWS: **ECS Express Mode** — abstração single-resource que provisiona cluster ECS, ALB, auto-scaling e CloudWatch. Limitação: só deploy de imagens pré-buildadas (sem source builds como o App Runner oferecia).
- Alternativas externas que absorveram a migração: Railway, Render (flat fee $25/mês + compute), Fly.io para controle de latência regional, Cloud Run para quem quer sair da AWS.

## Fly.io — Incidente e Billing

- **25 de junho 2026**: Fly.io reportou melhoria nos tempos de provisão dos builders Depot e reverteu o deploy strategy padrão para Depot (com flyctl para alternativas).
- Incidente de ingestão de métricas em múltiplos hosts afetou dashboards do fly-metrics.net no final de junho.
- Billing de volume snapshots (jan/26) e inter-region private networking (fev/26) continuam em vigor.
- GPUs agora disponíveis para todos na plataforma (sem restricção de early access).

## Hetzner — Alta de Preços

- **1º de abril 2026**: Hetzner aumentou preços de cloud e servidores em 30–40%. Servidor CX22 foi de ~€3,29 para ~€4,49/mês. Impacto direto para quem usava Hetzner como alternativa barata ao mercado americano.

## Tendências Serverless em 2026

- **Edge computing**: mais de 75% do dado enterprise processado na edge. Serverless functions integradas diretamente em CDNs.
- **Stateful serverless**: o problema histórico de estado está resolvido com durable functions, managed queues e caching dedicado.
- **AI-native serverless**: auto-otimização de performance via IA; arquiteturas event-driven ganham tração como padrão de fato.
- **Multi-cloud**: demanda por workflows portáteis sem lock-in em um único provider.
- Redução de custos média de 60–70% em infraestrutura ao migrar para serverless, com ganho de 70% em velocidade de deploy (dados de mercado).

## Panorama Geral de Mercado

- AWS: 29% de market share previsto para 2026.
- Azure: crescimento de 34% YoY (2024–25), puxado por investimento em IA.
- Infraestrutura cloud cresceu 52% no Q4 2024; previsão de crescimento >70% em IaaS (2025–2026) por demanda de IA.
- Heroku permanece em sustaining mode: sem novos recursos, sem novos clientes Enterprise.

## Fontes

- [Vercel Ship 2026 recap](https://vercel.com/blog/vercel-ship-2026-recap)
- [Vercel Weekly 2026-06-29](https://community.vercel.com/t/vercel-weekly-2026-06-29/44602)
- [AWS App Runner Is Dead — Here's What You Should Use Instead](https://dev.to/parag477/aws-app-runner-is-dead-heres-what-you-should-use-instead-2026-1hp7)
- [AWS Ends WorkMail and Moves App Runner to Maintenance Mode — InfoQ](https://www.infoq.com/news/2026/04/aws-deprecates-workmail-apprunne/)
- [Railway Free Tier 2026](https://www.saaspricepulse.com/tools/railway)
- [Fly.io Free Tier 2026: What's Left After the Cuts?](https://www.saaspricepulse.com/tools/flyio)
- [PaaS Comparison 2026: Railway, Render, Fly.io vs Vercel](https://www.birjob.com/blog/paas-comparison-railway-render-fly-vercel-2026)
- [Railway vs Vercel 2026: Real Cost Math](https://justinmckelvey.com/blog/railway-vs-vercel)
- [The Best Cloud Hosting Platforms in 2026 — Railway Blog](https://blog.railway.com/p/best-cloud-hosting-platforms-2026)
- [5 Serverless Computing Trends in 2026](https://rentamac.io/serverless-computing-trends/)
- [Top Cloud Providers 2026 — Ranked](https://scalar.usc.edu/works/capital/top-cloud-providers-2026-leading-companies)
