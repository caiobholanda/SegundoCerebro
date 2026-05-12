---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, cloud]
pergunta-central: "Quais são as principais novidades em Cloud e Infraestrutura em 2026?"
relacionado-a: []
---

# Pesquisa — Cloud e Infraestrutura (Maio 2026)

## Estado do Mercado Cloud

O mercado global de cloud ultrapassou **US$ 700 bilhões em 2025**, com AWS (32%), Azure (23%) e GCP (12%) dominando. No Brasil, a chegada de regiões locais de AWS (São Paulo), Azure (SP + Rio) e GCP (SP) reduziu latência e abriu o mercado enterprise nacional.

**Multi-cloud virou padrão** para empresas médias e grandes: não por estratégia, mas por acidente — diferentes times escolhem diferentes provedores. Ferramentas de gestão multi-cloud (Terraform, Pulumi, CloudHealth) cresceram em consequência.

## AWS — Novidades Relevantes

- **Bedrock Agents**: orquestração de agentes de IA nativamente na AWS, integrado com S3, DynamoDB e Lambda
- **Aurora DSQL**: banco distribuído serverless com latência sub-milissegundo entre regiões
- **Application Composer GA**: infraestrutura como diagrama visual (sem escrever YAML/JSON)
- **Graviton 4**: processadores ARM para EC2, até 40% mais eficientes que geração anterior

## Azure — Novidades Relevantes

- **Azure AI Foundry**: plataforma unificada para build, deploy e monitor de apps IA (substitui Azure OpenAI Service)
- **Azure Container Apps**: serverless para containers com KEDA, substituindo AKS para casos simples
- **Dev Box 2.0**: máquina de desenvolvimento na nuvem pré-configurada, integrada ao GitHub Codespaces

## DevOps e Containers

**Kubernetes** continua obrigatório para orquestração, mas a complexidade afastou pequenas equipes. Abstrações como **Railway**, **Render** e **Fly.io** cresceram muito — deploy de containers sem gerenciar cluster, com pricing previsível.

**GitHub Actions** consolidou como CI/CD padrão para projetos open source e startups. Para enterprise, Jenkins ainda existe mas perde espaço para GitLab CI e Azure DevOps.

**Docker Desktop** perdeu espaço para alternativas (OrbStack no Mac, Podman Desktop cross-platform) após mudanças de licença, mas Docker Hub permanece o registry mais usado.

## IaC (Infraestrutura como Código)

| Ferramenta | Caso de Uso | Tendência |
|-----------|-------------|-----------|
| Terraform / OpenTofu | Multi-cloud, teams grandes | Estável |
| Pulumi | IaC em linguagem real (TS/Python) | Crescendo |
| AWS CDK | AWS-only, devs preferem código | Crescendo |
| Ansible | Config management, bare metal | Estável |

**OpenTofu** (fork open source do Terraform após mudança de licença da HashiCorp) ganhou adoção significativa, especialmente em empresas que não querem dependência de vendor.

## Plataformas PaaS para Projetos Pequenos/Médios

Para projetos como `sistema-chamados` que não precisam de Kubernetes:
- **Railway**: deploy direto do GitHub, SQLite/PostgreSQL gerenciado, pricing por uso real
- **Render**: similar ao Railway, forte em web services e cron jobs
- **Fly.io**: containers com regiões globais, ótimo para baixa latência
- **Vercel/Netlify**: frontend + serverless functions, não adequado para Node.js fullstack com DB

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — sistema deployado no Railway, exatamente este padrão
- [[Pesquisa - 2026-05-08 - Programacao e Desenvolvimento]] — ferramentas de desenvolvimento que se integram ao cloud

## Fontes

- https://aws.amazon.com/pt/new
- https://azure.microsoft.com/pt-br/updates
- https://cloud.google.com/blog
- https://railway.app/changelog
