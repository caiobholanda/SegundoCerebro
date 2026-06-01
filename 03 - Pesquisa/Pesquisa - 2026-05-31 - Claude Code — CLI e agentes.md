---
tipo: pesquisa
criado: 2026-05-31
atualizado: 2026-05-31
pergunta-central: Quais são as novidades do Claude Code CLI em maio/2026?
relacionado-a: [Claude API, Automacao]
related: ["[[Pesquisa - 2026-05-30 - Claude Code — CLI e agentes]]"]
tags: [pesquisa, claude-code, cli, agentes]
---

# Pesquisa - Claude Code — CLI e agentes (2026-05-31)

## ❓ Pergunta central
O que há de novo no Claude Code, skills, hooks e MCP nesta semana?

## 🎯 Síntese
Dynamic Workflows chegou ao Claude Code como research preview, permitindo orquestração de agentes em paralelo com verificação integrada. Agent View (manage múltiplas sessões numa CLI) também disponível em research preview. PowerShell nativo no Windows sem Git Bash. Ultrareview disponível para revisão em CI/CD via `claude ultrareview`.

## 🔬 Detalhes

### Dynamic Workflows (Research Preview)
- Orquestração end-to-end e paralela em codebases, migrações e trabalho de engenharia complexo
- Verificação integrada contra test suites
- Salva progresso entre sessões
- Fluxo: planejar → fan-out de subagentes → verificar

### Agent View
- Manage múltiplas sessões a partir de uma única CLI
- Iniciar agentes, enviar para background, ver status e última resposta
- Voltar para sessão apenas quando input é necessário
- Status: Research Preview

### Windows sem Git Bash (Semana 18, abril/maio 2026)
- Git for Windows **não é mais necessário**
- Claude Code usa PowerShell como shell padrão quando Bash está ausente
- Melhoria significativa para usuários Windows

### Outras Atualizações
- **`claude ultrareview`**: revisão de código em cloud disponível para CI e scripts
- **`claude project purge`**: limpa estado local de um projeto
- Smarter model e agent controls
- Melhor comportamento de background sessions
- Melhorias de estabilidade macOS e Windows
- Fixes para MCP, clipboard e terminal handling

## 🔗 Conexões
- [[Pesquisa - 2026-05-30 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-05-31 - Claude API e Anthropic SDK]]

## 📚 Fontes
- [Claude Code What's New](https://code.claude.com/docs/en/whats-new)
- [Claude Code Changelog — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [GitHub Releases claude-code](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas
- Data de GA do Dynamic Workflows e Agent View
- Limites de sessões paralelas no Agent View
- Integração de Dynamic Workflows com skills e hooks customizados
