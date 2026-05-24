---
tipo: pesquisa
criado: 2026-05-23
atualizado: 2026-05-23
pergunta-central: Quais são as novidades mais recentes do Claude Code CLI e do sistema de agentes em maio de 2026?
relacionado-a: [Claude API e Anthropic SDK]
tags: [pesquisa, claude, dev, cli, agentes]
---

# Pesquisa - Claude Code — CLI e agentes (2026-05-23)

## ❓ Pergunta central
Quais são as novidades mais recentes do Claude Code CLI e do sistema de agentes em maio de 2026?

## 🎯 Síntese
Claude Code ganhou Agent View para gerenciar múltiplas sessões em uma única view CLI, /goal para execução autônoma por resultado, e /radio como rádio lo-fi embutida. Fast mode migrou para Opus 4.7 como padrão. Novas flags permitem controle granular de sessões background, e o marketplace de plugins ganhou estimativas de custo projetado por turno.

## 🔬 Detalhes

### Agent View (Research Preview)
- Dashboard CLI unificado para gerenciar múltiplas sessões simultaneamente
- Iniciar agentes, enviar para background, checar status/última resposta
- Retornar à sessão apenas quando input humano é necessário

### /goal — execução autônoma
- Outcome-based: o agente trabalha até atingir o objetivo declarado
- Mínima interação humana durante execução
- Complementa Agent View ao definir o critério de sucesso

### /radio — foco durante coding
- Rádio lo-fi embutida diretamente no Claude Code
- Projetada para manter foco durante sessões longas de desenvolvimento

### Flags `claude agents`
- `--add-dir`: adicionar diretórios acessíveis ao agente
- `--settings`: configurações personalizadas por sessão
- `--mcp-config`: MCP config por agente background
- Controle granular sobre o que cada sessão background pode fazer

### Plugin Marketplace — melhorias
- **Plugin dependency enforcement**: `claude plugin disable` recusa se outro plugin ativo depende do alvo
- **Projected context cost**: estimativa de tokens por turno e por invocação visível no browse do marketplace
- Facilita decisão de custo antes de habilitar um plugin

### Fast Mode → Opus 4.7
- Padrão de Fast Mode migrado de Opus 4.6 para **Opus 4.7**
- Saída mais rápida e mais capaz sem mudança de preço para o usuário

### Outras melhorias
- PowerShell support expandido no Windows (sem necessidade de Git Bash)
- Melhorias de estabilidade em worktrees e daemon
- Bug fixes de OAuth para múltiplos servidores MCP

## 🔗 Conexões
- [[2026-05-23 - Claude API e Anthropic SDK]]
- [[2026-05-22 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code in 2026 — iodocs](https://www.iodocs.com/claude-code-in-2026-major-updates-new-features-and-expanded-access/)
- [Agent View — Pasquale Pillitteri](https://pasqualepillitteri.it/en/news/2384/claude-code-agent-view-cli-dashboard-sessions-2026)
- [GitHub — anthropics/claude-code CHANGELOG](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)

## 🚧 Lacunas
- /radio: quais gêneros/estações disponíveis? Funciona offline?
- Agent View: data prevista para GA (saiu de Research Preview)?
- Projected context cost: é só estimativa pré-uso ou também acompanha execução em tempo real?
