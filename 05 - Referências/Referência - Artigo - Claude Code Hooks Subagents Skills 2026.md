---
tipo: referencia
fonte: artigo
autor: Boring Bot (Substack)
url: https://boringbot.substack.com/p/claude-code-skills-subagents-hooks
criado: 2026-05-13
atualizado: 2026-05-13
tags: [referencia, claude-code, hooks, subagentes, skills]
---

# Referência - Artigo - Claude Code Hooks Subagents Skills 2026

## 🔗 Fonte
- **URL**: https://boringbot.substack.com/p/claude-code-skills-subagents-hooks
- **Autor**: Boring Bot (Substack)
- **Data publicação**: 2026

## 📝 Resumo (suas palavras)
Artigo técnico que explica a arquitetura completa de produção do Claude Code: hooks interceptam 25 lifecycle points (UserPromptSubmit, PreToolUse, etc.), subagentes rodam em contextos isolados em paralelo, e skills empacotam workflows reutilizáveis. Juntos, transformam Claude Code de ferramenta conversacional em plataforma de engenharia de IA programável.

## 💡 Trechos-chave
> Hooks fire at 25 distinct lifecycle points — UserPromptSubmit can block/modify prompts before Claude sees them; PreToolUse is the primary security checkpoint.
> Subagents spin up isolated workers for parallel tasks without polluting main context.
> Skills package reusable prompts and workflows into invocable commands.

## 🪞 Reflexão
A arquitetura descrita aqui é exatamente o que o segundo cérebro já usa: hooks para automação, subagentes (curador, conector, historiador) e skills (/diario, /inbox, etc.). Confirma que estamos na direção certa — e sugere explorar mais hooks de lifecycle.

## 🔗 Conecta com
- [[Pesquisa - 2026-05-13 - Claude Code]]
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]]
