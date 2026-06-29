---
tipo: pesquisa
criado: 2026-06-28
atualizado: 2026-06-28
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em junho de 2026?
relacionado-a: [claude-code, ia, dev]
tags: [pesquisa, claude-code, ia]
---

# Pesquisa - Claude Code — CLI e agentes — 2026-06-28

## ❓ Pergunta central
Quais são as novidades do Claude Code CLI e agentes em junho de 2026?

## 🎯 Síntese
Junho/2026 consolida o Claude Code como plataforma de agentes em produção: Auto Mode expandido para provedores terceiros (Bedrock, Vertex, Foundry), sandboxes auto-hospedados em beta público, MCP Tunnels para execução distribuída, e melhorias de UX (mouse fullscreen, voz no Linux). Foco: autonomia segura com controles granulares.

## 🔬 Detalhes

### Auto Mode — Expansão para Terceiros
- Auto Mode disponível em Bedrock, Vertex e Foundry para Opus 4.7 e Opus 4.8
- Substitui prompts de permissão por verificações de segurança em segundo plano
- Permite execução autônoma com menor fricção para workflows corporativos

### Sandboxes Auto-Hospedados (Beta Público)
- Execução de ferramentas move para infraestrutura própria do cliente
- Loop do agente permanece na infraestrutura Anthropic
- Suporte a: Cloudflare, Daytona, Modal, Vercel
- Aplica políticas de rede, logs de auditoria e ferramentas de segurança do cliente

### MCP Tunnels
- Facilita integração de Model Context Protocol em ambientes distribuídos
- Combina execução local de ferramentas com agente remoto

### Melhorias de UX e Bug Fixes
- Controles de clique de mouse em tela cheia
- Ditado por voz corrigido; detecção de voz aprimorada no Linux
- `claude agents` e inicialização de sessão remota melhorados
- Auto-rename de plugins aprimorado
- Resultado de agentes em background não instrui mais Claude a "encerrar resposta"
- Autenticação MCP headersHelper melhorada

### Controles de Auto Mode Aprimorados
- Melhor tratamento de shell e MCP
- Comportamento de agente em background mais rico
- Debug aprimorado com novo transcript e OpenTelemetry logging

## 🔗 Conexões
- [[Pesquisa - 2026-06-28 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-06-28 - Deploy e Infraestrutura Cloud]]
- [[Pesquisa - 2026-06-28 - Inteligência Artificial — avanços]]
- [[Pesquisa - 2026-05-25 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [Claude Code Updates by Anthropic — June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Anthropic Release Notes — June 2026 — Releasebot](https://releasebot.io/updates/anthropic)
- [Enabling Claude Code to work more autonomously — Anthropic](https://www.anthropic.com/news/enabling-claude-code-to-work-more-autonomously)
- [Code with Claude 2026: 5 New Agent Features Anthropic Just Shipped — MindStudio](https://www.mindstudio.ai/blog/code-with-claude-2026-new-agent-features)
- [Claude Code GitHub Releases — anthropics/claude-code](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas
- Documentação detalhada de configuração dos sandboxes auto-hospedados
- Comparativo de performance Auto Mode Opus 4.7 vs 4.8
- Limitações conhecidas do MCP Tunnels em produção
