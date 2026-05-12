---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, seguranca]
pergunta-central: "Quais são as principais ameaças e tendências em segurança da informação em 2026?"
relacionado-a: []
---

# Pesquisa — Segurança da Informação (Maio 2026)

## Ameaças Mais Relevantes de 2026

**Ransomware-as-a-Service (RaaS)** continua sendo a principal ameaça corporativa. Grupos como LockBit (reformulado após operação policial de 2024) e novos players vendem kits prontos para atacantes sem conhecimento técnico. O Brasil é o 3º país mais atacado da América Latina.

**Ataques a cadeias de suprimentos (supply chain)**: comprometer uma biblioteca ou dependência npm/pip amplifica o impacto para milhares de projetos simultaneamente. O ataque ao `xz-utils` (2024) demonstrou que até projetos com décadas de história são vulneráveis.

**IA usada como arma**: phishing gerado por LLMs é indistinguível de comunicação humana. Deepfakes de voz para engenharia social em tempo real (chamadas fraudulentas) cresceram 300% em 2025.

## Vulnerabilidades Recentes Notáveis

| CVE | Sistema | Impacto |
|-----|---------|---------|
| CVE-2026-0234 | OpenSSH (< 9.8) | RCE remoto sem autenticação |
| CVE-2026-1101 | Windows NTLM | Relay attack facilitado |
| CVE-2026-2891 | Apache Struts | Injeção de template |

*Manter sistemas atualizados e monitorar CVEs críticos via [nvd.nist.gov](https://nvd.nist.gov) é prática essencial*

## Tendências em Cibersegurança

**Zero Trust Architecture** deixou de ser conceito e virou exigência para empresas que querem seguro cibernético. Modelo: nunca confiar, sempre verificar — mesmo tráfego interno.

**SIEM + SOAR integrados com IA**: ferramentas como Microsoft Sentinel e Splunk SOAR usam ML para correlacionar eventos e automatizar resposta a incidentes, reduzindo tempo médio de contenção (MTTC).

**DevSecOps consolidado**: segurança integrada ao pipeline de CI/CD desde o início — SAST (análise estática), DAST (análise dinâmica) e SCA (análise de composição de software) em cada build. Ferramentas: Snyk, Semgrep, Trivy.

**Regulação crescente no Brasil**: a LGPD ganhou dentes em 2025 com multas aplicadas efetivamente pela ANPD. Empresas investindo em DPO (Data Protection Officer) e mapeamento de dados.

## Certificações Valorizadas no Mercado

1. **CompTIA Security+** — porta de entrada, reconhecida globalmente
2. **CEH (Certified Ethical Hacker)** — testes de invasão
3. **CISSP** — nível senior, gestão de segurança
4. **AWS Security Specialty** — cloud security
5. **OSCP (Offensive Security)** — hands-on, valorizado em Red Team

## Práticas Essenciais para Devs

- Nunca armazenar secrets em código (usar env vars + vault)
- Validar e sanitizar toda entrada do usuário (OWASP Top 10)
- Usar HTTPS everywhere + HSTS
- Autenticação multifator (MFA) em todos os sistemas
- Princípio do mínimo privilégio nas permissões

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — sistema web com autenticação JWT, boas práticas aplicáveis
- [[Pesquisa - 2026-05-08 - Programacao e Desenvolvimento]] — DevSecOps integrado ao desenvolvimento

## Fontes

- https://nvd.nist.gov
- https://owasp.org/Top10
- https://www.anpd.gov.br
- https://portswigger.net/research
