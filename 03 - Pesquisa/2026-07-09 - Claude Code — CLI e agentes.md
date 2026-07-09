---
tipo: pesquisa
criado: 2026-07-09
atualizado: 2026-07-09
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em julho de 2026?
relacionado-a: [claude-api, ia, dev]
tags: [pesquisa, ia, dev, claude]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-07-09

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI e sistema de agentes em julho de 2026?

## 🎯 Síntese
Claude Code avança na profundidade agêntica: sub-agents podem gerar seus próprios sub-agents (até 5 níveis de chain), agent view exibe PRs vinculados e headlines legíveis, e a nova configuração de "Dynamic workflow size" orienta o escalonamento. Correções importantes em segurança (bloqueio de adulteração de transcript) e performance (updater -400 MB RAM).

## 🔬 Detalhes

### Agentes Hierárquicos
- **Sub-agents recursivos**: sub-agents podem spawnar seus próprios sub-agents
- Background chains limitadas a **5 níveis de profundidade**
- Habilita tarefas complexas e aninhadas de forma autônoma

### Agent View Melhorado
- Sessões que editam, mergeiam, comentam ou fazem push em PRs existentes **linkam o PR** no painel `claude agents`
- Linhas exibem **estado colorido** + **headline** gerada pelo classificador (não mais raw tool call text)

### Dynamic Workflow Size
- Nova configuração em `/config` — opções: **small / medium / large** (contagem de agentes)
- É uma **diretriz**, não um cap forçado

### Performance & Segurança
- Auto-update: binários agora streamados para disco (antes: buffered em memória) → reduz RAM pico em **~400 MB**
- Auto mode: nova regra bloqueia **adulteração de arquivos de transcript de sessão**

### Correções
- Fix: agentes em background que apareciam como "failed" ou "completed" após `SendMessage` para resumir
- Agentes que editam/mergeiam/comentam em PRs existentes agora vinculam corretamente no painel

## 🔗 Conexões
- [[2026-07-09 - Claude API e Anthropic SDK]]
- [[2026-07-08 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates - July 2026 - Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Changelog - Gradually](https://www.gradually.ai/en/changelogs/claude-code/)
- [Claude Code Features Guide 2026 - Toolsbase](https://toolsbase.dev/en/reference/claude-code-features)

## 🚧 Lacunas
- Documentação completa dos 5 níveis de chain — quando é que o limite pode ser aumentado?
- Métricas reais de ganho de produtividade com sub-agents recursivos
- Como o "Dynamic workflow size" interage com o budget de tokens e de tempo?
