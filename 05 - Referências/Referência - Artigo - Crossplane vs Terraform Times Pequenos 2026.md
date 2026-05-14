---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [crossplane, terraform, iac, kubernetes, devops, platform-engineering]
fonte: web
autor: múltiplos (spacelift, vcluster, terrateam, platformengineering.org)
url: https://spacelift.io/blog/crossplane-vs-terraform
---

# Referência — Crossplane vs Terraform: Guia para Times Pequenos 2026

## O problema central

Terraform e Crossplane resolvem IaC de formas fundamentalmente diferentes:
- **Terraform**: CLI imperativa com state file; aplica mudanças sob comando
- **Crossplane**: extende o controller pattern do Kubernetes; reconcilia estado continuamente (loop de controle)

## Quando Terraform ainda é melhor (times pequenos)

- Time novo em IaC — curva de aprendizado menor
- Infraestrutura estável que muda raramente (VPCs, clusters, DNS base)
- Sem Kubernetes no stack — Crossplane requer K8s para rodar
- Menos de 2-3 engenheiros colaborando simultâneamente

**Limitação real do Terraform em colaboração**: state file exige lock exclusivo durante apply — nenhum outro engenheiro pode aplicar mudanças no mesmo período.

## Quando Crossplane faz sentido para times pequenos

- Time **já usa Kubernetes** e tem fluência nele
- Time de microserviços querendo definir infra junto com a aplicação (mesmos manifests YAML)
- Precisa de **reconciliação contínua** (drift detection automático, sem `terraform plan` manual)
- Quer uma plataforma self-service de infra para outros devs consumirem via CRDs

**Resposta direta**: Para times < 5 devs **sem experiência em K8s**, Crossplane NÃO vale a pena. O overhead de aprender K8s + Crossplane supera os benefícios. Para times < 5 devs **que já operam K8s**, Crossplane é pragmático e poderoso.

## Abordagem híbrida recomendada

Usar os dois juntos:
1. **Terraform**: provisionar infraestrutura base (cluster K8s, redes, IAM)
2. **Crossplane**: gerenciar infra de aplicação dentro do cluster (bancos, filas, etc.)

## Fontes
- https://spacelift.io/blog/crossplane-vs-terraform
- https://www.vcluster.com/blog/crossplane-vs-terraform
- https://terrateam.io/blog/crossplane-vs-terraform
- https://platformengineering.org/blog/terraform-vs-pulumi-vs-crossplane-iac-tool
- https://blog.crossplane.io/crossplane-vs-terraform/

## Conexões
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]]
- [[Pesquisa - 2026-05-14 - Deploy e Infraestrutura]]
