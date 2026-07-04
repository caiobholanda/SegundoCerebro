```markdown
---
tipo: pesquisa
criado: 2026-07-04
atualizado: 2026-07-04
pergunta-central: Como estruturar um processo eficiente, seguro e escalável de deploy utilizando infraestrutura em cloud?
relacionado-a: []
related: [[Projeto - Sistema Chamados]]
tags: [pesquisa, dev, infra]
---

# Pesquisa - Deploy e Infraestrutura Cloud

## ❓ Pergunta central
Como estruturar um processo eficiente, seguro e escalável de deploy utilizando infraestrutura em cloud?

## 🎯 Síntese (3-5 linhas)
A infraestrutura em cloud permite escalabilidade, alta disponibilidade e flexibilidade para processos de deploy. Estratégias como CI/CD (Integração Contínua e Entrega Contínua), uso de contêineres e orquestradores como Kubernetes, e boas práticas de segurança são fundamentais. Escolher o provedor de cloud adequado às necessidades do projeto também é crucial para uma operação eficiente.

## 🔬 Detalhes
- A infraestrutura em cloud permite provisionamento de recursos on-demand, reduzindo custos iniciais e otimizando a escalabilidade.
- Serviços populares de cloud incluem AWS, Google Cloud Platform (GCP) e Microsoft Azure, cada um com características específicas para diferentes necessidades.
- Contêineres (como Docker) e orquestradores (como Kubernetes) são amplamente utilizados para gerenciar e escalar aplicações de forma eficiente.
- Práticas de CI/CD automatizam o processo de build, testes e deploy, reduzindo erros manuais e acelerando o ciclo de desenvolvimento.
- Observabilidade e monitoramento são pilares essenciais para a manutenção de serviços em cloud, com ferramentas como Prometheus, Grafana e Datadog.
- A segurança em cloud deve incluir autenticação forte, controle de acesso baseado em funções (RBAC), criptografia de dados em trânsito e em repouso, e práticas de gestão de vulnerabilidades.

## 🔗 Conexões
- [[Projeto - Sistema Chamados]]
- [[Referência - Fundamentos de Kubernetes]]
- [[Referência - AWS Guia de Início Rápido]]

## 📚 Fontes
- [[Referência - Livro: Kubernetes Up & Running]]
- https://aws.amazon.com/what-is/devops/
- https://cloud.google.com/learn/what-is-cloud-computing

## 🚧 Lacunas
- Quais são os principais critérios para escolher entre provedores de cloud como AWS, GCP e Azure para um projeto específico?
- Como implementar CI/CD com segurança, garantindo que os pipelines estejam protegidos contra acessos indevidos?
- Quais são os trade-offs entre diferentes estratégias de deploy, como blue-green deployment, canary releases e rolling updates?
```