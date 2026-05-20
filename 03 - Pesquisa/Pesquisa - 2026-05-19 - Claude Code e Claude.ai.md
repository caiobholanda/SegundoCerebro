---
tipo: pesquisa
criado: 2026-05-19
atualizado: 2026-05-19
pergunta-central: O que mudou no Claude Code em maio de 2026 e quais funcionalidades novas afetam o fluxo de trabalho diário?
relacionado-a: [Pesquisa - 2026-05-18 - Claude Code e Claude.ai, Pesquisa - 2026-05-19 - Claude API]
tags: [pesquisa, ia, dev]
---

# Pesquisa - 2026-05-19 - Claude Code e Claude.ai

## ❓ Pergunta central
O que mudou no Claude Code em maio de 2026 e quais funcionalidades novas afetam o fluxo de trabalho diário?

## 🎯 Síntese (3-5 linhas)
Maio de 2026 foi um mês movimentado para o Claude Code: limites de taxa dobrados (e depois mais 50% adicionais), Fast Mode migrado para Opus 4.7, novas flags de agentes para sessões background, e suporte melhorado a plugins com SKILL.md. A promoção de limites semanais +50% vale até 13 de julho — janela importante para projetos intensivos. O evento "Code with Claude SF" trouxe anúncios adicionais.

## 🔬 Detalhes
- **Limites dobrados (6 maio)**: rate limits de 5 horas dobrados para planos Pro, Max, Team e Enterprise; pico eliminado para Pro/Max
- **+50% limites semanais (13 maio até 13 julho)**: promoção temporária em todos os planos pagos
- **Fast Mode → Opus 4.7**: modo rápido usa agora o modelo mais recente por padrão
- **Novas flags de agentes**: `--add-dir`, `--settings`, `--mcp-config`, `--plugin-dir`, `--permission-mode`, `--model`, `--effort`, `--dangerously-skip-permissions` — configuração granular de sessões background
- **Plugins com SKILL.md root-level**: plugin com `SKILL.md` na raiz sem subdiretório `skills/` é exibido como skill única; painel `/plugin` e `claude plugin details` listam servidores LSP
- **Integrações Microsoft 365**: Excel, PowerPoint, Word disponíveis (Outlook em breve)
- **Code with Claude SF 2026**: evento presencial com anúncios sobre futuro do produto

## 🔗 Conexões
- [[Pesquisa - 2026-05-18 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-19 - Claude API]]

## 📚 Fontes
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code +50% limites semanais — Pillitteri](https://pasqualepillitteri.it/en/news/2494/claude-code-weekly-limits-50-percent-anti-codex-anthropic-2026)
- [Code with Claude SF 2026 recap — Crosley](https://blakecrosley.com/blog/code-with-claude-sf-2026-recap)
- [Claude Code Updates 2026 — GetAIPerks](https://www.getaiperks.com/en/articles/claude-code-updates)
- [GitHub Releases — anthropics/claude-code](https://github.com/anthropics/claude-code/releases)

## 🔄 Complemento (pesquisa vespertina 2026-05-19)

### Hooks — detalhes técnicos atualizados

**PostToolUse / PostToolUseFailure:**
- Input inclui campo `duration_ms` — tempo de execução da tool (exclui prompts de permissão e PreToolUse)
- `hookSpecificOutput.updatedToolOutput` substitui output da tool para **todos** os tools (antes: apenas MCP)
- Uso prático: pós-processar, filtrar ou reescrever qualquer resultado antes de enviar ao modelo

**terminalSequence:**
- Novo campo no JSON de saída dos hooks
- Emite sequências ANSI: notificações desktop, títulos de janela, bells
- Funciona mesmo sem terminal controlador (headless, background agents, Task Scheduler)

### MCP — performance de inicialização

- Subagentes e SDK conectam servidores MCP **em paralelo** (antes: serial)
- Startup com múltiplos servidores até 2× mais rápida
- `pre-wait` agora sobrepõe startup em vez de bloquear → ganho de até 2s com servidores lentos
- `/mcp` exibe contagem de tools por servidor e sinaliza servidores com zero tools (diagnóstico)

### Promoção de limites — calendário

| Evento | Data | Mudança |
|--------|------|---------|
| Rate limits dobrados | 06/mai/2026 | Todos os planos pagos |
| +50% limites semanais | 13/mai → 13/jul/2026 | Promoção temporária |
| Retorno ao padrão | 14/jul/2026 | Limites voltam ao 2× (sem o +50%) |

> Janela até 13/jul: ideal para projetos intensivos de Claude Code

## 🚧 Lacunas
- O que foi anunciado especificamente no "Code with Claude SF" além das flags
- Impacto real das novas flags de agentes em automações complexas
- Data de encerramento da promoção de limites coincide com possível lançamento de concorrente (Codex?)
