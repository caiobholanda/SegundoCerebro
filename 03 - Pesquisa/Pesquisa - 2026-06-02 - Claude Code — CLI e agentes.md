---
tipo: pesquisa
status: em-andamento
criado: 2026-06-02
atualizado: 2026-06-02
tags: [pesquisa, claude-code, cli, agentes, automatico]
related: ["[[Pesquisa - 2026-06-01 - Claude Code — CLI e agentes]]"]
pergunta-central: "Quais são as principais novidades no Claude Code CLI e sistema de agentes em junho de 2026?"
relacionado-a: [claude-code, cli]
---

# Claude Code — CLI e agentes — 2026-06-02

## Destaque principal

**Depreciação de modelos legados em 15/06**: Claude Sonnet 4 e Opus 4 saem da API. Novo `/ultrareview` lança frota de agentes de caça a bugs na nuvem. Plugin de segurança proativo revisa código em tempo real.

## Novidades (semana de 01–02/06)

### Novos recursos
- **/ultrareview**: frota de agentes cloud-based que caça bugs e reporta diretamente ao CLI ou Desktop — review profundo sem bloquear o contexto local
- **Plugin de segurança proativo**: revisa modificações de código em tempo real durante a sessão, sinaliza vulnerabilidades antes do commit
- **Interação com computador via CLI**: Claude pode iniciar apps nativos e navegar GUIs diretamente do terminal (Computer Use integrado ao fluxo CLI)
- **Auto mode (Research Preview)**: automatiza prompts de permissão para ações seguras, bloqueia ações arriscadas

### Modelo e performance
- **Opus 4.8 como padrão** em Max/Team Premium/Enterprise/API — com `--effort high` por padrão no Claude Code
- **Dynamic Workflows**: orquestração de subagentes a partir de script único — fan-out paralelo com verificação contra test suite

### Integrações
- **Gemini CLI vs Claude Code**: comparativo ativo emergindo — DataCamp publicou análise de diferenças e casos de uso em 2026
- **Android CLI 1.0 (Google)**: suporte explícito a Claude Code para desenvolvimento Android sem abrir Android Studio

## O que mudou desde 2026-06-01

- `/ultrareview` amplia o conceito de review para nuvem (antes era só local)
- Plugin de segurança proativo é novo vetor de diferenciação vs Copilot/Cursor
- Auto mode sinaliza caminho para automação mais fluida sem interrupções de permissão

## Links relacionados

- [[Pesquisa - 2026-06-01 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-31 - Claude Code — CLI e agentes]]

## Fontes

- [Claude Code's Latest Updates — StartupHub.ai](https://www.startuphub.ai/ai-news/technology/2026/claude-code-s-latest-updates)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Gemini CLI vs Claude Code — DataCamp](https://www.datacamp.com/blog/gemini-cli-vs-claude-code)
- [Google Android CLI — Eurisko](https://gd.eurisko.com.br/2026/05/24/google-amplia-desenvolvimento-com-ia-ao-lancar-android-cli-para-agentes-como-claude-code-e-codex)
