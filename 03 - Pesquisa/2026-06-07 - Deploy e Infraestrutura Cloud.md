```markdown
---
tipo: pesquisa
criado: 2026-06-07
atualizado: 2026-06-07
pergunta-central: Como arquitetar e executar um deploy eficiente e escalável utilizando infraestrutura em cloud?
relacionado-a: []
related: [[Projeto - Sistema Chamados]]
tags: [pesquisa, dev, infra]
---

# Pesquisa - Deploy e Infraestrutura Cloud

## ❓ Pergunta central
Como arquitetar e executar um deploy eficiente e escalável utilizando infraestrutura em cloud?

## 🎯 Síntese (3-5 linhas)
Deploy e infraestrutura cloud são pilares da entrega ágil de software. Automação, pipelines CI/CD, escolha de provedores e a arquitetura escalável são essenciais para garantir eficiência e resiliência. A escolha entre IaaS, PaaS e SaaS depende das necessidades do projeto, e a observabilidade desempenha um papel crucial para monitorar e otimizar o ambiente.

## 🔬 Detalhes
- O processo de deploy envolve mover uma aplicação do ambiente de desenvolvimento para produção, garantindo sua disponibilidade para os usuários finais.
- Infraestrutura em cloud pode ser provisionada em diferentes modelos: IaaS (como AWS EC2), PaaS (como Heroku) e SaaS (aplicações prontas para uso, como Google Workspace).
- A automação com pipelines CI/CD (Continuous Integration/Continuous Deployment) reduz erros manuais e acelera o ciclo de entrega de software.
- Práticas como "infrastructure as code" (IaC) com ferramentas como Terraform e AWS CloudFormation permitem a gestão programática da infraestrutura.
- A escolha de uma estratégia de escalabilidade (vertical, horizontal ou ambas) é essencial para lidar com picos de demanda e otimizar custos.
- Monitoramento e observabilidade com ferramentas como Prometheus, Grafana e AWS CloudWatch são fundamentais para identificar gargalos e manter a saúde do sistema.

## 🔗 Conexões
- [[Claude API e Anthropic SDK]]
- [[Projeto - Sistema Chamados]]

## 📚 Fontes
- [[Referência - Site Reliability Engineering (SRE) - Google]]
- [[Referência - Terraform Documentation]]
- [[Referência - AWS Well-Architected Framework]]

## 🚧 Lacunas
- Como equilibrar custos e desempenho ao escolher entre diferentes provedores de cloud (AWS, GCP, Azure)?
- Quais são as melhores práticas para segurança em deploys na nuvem?
- Como implementar um sistema de rollback eficiente em um pipeline CI/CD?
```