```markdown
---
tipo: pesquisa
criado: 2026-05-22
atualizado: 2026-05-22
pergunta-central: Quais são os principais conceitos, práticas e ferramentas para realizar deploy e gerenciar infraestrutura em Cloud?
relacionado-a: []
tags: [pesquisa, dev, infra]
---

# Pesquisa - Deploy e Infraestrutura Cloud

## ❓ Pergunta central
Quais são os principais conceitos, práticas e ferramentas para realizar deploy e gerenciar infraestrutura em Cloud?

## 🎯 Síntese (3-5 linhas)
Deploy e infraestrutura em Cloud envolvem práticas como automação, escalabilidade e resiliência. Ferramentas como Kubernetes, Terraform e serviços gerenciados (AWS, Azure, GCP) são fundamentais. O foco está em pipelines CI/CD robustos, otimização de custos e segurança. A escolha da abordagem depende do caso de uso, seja para microsserviços, aplicações monolíticas ou serverless.

## 🔬 Detalhes
- **Automação**: O uso de pipelines CI/CD (Continuous Integration/Continuous Deployment) ajuda a reduzir erros manuais e acelera o ciclo de desenvolvimento.
- **Orquestração de contêineres**: Kubernetes é amplamente utilizado para gerenciar contêineres em produção, garantindo escalabilidade e alta disponibilidade.
- **Infraestrutura como Código (IaC)**: Ferramentas como Terraform e CloudFormation permitem gerenciar recursos de infraestrutura de forma declarativa e reproduzível.
- **Modelos de deployment**: Blue-Green Deployment e Canary Release são estratégias comuns para minimizar o impacto de atualizações.
- **Serviços gerenciados**: Plataformas como AWS Elastic Beanstalk, Google App Engine e Azure App Services simplificam a gestão de infraestrutura.
- **Monitoramento e observabilidade**: Ferramentas como Prometheus, Grafana e serviços nativos de Cloud (ex.: AWS CloudWatch) garantem visibilidade e controle.
- **Segurança na Cloud**: Práticas como configuração de firewalls, controle de acesso granular e criptografia de dados são essenciais.

## 🔗 Conexões
- [[Pesquisa - Kubernetes e Orquestração de Contêineres]]
- [[Pesquisa - Infraestrutura como Código (IaC)]]
- [[Referência - AWS Well-Architected Framework]]

## 📚 Fontes
- [[Referência - Site Reliability Engineering (SRE) do Google]]
- [[Referência - Livro Terraform Up & Running]]
- [[Referência - AWS Well-Architected Framework]]
- [[Referência - Artigo: What is Kubernetes? (kubernetes.io)]]

## 🚧 Lacunas
- Quais são os trade-offs entre diferentes estratégias de deployment, como Blue-Green e Canary?
- Como calcular adequadamente o custo-benefício entre soluções serverless e provisionamento de infraestrutura tradicional?
- Quais tendências futuras devem impactar a gestão de infraestrutura em Cloud nos próximos 5 anos?
```