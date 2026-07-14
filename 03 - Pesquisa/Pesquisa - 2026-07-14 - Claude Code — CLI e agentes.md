---
tipo: pesquisa
status: ativo
criado: 2026-07-14
atualizado: 2026-07-14
tags: [pesquisa, claude-code, cli, agentes]
pergunta-central: Quais as novidades do Claude Code CLI e sistema de agentes em julho de 2026?
relacionado-a: [claude-api, dev, automacao]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-07-14

## ❓ Pergunta central
Quais as novidades do Claude Code CLI e sistema de agentes em julho de 2026?

## 🎯 Síntese
Novas features de acessibilidade (screen reader mode, vim remaps), suporte a wrappers corporativos, browser nativo sandboxed no desktop e `/doctor` evoluído que agora corrige (não só diagnostica). Correção crítica: Remote Control não via agentes em background até task iniciar/parar.

## 🔬 Detalhes

### Acessibilidade e UX
- **Screen reader mode**: `claude --ax-screen-reader` ou `CLAUDE_AX_SCREEN_READER=1` ou `"axScreenReader": true` em settings
  - Renderização plain-text otimizada para leitores de tela
- **`vimInsertModeRemaps`**: mapeamento de sequências de 2 teclas em insert mode (ex.: `jj` → Escape)

### Suporte Corporativo
- **`CLAUDE_CODE_PROCESS_WRAPPER`**: agent view e background service passam a honrar launchers corporativos
  - Útil para ambientes com proxies, auditoria e políticas de execução

### Browser Nativo (Desktop)
- Claude Code desktop agora tem browser embutido (sandboxed)
- Claude pode acessar qualquer site: docs, designs, páginas externas
- Suporta leitura, clique e interação com páginas
- Configurável pelo usuário

### `/doctor` Evoluído
- Antes: apenas diagnóstico
- Agora: **diagnostica e corrige**
  - Verifica saúde da instalação
  - Encontra skills/MCP/plugins não usados vs. custo em contexto
  - Propõe trimming de CLAUDE.md
  - Alias: `/checkup`

### Bug Fixes
- Remote Control não via agentes em background até task iniciar/parar → **corrigido**
- Agent tool não lançava sem tools quando lista resolvia para vazio → **corrigido**
- Atualização binária agora faz **streaming para disco** em vez de buffer em memória
  - Redução de ~400 MB no pico de uso de memória do updater

## 🔗 Conexões
- [[Pesquisa - 2026-07-14 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-07-13 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-07-14 - Inteligência Artificial — avanços]]

## 📚 Fontes
- [Claude Code Updates by Anthropic - July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code changelog - Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Changelog (July 2026) - gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [Releases · anthropics/claude-code - GitHub](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas
- Versão exata do release com browser nativo
- Limite de sites bloqueados pelo sandbox
- Comportamento do `CLAUDE_CODE_PROCESS_WRAPPER` em Windows PowerShell
