---
tipo: pesquisa
status: ativo
criado: 2026-06-20
atualizado: 2026-06-20
tags: [claude-code, cli, agentes, automacao]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 20 de junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-17 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e agentes — 2026-06-20

## Artifacts Beta (lançado 18/06)

- Disponível em **Team e Enterprise** — não está no Free ou Pro
- Transforma sessões de coding em páginas HTML com URLs privadas
- Páginas atualizam em tempo real enquanto a sessão trabalha
- Casos de uso: PR walkthroughs, system explainers, dashboards, release checklists
- Qualquer membro do time pode acompanhar o progresso no browser sem abrir o CLI

## enforceAvailableModels

- Nova setting gerenciada (`enforceAvailableModels: true`)
- Quando ativo: o modelo Default é constrangido ao allowlist de `availableModels`
- Se Default resolveria para modelo não permitido → fallback para primeiro modelo da lista
- Settings de usuário ou projeto não podem ampliar a lista gerenciada

## Bloqueio de Comandos Destrutivos (v2.1.174–176)

Comandos bloqueados automaticamente quando o usuário não solicitou explicitamente descartar trabalho:
- `git reset --hard`
- `git checkout -- .`
- `git clean -fd`
- `git stash drop`
- `git commit --amend` quando o commit não foi feito pelo agente na sessão atual
- `terraform destroy / pulumi destroy / cdk destroy` sem solicitação específica do stack

## Sub-agentes Recursivos

- Sub-agentes podem gerar seus próprios sub-agentes — até **5 níveis** de profundidade
- Sessões com títulos gerados no idioma da conversa
- Novo campo `waitingFor` em `claude agents --json`

## Novas Settings

- `footerLinksRegexes`: personaliza links no rodapé da interface
- `wheelScrollAccelerationEnabled`: acelera scroll por roda do mouse
- `session_titles`: gerados automaticamente no idioma detectado da conversa

## Melhorias Gerais

- Correção de drops de conexão mid-stream
- Correção de bugs de scroll e foco
- Melhoria no carregamento de plugins
- Modo auto com safety aprimorado
- Avisos de depreciação de modelos mais claros
- `/config help` mais detalhado

## Links

- [Claude Code Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Artifacts — blog oficial](https://claude.com/blog/artifacts-in-claude-code)
- [Artifacts: sessões de coding viram páginas web — TechTimes](https://www.techtimes.com/articles/318691/20260619/claude-code-artifacts-turns-ai-coding-sessions-live-shareable-browser-pages.htm)
- [Anthropic Release Notes junho 2026 — Releasebot](https://releasebot.io/updates/anthropic)
