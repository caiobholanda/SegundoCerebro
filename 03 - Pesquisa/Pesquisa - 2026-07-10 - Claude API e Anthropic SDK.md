---
tipo: pesquisa
criado: 2026-07-10
atualizado: 2026-07-10
pergunta-central: Quais são as novidades da Claude API e Anthropic SDK em julho de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, claude-api, anthropic]
---

# Pesquisa - Claude API e Anthropic SDK — 2026-07-10

## ❓ Pergunta central
Quais são as novidades da Claude API e Anthropic SDK em julho de 2026?

## 🎯 Síntese
Julho/2026 traz Claude Sonnet 5 como modelo padrão do Claude Code (1M token context), Claude no Microsoft Foundry (Azure GA), e suporte a `code_execution_20260120` com persistência REPL em todos os SDKs principais. Controles enterprise foram ampliados com analytics e alertas de gastos.

## 🔬 Detalhes

### Novos Modelos
- **Claude Sonnet 5**: novo modelo padrão no Claude Code
  - Janela de contexto nativa de **1M tokens**
  - Preço promocional de lançamento
  - Foco em tarefas agênticas, raciocínio e codificação
- **Claude Opus 4.8** e **Claude Haiku 4.5**: disponíveis na Messages API
  - Otimizados para codificação, trabalho agnóstico e raciocínio complexo

### Claude no Microsoft Foundry (Azure GA)
- Disponível como GA (Generally Available) no Microsoft Foundry via Azure
- Acesso nativo com identidade Azure, faturamento, governança e compliance
- Suporte opcional a **zona de dados dos EUA** para requisitos de soberania
- Integração profunda com stack Microsoft (Entra ID, Azure Monitor, etc.)

### Novo Recurso de SDK: `code_execution_20260120`
- Suporte em todos os SDKs: Python, TypeScript, Go, Java, Ruby, PHP e C#
- Adiciona **persistência de estado REPL** entre chamadas (stateful execution)
- Compatível com: Claude Fable 5, Claude Mythos 5, Claude Opus 4.5+ e Claude Sonnet 4.5+

### Melhorias no Claude Code (via API)
- Fluxos de trabalho de agentes aprimorados
- Segurança do modo automático reforçada
- Proteção de transcrição para novas sessões
- Vinculação mais inteligente de PRs
- Tratamento melhorado de tarefas em segundo plano

### Controles Enterprise
- **Analytics administrativos** mais ricos: visibilidade de uso por usuário/equipe
- **Direitos em nível de modelo**: admins controlam quais modelos cada grupo acessa
- **Alertas de gastos**: notificações por threshold de custo

## 🔗 Conexões
- [[Pesquisa - 2026-07-10 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-07-10 - Economia de Tokens em LLMs]]
- [[Pesquisa - 2026-07-10 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-06-10 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Updates by Anthropic — July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic Release Notes — July 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Claude Code Updates by Anthropic — July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Models Overview — Claude Platform Docs](https://platform.claude.com/docs/en/about-claude/models/overview)
- [Claude Platform Release Notes](https://docs.anthropic.com/en/release-notes/api)
- [Claude Agent SDK in 2026 — Totalum](https://www.totalum.app/blog/claude-agent-sdk-totalum-2026)

## 🚧 Lacunas
- Benchmark Sonnet 5 vs Opus 4.8 em tarefas agênticas
- Preço exato do Sonnet 5 após período promocional
- Detalhes técnicos da persistência REPL no `code_execution_20260120`
- Disponibilidade do Foundry para regiões fora dos EUA
