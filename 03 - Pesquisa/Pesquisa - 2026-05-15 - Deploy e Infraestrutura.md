---
tipo: pesquisa
status: ativo
criado: 2026-05-15
atualizado: 2026-05-15
tags: [pesquisa, cloud, devops, infraestrutura, kubernetes, gpu, docker, gitops]
pergunta-central: "Quais são as principais evoluções de deploy e infra em 2026 — Dynamic Resource Allocation (DRA) para GPU em K8s 1.34, KAI Scheduler, Docker Kanvas e consolidação do GitOps?"
relacionado-a: [Pesquisa - 2026-05-14 - Deploy e Infraestrutura, Pesquisa - 2026-05-13 - Deploy e Infraestrutura, Pesquisa - 2026-05-08 - Cloud e Infraestrutura]
---

# Pesquisa — Deploy e Infraestrutura (15/05/2026)

## ❓ Pergunta central

Quais são as principais evoluções de deploy e infra em 2026 — Dynamic Resource Allocation (DRA) para GPU em K8s 1.34, KAI Scheduler, Docker Kanvas e consolidação do GitOps?

## 🎯 Síntese

O marco mais relevante de infra em 2026 é o **GA do DRA (Dynamic Resource Allocation) no Kubernetes 1.34** (março/2026): substitui o device-plugin framework para GPU e hardware especializado, e a NVIDIA doou seu driver DRA à CNCF no KubeCon Europe — padronizando definitivamente o scheduling de GPU em K8s de produção. O **Docker Kanvas** chegou para converter Docker Compose em artefatos K8s automaticamente, desafiando Helm e Kustomize. O GitOps consolidou-se como método dominante de delivery. Nas plataformas PaaS, Fly.io adicionou GPU instances (A100/L40S) e Vercel suporta Node 26 no Sandbox.

## 🔬 Detalhes

### 1. Kubernetes 1.34 — DRA (Dynamic Resource Allocation) GA

**Trajetória do DRA:**
| Versão K8s | Status DRA |
|-----------|-----------|
| 1.26 | Alpha (introdução) |
| 1.31 | Redesenho |
| 1.32 | Beta (v1beta1) |
| 1.33 | Beta (v1beta2) |
| **1.34** (março/2026) | **GA** ✅ |

**O que muda com DRA GA:**
- Substitui definitivamente o `device-plugin framework` para exposição de hardware especializado (GPU, FPGA, NPU) a Pods
- Hardware drivers publicam *atributos estruturados* do recurso; pods expressam *constraints* — o scheduler faz o match no momento da alocação
- Suporta NVLink groups, PCIe root complexes, NUMA affinity para cargas de treinamento distribuído
- **KubeCon Europe 2026**: NVIDIA doou seu driver DRA à CNCF — event que padroniza GPU scheduling para toda a comunidade K8s

**Impacto prático**: times que rodam inferência LLM em K8s podem agora alocar GPUs com restrições topológicas precisas — evitando cross-socket traffic que degrada performance.

### 2. KAI Scheduler — NVIDIA para AI Workloads em K8s

- **Repositório**: `github.com/NVIDIA/KAI-Scheduler` — projeto open-source NVIDIA
- Funciona como **scheduler secundário** ao lado do `kube-scheduler` padrão — não substitui, especializa
- **Gang scheduling**: todos os pods de um job iniciam juntos ou nenhum inicia — evita GPUs idle em treinamento distribuído (ex: 8 pods precisam iniciar juntos ou o job espera)
- Resolve o problema central de AI workloads em K8s: o scheduler padrão não foi desenhado para GPU batch jobs
- Combinado com DRA GA = stack completo para produção de AI/ML em K8s

### 3. Docker Kanvas — Compose → Kubernetes Sem Atrito

- Nova plataforma Docker que converte Docker Compose files em artefatos K8s automaticamente
- Disponível como extensão via Docker Hub
- Desafia Helm e Kustomize ao usar a sintaxe familiar do Docker Compose como abstração
- **Proposta de valor**: bridge entre dev local (Compose) e produção cloud (K8s) sem necessidade de aprender YAML K8s ou Helm Charts
- Versões atuais estáveis de referência: Docker Engine v29.2.1, Kubernetes v1.35.4

### 4. GitOps — Método Dominante em 2026

- **GitOps** consolidado como abordagem padrão para gerenciar K8s em 2026
- Repositório Git = única fonte de verdade para toda infraestrutura
- Ferramentas líderes: ArgoCD, Flux (ambos CNCF incubating/graduated)
- Elimina drift de configuração — o que está no Git é o que está no cluster, ponto
- **Serverless K8s** emergiu como mainstream: Knative e OpenFaaS com managed offerings dos cloud providers — deploy sem configurar Worker Node
- **NKP Metal** (Nutanix): bare-metal K8s para workloads performance-sensitive

### 5. PaaS e Plataformas de Deploy Rápido

**Fly.io (maio/2026):**
- Adicionou suporte a GPU instances: A100s e L40S para inferência/treinamento
- Managed Postgres, object storage, suporte K8s, scale-to-zero — plataforma completa
- Posiciona-se como alternativa full-featured a AWS para times pequenos com cargas de AI

**Vercel (maio/2026):**
- **Node 26** suportado no Vercel Sandbox
- Merged flow e step routes em single combined handler — reduz function invocations e queue overhead
- `sourcemap` option adicionada a builders para customizar emissão de source maps

**Railway:**
- Continua com modelo de deploy zero-config (detecta framework, constrói, deploya em <1min)
- Sem Dockerfiles obrigatórios, sem YAML, sem decisões de infraestrutura

### 6. Comparativo Prático — Escolha de Deploy em 2026

| Cenário | Recomendação |
|---------|-------------|
| Frontend + serverless | Vercel ou Netlify |
| Backend full-stack, time pequeno | Railway (zero-config) ou Fly.io |
| AI/ML workloads com GPU | Fly.io (A100/L40S) ou GCP/AWS com K8s+DRA |
| Infra corporativa complexa | K8s 1.34 + DRA + GitOps (ArgoCD) |
| Edge/IoT/low-resource | K3s (40MB, 512MB RAM) |

## 🔗 Conexões

- [[Pesquisa - 2026-05-14 - Deploy e Infraestrutura]] — K3s, Crossplane, Terraform Smart Plans, OpenCost, AWS Kiro
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]] — base de K8s, Vercel, Railway, Docker
- [[Pesquisa - 2026-05-08 - Cloud e Infraestrutura]] — contexto histórico base

## 📚 Fontes

- [Docker Kanvas Challenges Helm and Kustomize — InfoQ](https://www.infoq.com/news/2026/01/docker-kanvas-cloud-deployment/)
- [Kubernetes GPU Orchestration 2026: DRA, KAI Scheduler — Spheron](https://www.spheron.network/blog/kubernetes-gpu-orchestration-2026/)
- [KAI Scheduler — GitHub NVIDIA](https://github.com/NVIDIA/KAI-Scheduler)
- [10 Kubernetes Trends 2026 — LoginLine](https://www.loginline.com/en/blog/2026-kubernetes-trends)
- [Beyond YAML in Kubernetes: The 2026 Automation Era — Pulumi](https://www.pulumi.com/blog/beyond-yaml-kubernetes-2026-automation-era/)
- [Deploying Full Stack Apps 2026 — NuCamp](https://www.nucamp.co/blog/deploying-full-stack-apps-in-2026-vercel-netlify-railway-and-cloud-options)
- [Fly.io vs Railway 2026 — TheSoftwareScout](https://thesoftwarescout.com/fly-io-vs-railway-2026-which-developer-platform-should-you-deploy-on/)
- [Vercel Release Notes May 2026 — Releasebot](https://releasebot.io/updates/vercel)

## 🚧 Lacunas

- DRA + KAI Scheduler: documentação de setup passo a passo para inferência LLM em K8s (não apenas treinamento)
- Docker Kanvas: suporta composições complexas com volumes, networking customizado? Ou apenas casos básicos?
- Fly.io GPU: preço das instâncias A100/L40S comparado ao AWS/GCP para inferência?
- ArgoCD vs Flux: qual avançou mais em 2026 em termos de features para GitOps em AI workflows?
- Node 26 no Vercel Sandbox: disponível em produção ou apenas sandbox/preview?
