---
tipo: pesquisa
status: ativo
criado: 2026-05-18
atualizado: 2026-05-18
tags: [claude, dev, ferramentas, cli, agentes]
pergunta-central: O que mudou no Claude Code esta semana — Agent View, flags de background session e Fast Mode com Opus 4.7?
relacionado-a: [Claude API, Economia de Tokens, Programacao e Dev]
---

# Pesquisa — Claude Code e Claude.ai (2026-05-18)

## 🎯 Síntese

O Claude Code desta semana consolida a virada para **operação multiagente**: o Agent View resolve o problema de gerenciar múltiplos terminais, os novos flags de `claude agents` permitem configurar sessões em background com granularidade cirúrgica, e o Fast Mode migrou para Opus 4.7. Rate limits dobrados para todos os planos pagos eliminam os gargalos em horário de pico.

## 🔬 Detalhes

### Agent View (lançado semana de 12/05)
- Dashboard CLI unificado: vê todas as sessões ativas em uma interface
- Inicia agentes, manda para background, verifica status/última resposta, retorna só quando precisar de input
- Resolve o caos de múltiplos terminais em pipelines multiagente
- Disponível em planos Pro, Max, Team, Enterprise e API

### Novos flags de `claude agents`
| Flag | Função |
|------|--------|
| `--add-dir` | Adiciona diretório acessível ao agente |
| `--settings` | Arquivo de settings customizado para a sessão |
| `--mcp-config` | Config MCP dedicada ao agente |
| `--plugin-dir` | Plugins específicos da sessão |
| `--permission-mode` | Controle fino de permissões |
| `--model` | Modelo específico por agente |
| `--effort` | Nível de esforço/qualidade |
| `--dangerously-skip-permissions` | Bypass de permissões (uso cauteloso) |

### Fast Mode → Opus 4.7 default
- Fast Mode agora roda Opus 4.7 por padrão (migração de Opus 4.6)
- Mesma velocidade 2,5× de output, porém com o modelo mais capaz disponível

### Rate Limits dobrados
- Todos os planos pagos têm rate limits 2× maiores
- Claude Code e API Opus com limites ampliados para enterprise em escala
- Elimina picos em horário de ponta para contas Pro/Max

### Melhorias UX
- PostToolUse output replacement para hooks
- Fullscreen scroll fixes e scrollable dialogs
- Wrapped URL clicking + iTerm2 clipboard support
- Daemon mais confiável e fixes de estabilidade no macOS sleep e Windows

## 🔗 Conexões
- [[Pesquisa - 2026-05-17 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-18 - Claude API]]
- [[Pesquisa - 2026-05-18 - Programacao e Dev]]

## 📚 Fontes
- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [7 Claude Code Features You Likely Missed — Medium](https://medium.com/@joe.njenga/i-tested-7-claude-code-new-features-you-likely-missed-in-the-last-10-days-87629ab086c7)
- [Releases — anthropics/claude-code GitHub](https://github.com/anthropics/claude-code/releases)

## 🔄 Complemento (pesquisa vespertina)

### /goal — Arquitetura Supervisor
```bash
/goal "all tests in test/auth pass and lint is clean"
/goal "homepage Lighthouse score > 90 em 3 runs consecutivos"
```
- Loop interno: escreve código → testa → depura → repete até condition met
- **Supervisor**: segunda sessão Claude independente valida o estado final do repositório antes de marcar como Done (evita falso positivo)
- Controle declarativo: define condição, não passos
- Proteção: subagentes travam após 10min de idle para evitar loops infinitos

### Hooks — updatedToolOutput para TODOS os tools
```json
{
  "hookSpecificOutput": {
    "updatedToolOutput": "conteúdo substituto aqui"
  }
}
```
Antes disponível apenas para MCP tools — agora funciona para **qualquer tool** via PostToolUse.

### terminalSequence
```json
{
  "terminalSequence": "\033]0;Claude: Tarefa concluída\007\007"
}
```
Campo novo no JSON de hook output para emitir sequências de terminal sem terminal controlador: notificações desktop, títulos de janela, bells em pipelines headless.

### MCP — fixes importantes
- **OAuth fix**: tokens de refresh não são mais perdidos em refresh concorrente — fim do re-login diário com múltiplos MCP remotos
- **OTEL isolation**: isolamento de telemetria para subprocessos (hooks e servidores MCP)
- **Plugin zip support**: plugins empacotados em `.zip`

### Routines (Cloud Schedules)
- Automações cloud-managed com triggers: schedule (cron), API, GitHub
- Independente de sessão aberta — roda em background mesmo com máquina idle
- **Limite Pro**: 5 rotinas/dia

## 🚧 Lacunas
- O Agent View já suporta sessões iniciadas via SDK (não via CLI)?
- Como o `--effort` flag se comporta em custo — dobra tokens ou é só instrução de prompt?
- Existe um limite de agentes simultâneos visíveis no Agent View?
- O Plugin zip support já está disponível em todos os planos ou só em Team/Enterprise?
