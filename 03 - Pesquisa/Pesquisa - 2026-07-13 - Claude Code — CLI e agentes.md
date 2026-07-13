---
tipo: pesquisa
status: ativo
criado: 2026-07-13
atualizado: 2026-07-13
tags: [pesquisa, claude-code, cli, agentes, mcp, hooks]
pergunta-central: Quais são as últimas atualizações do Claude Code CLI, MCP servers e hooks em julho de 2026?
relacionado-a: [claude-api, dev, automacao]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-07-13

## ❓ Pergunta central
Quais são as últimas atualizações do Claude Code CLI, MCP servers e hooks em julho de 2026?

## 🎯 Síntese
Julho/2026 foca em confiabilidade: `/doctor` virou ferramenta de diagnóstico + autocura, hooks tiveram correções críticas para sessões headless (relevante para automações como esta vault), e MCP servers receberam fixes em timeouts e OAuth.

## 🔬 Detalhes

### `/doctor` — Diagnóstico e Autocura
Antes apenas verificava saúde da instalação. Agora:
- Detecta e **corrige** problemas automaticamente
- Encontra skills, MCP servers e plugins não utilizados versus seu custo de contexto
- **Deduplica** arquivos `CLAUDE.md` locais
- Propõe trimming de conteúdo do `CLAUDE.md`
- Sinaliza hooks lentos

Alias: `/checkup`

### Hooks — Correções Críticas
- **SessionStart em headless**: corrigido streaming de eventos para impedir que workers remotos fiquem ociosos durante execução de hook (afeta diretamente automações como `pesquisa-diaria.ps1`)
- **Hook matchers com hífen**: `code-reviewer` agora faz exact-match em vez de substring-match — evita falsos positivos

### MCP Servers — Fixes e Melhorias
- Diretórios de trabalho adicionais da sessão agora são incluídos em `roots/list` com notificação ao mudar
- Correção: servidores configurados via arquivo de config estavam ignorando `request timeout` por servidor
- Fixes em autenticação OAuth e problemas de conexão de ferramentas

### `/cd` e `/commit-push-pr`
- `/cd` agora sugere caminhos de diretório enquanto você digita (como `/add-dir`)
- `/commit-push-pr` permite automaticamente `git push` para o remote configurado (não só `origin`)

## 🔗 Conexões
- [[Pesquisa - 2026-07-13 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-07-13 - Economia de Tokens em LLMs]]
- [[Projeto - Sistema Chamados]]

## 📚 Fontes
- [Claude Code CLI: The Complete Guide — Hooks, MCP, Skills](https://blakecrosley.com/guides/claude-code)
- [Claude Code Updates - July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code changelog - Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Changelog (July 2026)](https://www.gradually.ai/en/changelogs/claude-code/)

## 🚧 Lacunas
- Lista completa de novos built-in agents disponíveis em julho
- Detalhes de performance do `/doctor` em vaults grandes
- Mudanças na API de hooks (novos eventos disponíveis?)
