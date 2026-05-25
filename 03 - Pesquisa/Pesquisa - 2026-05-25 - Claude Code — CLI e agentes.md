---
tipo: pesquisa
criado: 2026-05-25
atualizado: 2026-05-25
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em maio de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, ia, dev, claude, claude-code]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-05-25

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI e sistema de agentes em maio de 2026?

## 🎯 Síntese
Google lançou Android CLI 1.0 no Google I/O (19/mai) com suporte explícito a Claude Code, Codex, Gemini e Antigravity — reconhecimento oficial de que o desenvolvimento Android agêntico já é realidade. No lado Anthropic, /resume para sessões background e melhorias de confiabilidade no Windows foram os destaques práticos da semana.

## 🔬 Detalhes

### Google Android CLI 1.0 — Stable (19/mai, Google I/O 2026)
- Lançado oficialmente no Google I/O 2026 como versão estável 1.0
- Suporta Claude Code, OpenAI Codex, Gemini e Antigravity como agentes de primeira classe
- Capacidades: análise semântica, renderização de Compose previews, execução de UI tests — sem abrir o Android Studio
- Comando `android studio` expõe recursos do IDE para qualquer agente via CLI
- **Significado estratégico**: Google admite que devs já usam agentes de terceiros para Android e escolhe suportar em vez de competir

### Claude Code — Melhorias de Background Sessions
- `/resume` agora suporta sessões iniciadas com `--bg` ou pelo Agent View
- Sessões background aparecem junto às interativas na lista, marcadas com `bg`
- Melhora rastreabilidade de trabalho paralelo multi-sessão

### /model — Escopo por Sessão
- O comando `/model` agora muda o modelo apenas para a sessão atual
- Pressionar `d` no model picker define o default para novas sessões
- Evita efeito colateral de mudar o modelo globalmente por engano

### Ecosystem — Multi-harness Plugin Marketplace
- Repositório `wshobson/agents` no GitHub: marketplace de plugins agênticos multi-harness
- Compatível com Claude Code, Codex CLI, Cursor, OpenCode e Gemini CLI
- Sinaliza convergência de ecossistema de plugins entre agentes concorrentes

### Comparativo: Gemini CLI vs Claude Code (2026)
- Claude Code: melhor para codebases complexas, integração com Agent SDK, Managed Agents
- Gemini CLI: melhor para projetos Google/Android, gratuito com conta Google
- Android CLI 1.0 nivela o campo no desenvolvimento Android

## 🔗 Conexões
- [[Pesquisa - 2026-05-25 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-05-25 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-05-24 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Google Android CLI 1.0 — Android Developers Blog](https://developer.android.com/blog/posts/android-cli-now-stable-1-accelerate-developing-for-android-using-any-agent)
- [Google amplia desenvolvimento com IA ao lançar Android CLI — Eurisko](https://gd.eurisko.com.br/2026/05/24/google-amplia-desenvolvimento-com-ia-ao-lancar-android-cli-para-agentes-como-claude-code-e-codex)
- [Agentic app coding gets an upgrade with Google's Android CLI — TechCrunch](https://techcrunch.com/2026/05/19/agentic-app-coding-gets-an-upgrade-with-googles-release-of-android-cli/)
- [Claude Code Agent View: CLI Dashboard (Research Preview) — Pasquale Pillitteri](https://pasqualepillitteri.it/en/news/2384/claude-code-agent-view-cli-dashboard-sessions-2026)
- [Novidades — Claude Code Docs](https://code.claude.com/docs/pt/whats-new)

## 🚧 Lacunas
- Roadmap GA do Agent View (ainda Research Preview)
- Suporte Android CLI para instâncias macOS/Linux além do Windows
- Quais plugins do marketplace `wshobson/agents` são compatíveis com todas as plataformas
