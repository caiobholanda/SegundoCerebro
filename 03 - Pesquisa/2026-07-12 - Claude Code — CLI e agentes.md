```markdown
---
tipo: pesquisa
criado: 2026-07-12
atualizado: 2026-07-12
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em julho de 2026?
relacionado-a: []
related: []
tags: [pesquisa, claude-code, dev, automacao]
---

# Pesquisa - Claude Code — CLI e agentes

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI e agentes em julho de 2026?

## 🎯 Síntese (3-5 linhas)
Julho de 2026 traz um navegador integrado ao Claude Code Desktop — com sandbox isolado que permite ao Claude acessar qualquer página web além das previews locais. O comando /doctor evoluiu de leitor de relatório para ferramenta ativa de diagnóstico e correção. Autenticação MCP foi simplificada via `claude mcp login/logout` direto no CLI. Bugs críticos de agentes background e Windows foram corrigidos.

## 🔬 Detalhes
- **Navegador integrado (Desktop)**: Claude Code acessa qualquer site, interage com páginas (docs, designs, páginas externas) da mesma forma que previews locais; sandbox isolado com sessões de navegação configuráveis; classificadores de segurança revisam ações em sites externos
- **Claude Sonnet 5 como padrão**: 1M tokens de contexto nativo; comandos bash agora acionam Claude para responder à saída automaticamente
- **/doctor ativo**: agora diagnóstica E corrige problemas (antes era relatório read-only); verifica saúde da instalação, skills não utilizados, servidores MCP e plugins vs custo de contexto
- **`claude mcp login <n>` / `claude mcp logout <n>`**: autenticação de servidores MCP direto no CLI sem abrir o menu interativo /mcp
- **Fix crítico Windows**: arquivo de saída não é mais substituído por vazio após /clear
- **Fix agentes background**: corrigidos crashes de inicialização
- **Fix scroll**: conteúdo não pula mais ao rolar histórico de transcrição longo

## 🔗 Conexões
- [[2026-07-12 - Claude API e Anthropic SDK]]
- [[2026-07-12 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [Claude Code Updates July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog July 2026 - gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [Claude AI Gets Another Boost in VS Code 1.128 - Visual Studio Magazine](https://visualstudiomagazine.com/articles/2026/07/08/claude-ai-gets-yet-another-boost-in-vs-code-1-128.aspx)

## 🚧 Lacunas
- O navegador integrado ficará disponível no CLI (não só Desktop)?
- /doctor consegue corrigir problemas de MCP automaticamente?
- Managed Agents scheduling (beta público) tem data de GA prevista?
```
