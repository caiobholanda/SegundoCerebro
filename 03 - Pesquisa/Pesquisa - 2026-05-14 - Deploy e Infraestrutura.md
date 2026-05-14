---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, cloud, devops, infraestrutura, kubernetes, iac]
pergunta-central: "Quais são as escolhas práticas e acionáveis de infra/deploy para um desenvolvedor individual ou time pequeno em 2026 — especialmente em Edge K8s, Crossplane, Terraform, FinOps e novas ferramentas como AWS Kiro?"
relacionado-a: [Pesquisa - 2026-05-13 - Deploy e Infraestrutura, Pesquisa - 2026-05-08 - Cloud e Infraestrutura]
---

# Pesquisa — Deploy e Infraestrutura (14/05/2026)

## Pergunta central

Quais são as escolhas práticas e acionáveis de infra/deploy para um desenvolvedor individual ou time pequeno em 2026 — especialmente em Edge K8s, Crossplane, Terraform, FinOps e novas ferramentas como AWS Kiro?

## Síntese (3-5 linhas)

K3s consolidou-se como o padrão de facto para Kubernetes leve e edge: setup em minutos com binário único de 40MB, produção-ready com 512MB de RAM. Crossplane só vale a pena para times pequenos que já operam Kubernetes — do contrário, Terraform (ou OpenTofu) ainda é a escolha mais racional. Terraform "Smart Plans" não é uma feature isolada: a experiência melhorada de plan/apply vive no HCP Terraform (Free tier suficiente para 500 recursos gerenciados). Para FinOps em K8s, OpenCost é a escolha zero-custo e CNCF-certificada para clusters pequenos/médios; Kubecost (agora IBM) adiciona reconciliação real de billing para quem usa spot/reservas. AWS Kiro entrou em preview público gratuito — IDE agêntico baseado em Spec-Driven Development, sem necessidade de conta AWS, sem waitlist.

## Detalhes

### 1. Edge K8s: K3s vs MicroK8s vs K8s padrão

**Setup real comparado:**

| Aspecto | K8s padrão (kubeadm) | K3s | MicroK8s |
|---|---|---|---|
| Tempo de setup | Horas a dias | Minutos | Minutos |
| Binário | Múltiplos componentes | 1 binário ~40MB | snap package |
| RAM mínima | 4GB/nó | 512MB | 2GB |
| CPU mínima | 2 cores | 1 core | 1 core |
| ARM support | Sim | Sim (nativo) | Sim |
| Produção | Sim (enterprise) | Sim (até ~100 nós) | Sim |
| HA automático | Manual | Manual + embedding etcd | Automático |

**Conclusão prática**: Para edge, IoT, VPS barato ou homelab, K3s é a escolha óbvia. Para Ubuntu/Canonical-first com HA fácil, MicroK8s. Para produção enterprise de grande escala: managed services (EKS/GKE/AKS).

Ambos K3s e MicroK8s são **certificados CNCF** — passam nos mesmos testes de conformidade que GKE e EKS.

### 2. Crossplane: quando faz sentido para times pequenos?

**Resposta direta**: Crossplane só faz sentido para times < 5 devs que **já operam Kubernetes fluentemente**.

**Use Crossplane se**:
- Stack já é Kubernetes-centric
- Quer gerenciar infra de aplicação (bancos, filas, cache) com os mesmos manifests YAML da aplicação
- Precisa de drift detection automático (reconciliação contínua, sem cronjob de `terraform plan`)
- Pretende criar uma plataforma self-service de infra via CRDs

**Use Terraform/OpenTofu se**:
- Time novo em IaC
- Sem K8s no stack
- Infra muda raramente
- Menos overhead cognitivo

**Padrão pragmático híbrido**: Terraform para provisionar a infra base (cluster, rede, IAM) + Crossplane para gerenciar infra dentro do cluster.

### 3. Terraform "Smart Plans": Community vs Enterprise

O termo "Smart Plans" não corresponde a uma feature oficialmente nomeada pelo HashiCorp. O que existe:

- **Terraform CLI (Community/OSS)**: `terraform plan` básico, gratuito, sem limitação de recursos
- **HCP Terraform Free**: até 500 recursos gerenciados, inclui execução remota, VCS integration, SSO, Sentinel OPA, run tasks — **gratuito**. Legacy Free tier encerra em 31/03/2026, todos migram automaticamente para o novo Free tier
- **HCP Terraform Plus/Enterprise**: features avançadas de auditoria, self-hosted, multi-team governance — a partir de ~$36k/ano (enterprise)

**Conclusão**: A experiência melhorada de plan com resumo, estimativa de custo e policy check está disponível no **HCP Terraform Free** — não requer Enterprise.

### 4. AWS Kiro: disponível para todos, sem conta AWS

AWS Kiro é um IDE agêntico (não um serviço AWS), construído sobre Code OSS. Entrou em **Public Preview gratuito** sem waitlist.

**Como acessar agora**:
1. Acesse https://kiro.dev/
2. Baixe para Windows/macOS/Linux
3. Login com Google, GitHub ou AWS Builder ID — **sem conta AWS necessária**
4. Versão web: https://app.kiro.dev/

**Diferenciais vs Cursor/Copilot**:
- **Spec-Driven Development**: cria especificação formal antes de escrever código
- **Spec Check**: verificação matemática de requisitos para evitar "AI slop"
- **Parallel Task Execution**: tarefas independentes em paralelo — ~75% menos tempo em projetos grandes
- **Quick Plan mode**: pula aprovação manual para features bem definidas
- Modelos: Claude Sonnet 4.0 e 3.7

**Preço futuro pós-preview**: ~$20/mês (nível similar ao Cursor)

### 5. FinOps em K8s: OpenCost vs Kubecost

| Critério | OpenCost | Kubecost (IBM) |
|---|---|---|
| Custo | Gratuito (Apache 2.0) | Freemium + Enterprise |
| Governança | CNCF Incubating (out/2024) | IBM FinOps Suite |
| Spot/desconto | Não reconcilia | Sim (reconciliação real) |
| Multi-cluster | Limitado | Sim (Enterprise) |
| Setup | Helm simples | Helm, mais configurações |
| Ideal para | Dev individual, times pequenos | Times médios/grandes |

**OpenCost na prática**:
```bash
helm install opencost opencost/opencost -n opencost --create-namespace
```
Funciona em EKS, AKS, GKE, OpenShift e on-prem. Integra com Prometheus + Grafana para visualização.

**Kubecost**: desde a aquisição pela IBM em set/2024, integra com Cloudability e Turbonomic. Complexidade aumentou para times pequenos.

**Recomendação**: Para dev individual ou time < 5 devs sem spot pricing complexo → **OpenCost**. Para empresa com reservas, savings plans e spot → considerar Kubecost ou alternativas SaaS (CloudZero, Finout).

### 6. Novidades em infra/deploy — Google Cloud Next 2026

Principais anúncios de infra cloud de maio de 2026:

- **Google TPU 8**: dual chip approach — TPU 8t (treinamento, até 9.600 TPUs + 2 PB de memória compartilhada HBM) e TPU 8i (inferência, 1.152 TPUs por pod)
- **Virgo Network**: nova fabric de datacenter megascale para AI Hypercomputer
- **Gemini Enterprise Agent Platform**: Agent Studio, Agent-to-Agent Orchestration, Agent Registry, Agent Gateway
- **Spanner Omni**: Spanner rodando fora do Google Cloud (multi-cloud, on-prem, laptop)
- **Oracle OCI**: lançamento do OCI Enterprise AI, modelos Grok 4.3 e NVIDIA Nemotron 3 Nano Omni

## Conexões
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]]
- [[Pesquisa - 2026-05-08 - Cloud e Infraestrutura]]
- [[Referência - Artigo - K3s vs Kubernetes Edge 2026]]
- [[Referência - Artigo - Kubecost vs OpenCost FinOps Kubernetes 2026]]
- [[Referência - Doc - AWS Kiro IDE Agentic 2026]]
- [[Referência - Artigo - Crossplane vs Terraform Times Pequenos 2026]]
- [[Referência - Artigo - Cloud Computing Trends 2026 CloudKeeper]]

## Fontes
- K3s vs K8s: https://spacelift.io/blog/k3s-vs-k8s
- Kubernetes Distributions 2026: https://institute.sfeir.com/en/kubernetes-training/table-comparison-distributions-kubernetes-2026/
- K3s vs MicroK8s vs Minikube 2026: https://kx.cloudingenium.com/en/k3s-vs-minikube-vs-microk8s-local-kubernetes/
- MicroK8s vs K3s (TechTarget): https://www.techtarget.com/searchitoperations/answer/When-should-you-use-K3s-vs-MicroK8s
- Crossplane vs Terraform: https://spacelift.io/blog/crossplane-vs-terraform
- Crossplane vs Terraform (Loft): https://www.vcluster.com/blog/crossplane-vs-terraform
- HCP Terraform Plans & Features: https://developer.hashicorp.com/terraform/cloud-docs/overview
- HCP Terraform Enhanced Free Tier: https://www.hashicorp.com/en/blog/continuing-hcp-terraform-s-enhanced-free-tier-experience
- AWS Kiro: https://kiro.dev/
- Kiro sem AWS account: https://onedollarvps.com/blogs/aws-kiro-ide-download-and-free-use
- Kiro Spec Check (GeekWire): https://www.geekwire.com/2026/aws-targets-ai-slop-with-new-spec-check-in-kiro-coding-tool-amid-scrutiny-of-agent-reliability/
- Kubecost vs OpenCost 2026: https://www.cloudzero.com/blog/kubecost-vs-opencost/
- OpenCost CNCF: https://opencost.io/blog/cncf-incubation/
- OpenCost GitHub: https://github.com/opencost/opencost
- Google Cloud Next 2026 recap: https://blog.google/innovation-and-ai/infrastructure-and-cloud/google-cloud/google-cloud-next-26-recap/

## Lacunas

- **Kiro pós-preview**: qual será o pricing definitivo e se haverá tier gratuito permanente
- **OpenCost multi-cluster**: roadmap para suporte nativo a múltiplos clusters sem enterprise
- **K3s performance benchmark real**: comparação de latência/throughput K3s vs EKS em carga alta
- **Spanner Omni pricing**: como ficará o custo de rodar Spanner fora do GCP
- **Crossplane v2**: roadmap de simplificação para tornar adoção mais viável sem expertise K8s profundo
