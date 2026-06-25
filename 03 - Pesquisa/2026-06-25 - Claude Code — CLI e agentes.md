---
tipo: pesquisa
criado: 2026-06-25
atualizado: 2026-06-25
pergunta-central: Quais as novidades do Claude Code CLI e sistema de agentes em junho 2026?
relacionado-a: [Claude API]
related: ["[[2026-06-24 - Claude Code — CLI e agentes]]"]
tags: [pesquisa, ia, claude, dev, agentes]
---

# Pesquisa - Claude Code — CLI e agentes

## ❓ Pergunta central
Quais as novidades do Claude Code CLI e sistema de agentes em junho 2026?

## 🎯 Síntese (3-5 linhas)
Claude Code agora suporta sub-agentes aninhados em até 3 níveis para decomposição hierárquica de tarefas. Dynamic Workflows em research preview permite dezenas/centenas de subagentes paralelos por sessão com verificação integrada. Novidade de junho: Community Tool Marketplace para descobrir e instalar ferramentas via CLI. `fallbackModel` aceita até 3 modelos de fallback em ordem. GitHub Actions e JetBrains ganharam Claude como agent provider.

## 🔬 Detalhes
- **Sub-agentes aninhados (hierárquicos)**: pai cria filhos; cada filho pode criar netos — até 3 níveis de profundidade; ideal para migrações de codebase em módulos paralelos
- **Dynamic Workflows** (research preview): orquestração dinâmica com dezenas/centenas de subagentes paralelos; Claude escreve scripts de orquestração + verificação integrada antes de apresentar resultado
- **Community Tool Marketplace**: descoberta e instalação de ferramentas via `claude marketplace search` / `claude marketplace install`
- **`fallbackModel`**: até 3 modelos de fallback testados em ordem quando o modelo primário falha ou recusa
- **`/cd`**: muda diretório da sessão sem quebrar o prompt cache
- **Sandbox credential blocking**: bloqueia credenciais em ambientes sandbox por segurança
- **Org model restrictions**: administradores podem restringir quais modelos a organização pode usar
- **Remote MCP melhorado**: sessões e handling mais confiáveis nas versões recentes
- **Claude como agent provider no JetBrains** (preview, 22/06): integração nativa via GitHub Changelog
- **Structured output** mais confiável nas versões recentes

## 🔗 Conexões
- [[2026-06-25 - Claude API e Anthropic SDK]]
- [[2026-06-25 - Inteligência Artificial — avanços]]

## 📚 Fontes
- [What's new – Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Updates – Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude as agent provider em JetBrains – GitHub Changelog](https://github.blog/changelog/2026-06-22-new-features-and-claude-as-agent-provider-preview-in-jetbrains-ides/)
- [Claude Code June 2026 – SitePoint](https://www.sitepoint.com/claude-code-june-2026-10-new-features-devs-need-to-know/)

## 🚧 Lacunas
- Os 3 níveis de sub-agentes aninhados são limitação técnica ou de pricing?
- Como o Community Tool Marketplace é moderado/curado?
- Dynamic Workflows tem SLA diferente por ser research preview?
