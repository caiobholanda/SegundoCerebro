---
tipo: pesquisa
status: em-andamento
criado: 2026-06-06
atualizado: 2026-06-06
tags: [pesquisa, claude-code, cli, agentes, automatico]
related: ["[[Pesquisa - 2026-06-05 - Claude Code — CLI e agentes]]"]
pergunta-central: "Quais são as principais novidades no Claude Code CLI e agentes em 06/06/2026?"
relacionado-a: [claude-code, cli]
---

# Claude Code — CLI e agentes — 2026-06-06

## Destaque principal

**v2.1.163 (04/06/2026)** — release com foco em gerenciamento de plugins, skills locais e workflow triggers. Principais mudanças:

## Novidades da versão 2.1.163

### Plugins & Skills
- `/plugin list` com filtros `--enabled`/`--disabled`
- `claude plugin init <nome>` para scaffold de novo plugin em `.claude/skills`
- Plugins em `.claude/skills` carregam automaticamente — sem marketplace
- `requiredMinimumVersion` / `requiredMaximumVersion` em managed settings — Claude Code recusa iniciar se versão fora do range

### Hooks
- Stop e SubagentStop hooks podem retornar `hookSpecificOutput.additionalContext` para dar feedback ao Claude e manter o turno sem gerar erro de hook
- Escape `\$` para incluir `$` literal antes de dígito em command bodies de skills

### Workflow
- Backspace logo após trigger keyword descarta o workflow (igual a alt+w) — evita comportamento confuso
- Nova setting `Workflow keyword trigger` em `/config` para evitar que a palavra "workflow" em prompts dispare Dynamic Workflows acidentalmente

### Clipboard
- Atalho `c` no `/btw` copia resposta em markdown raw para clipboard, preservando formatação

## Dynamic Workflows (Research Preview)
Orquestra dezenas a centenas de subagentes paralelos em sessão única. Claude cria e executa scripts de orquestração dinamicamente — fan-out de subagentes → verificação vs. test suite → retorno consolidado. Disponível para planos Max, Team e Enterprise.

## ant CLI (ferramenta complementar)
CLI escrito em Go, licença MIT, publicado pela Anthropic. Permite:
- Chamar a Messages API direto do terminal
- Criar e gerenciar Claude Managed Agents na cloud
- Fazer pipe dos resultados em shell pipelines

## Billing (lembrete crítico)
A partir de **15/06**, workloads automatizados passam a consumir crédito separado da assinatura. Quem usa Claude Code intensivamente precisa validar o plano antes do prazo.

## Links relacionados

- [[Pesquisa - 2026-06-05 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-03 - Claude Code — CLI e agentes]]

## Fontes

- [Claude Code changelog — code.claude.com](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code News June 2026 (Startup Edition) — mean.ceo](https://blog.mean.ceo/claude-code-news-june-2026/)
- [ant CLI: The Entire Claude API From Your Terminal — pasqualepillitteri.it](https://pasqualepillitteri.it/en/news/4046/ant-cli-claude-platform-api-terminal)
- [Anthropic Ends Subscription Subsidy for Agents June 15 — TechTimes](https://www.techtimes.com/articles/317625/20260602/anthropic-ends-subscription-subsidy-agents-june-15-credit-pool-replaces-flat-rate-access.htm)
