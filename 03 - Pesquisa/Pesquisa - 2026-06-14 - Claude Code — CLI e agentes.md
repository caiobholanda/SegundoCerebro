---
tipo: pesquisa
status: ativo
criado: 2026-06-14
atualizado: 2026-06-14
tags: [claude-code, cli, agentes, dev]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-13 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-14

## Recursos Novos

- **Sub-agentes aninhados confirmados até 5 níveis** — Dynamic Workflows com orquestração hierárquica
- **requiredMinimumVersion / requiredMaximumVersion** em managed settings — recusa iniciar se versão fora do intervalo
- **/plugin list --enabled/--disabled** — lista plugins instalados com filtro de estado
- **`claude update`** agora anuncia versão alvo antes de baixar
- **Retry no fallback model**: quando API rejeita com erro não-retriable inesperado, tenta uma vez no fallback; erros de auth, rate-limit, request-size e transport ainda sobem imediatamente

## Correções

- Normalização de nome do modelo Fable 5 corrigida
- Warning de inicialização de sandbox no Windows removido
- Flickering em terminais JetBrains (IntelliJ, PyCharm, WebStorm 2026.1+) corrigido via synchronized output
- Shift+non-ASCII drops em terminais com protocolo Kitty keyboard (WezTerm, Ghostty, kitty) corrigido

## Managed Agents no Claude Code

- Agentes Managed agora rodam **em cron schedule**
- Acesso seguro a ferramentas CLI e serviços autenticados via vault env variables
- Integrações browser-capable para trabalho recorrente
- Fluxos completos sem intervenção manual

## Performance e UX

- Melhor tratamento de modelo e região (model/region handling)
- Nova busca de plugins (plugin search)
- Workflows Chrome, VSCode e terminal aprimorados
- Melhorias em session, agent, model picker, memory, permissions e UI

## Links

- [Claude Code Changelog — Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog — ClaudeLog](https://claudelog.com/claude-code-changelog/)
- [Claude Code Changelog 2026 — ClaudeFast](https://claudefa.st/blog/guide/changelog)
