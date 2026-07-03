---
tipo: pesquisa
status: em-andamento
criado: 2026-07-03
atualizado: 2026-07-03
tags: [ia, dev, claude-api, anthropic]
related: []
pergunta-central: Quais as novidades da API Anthropic e SDK em julho de 2026?
relacionado-a: Desenvolvimento de Software
---

# Claude API e Anthropic SDK — Novidades (2026-07-03)

## Novos Modelos Disponíveis

**Claude Opus 4.8** e **Claude Haiku 4.5** agora disponíveis na Messages API, focados em coding, trabalho agentic e raciocínio complexo.

## Autenticação via WIF (Workload Identity Federation)

Com WIF para workloads e `ant auth login` para sessões interativas, desenvolvedores nunca precisam gerenciar chaves de API estáticas. O WIF substitui API keys estáticas por credenciais de curta duração, com escopo definido, emitidas no momento da requisição.

## Funcionalidades Enterprise

- **Admin permissions em roles customizadas**: membros podem acessar billing ou privacidade sem acesso de Owner.
- **Analytics granular**: visibilidade por modelo, alertas de gasto e entitlements por modelo para admins Enterprise.

## Integração com Azure (GA)

Claude agora está disponível de forma **Generally Available** no Microsoft Foundry no Azure, com identidade, billing e governança nativos do Azure, além de suporte opcional à US data zone.

## SDK Multi-Linguagem: Code Execution Atualizado

Os SDKs de Python, TypeScript, Go, Java, Ruby, PHP e C# suportam agora `code_execution_20260120` — versão do tool de execução de código com **REPL state persistence** e chamada programática de tools.

## Claude in Chrome (GA)

Claude Code lança Claude in Chrome como Generally Available, expandindo workflows de agentes com notificações background, handoff de draft PR, failover melhorado e melhor gerenciamento de sessões.

---

## Fontes

- [Releasebot — Claude Updates July 2026](https://releasebot.io/updates/anthropic/claude)
- [Releasebot — Anthropic Release Notes July 2026](https://releasebot.io/updates/anthropic)
- [Anthropic Docs — API Release Notes](https://docs.anthropic.com/pt/release-notes/api)
- [Claude Platform — Models Overview](https://platform.claude.com/docs/en/about-claude/models/overview)
