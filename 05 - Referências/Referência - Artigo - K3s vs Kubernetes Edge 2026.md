---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [kubernetes, edge, k3s, infraestrutura, devops]
fonte: web
autor: múltiplos (spacelift, cloudzero, kx.cloudingenium, kubeblogs)
url: https://spacelift.io/blog/k3s-vs-k8s
---

# Referência — K3s vs Kubernetes (Edge) 2026

## Resumo

Comparação prática entre K3s, MicroK8s e Kubernetes padrão para cenários de edge computing e uso por desenvolvedores individuais em 2026.

## Pontos principais

### Setup e instalação
- **K8s padrão**: setup pode levar horas ou dias; requer múltiplos componentes e configuração manual
- **K3s**: instalação via binário único (~40MB); cluster de servidor pronto com um único comando; agentes se juntam com token
- **MicroK8s**: `snap install microk8s --classic` no Ubuntu; adicionar nó = 1 comando; oferece HA automático

### Requisitos de recursos
| Distribuição | RAM mínima | CPU |
|---|---|---|
| K8s padrão | 4GB+ por nó | 2 cores |
| K3s | 512MB | 1 core |
| MicroK8s | 2GB | 1 core |

### Quando usar cada um
- **K3s**: edge computing, IoT, ARM boards, VPS com recursos limitados — padrão moderno para K8s leve
- **MicroK8s**: clusters edge com HA opcional, suporte Canonical, Ubuntu-first
- **K8s padrão / managed (EKS, GKE, AKS)**: produção enterprise de grande escala (50-100+ nós)

### Capacidade de produção
Ambos (K3s e MicroK8s) são certificados pela CNCF e passam nos mesmos testes de conformidade que GKE/EKS.
K3s é adequado para até ~50-100 nós; acima disso, considerar distribuições enterprise.

## Fontes
- https://spacelift.io/blog/k3s-vs-k8s
- https://kx.cloudingenium.com/en/k3s-vs-minikube-vs-microk8s-local-kubernetes/
- https://www.cloudzero.com/blog/k3s-vs-k8s/
- https://institute.sfeir.com/en/kubernetes-training/table-comparison-distributions-kubernetes-2026/
- https://oneuptime.com/blog/post/2025-11-27-kubernetes-edge-flavors/view

## Conexões
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]]
- [[Pesquisa - 2026-05-14 - Deploy e Infraestrutura]]
