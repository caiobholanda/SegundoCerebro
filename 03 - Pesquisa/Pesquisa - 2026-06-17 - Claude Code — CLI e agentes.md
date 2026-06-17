---
tipo: pesquisa
status: ativo
criado: 2026-06-17
atualizado: 2026-06-17
tags: [claude, dev, ia, automacao]
pergunta-central: Quais são as novidades do Claude Code CLI e agentes em 17 de junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-16 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-17

## Versão Atual

- v2.1.162 (lançada em 03/06/2026) — versão de referência atual
- Instalação recomendada: `npm install -g @anthropic-ai/claude-code`

## Dynamic Workflows — Research Preview

- Orquestração paralela end-to-end para bases de código, migrações e engenharia complexa
- Claude escreve scripts de orquestração que disparam dezenas a centenas de subagentes paralelos
- Verificação integrada embutida ao final do fluxo
- Disponível em Max / Team / Enterprise

## Permissões — Nova Sintaxe

- Sintaxe `Tool(param:value)` para regras de permissão baseadas em parâmetros de entrada
- Suporte a wildcard `*` nos valores de parâmetro
- `.claude` aninhado em subpastas agora reconhecido automaticamente

## Subagentes

- Subagentes aninhados podem gerar seus próprios agentes (até 5 níveis confirmados)
- `claude agents --json` inclui campo `waitingFor` para inspecionar estado
- Melhorias de confiabilidade em subagentes (sessões concluídas não reaparecendo)

## Correções e Melhorias

- `/cd` muda diretório da sessão sem quebrar cache
- `--safe-mode` desativa todas as customizações para troubleshooting isolado
- Fallback models expandidos com retry automático em modelos de fallback
- Melhoria de títulos de sessão e busca de plugins
- Correção de travamentos, problemas de autenticação e websocket
- Comportamento IME corrigido no VS Code

## Auto Mode

- Modo automático mais seguro — reduz permissões pedidas automaticamente
- `/doctor` melhorado para diagnóstico de problemas de configuração
- `/bug` com melhor captura de contexto

## Links

- [Claude Code Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Claude Platform Release Notes — Docs](https://platform.claude.com/docs/pt-BR/release-notes/overview)
- [Claude Code CLI Reference 2026 — eesel AI](https://www.eesel.ai/blog/claude-code-cli-reference)
- [Claude Code Complete Guide — blakecrosley.com](https://blakecrosley.com/guides/claude-code)
