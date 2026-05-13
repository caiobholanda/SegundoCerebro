---
tipo: pesquisa
status: ativo
criado: 2026-05-13
atualizado: 2026-05-13
tags: [pesquisa, claude-code, agente, automacao, ia]
pergunta-central: "Quais são as novidades do Claude Code em maio 2026 e como impactam workflows agenticos?"
relacionado-a: [Pesquisa - 2026-05-08 - Claude Code Skills e Automacao, Pesquisa - 2026-05-13 - Claude API]
---

# Pesquisa — Claude Code (13/05/2026)

## ❓ Pergunta central
Quais são as novidades do Claude Code em maio 2026 e como impactam workflows agenticos?

## 🎯 Síntese (3-5 linhas)
O Claude Code de maio 2026 consolida sua evolução de IDE assistant para plataforma de engenharia agentica. Destaques: **Agent View** (dashboard de todas as sessões em Research Preview) e **/goal command** (Claude trabalha autonomamente até atingir uma meta definida). Os rate limits foram dobrados para todos os planos pagos e o throttling de pico foi removido. A arquitetura de **Hooks + Subagents + Skills** se tornou o stack padrão para workflows de produção, com hooks em 25 pontos do lifecycle. Multi-Agent Orchestration (agente líder + sub-agentes especializados paralelos) é o novo paradigma para tarefas complexas.

## 🔬 Detalhes

### Agent View (Research Preview)
- Painel único listando todas as sessões Claude Code: em execução, aguardando input, ou concluídas
- Visibilidade completa de todos os agentes rodando em paralelo
- Resolve o problema de "não saber o que está acontecendo" em pipelines multi-agente

### /goal command
- Define condição de conclusão em linguagem natural
- Claude trabalha autonomamente, atravessando múltiplos turnos, até atingir o objetivo
- Funciona em modo interativo, `-p` (print), e Remote Control
- Overlay exibe: tempo decorrido, número de turnos, tokens consumidos
- Exemplo: `/goal "todos os testes passando no CI"`

### /scroll-speed command
- Ajusta velocidade de scroll do mouse com preview em tempo real
- Pequena mas importante melhoria de ergonomia para sessões longas

### Rate Limits — dobrados (efetivo 06/05/2026)
- Pro, Max, Team, Enterprise: limites de 5 horas dobrados
- Peak-hour throttling removido para Pro e Max
- Motivado pela nova capacidade compute (acordo Anthropic + SpaceX / Colossus 1)
  - 300+ MW, 220.000+ GPUs NVIDIA disponíveis

### Arquitetura de Produção: Hooks + Subagents + Skills
Três pilares que transformam Claude Code em plataforma programável:

**Hooks** — interceptam 25 lifecycle points:
- `UserPromptSubmit`: bloqueia/modifica prompt antes do Claude ver
- `PreToolUse`: checkpoint de segurança antes de executar qualquer tool
- `PostToolUse`, `StopHook`, etc.
- Scriptas determinísticas — sempre executam da mesma forma

**Subagents** (`.claude/agents/`):
- Contextos isolados para tarefas paralelas
- Não contaminam o contexto principal
- Cada um tem model, prompt e permissões próprias
- Exemplo de uso neste vault: curador, conector, historiador

**Skills** (`.claude/commands/`):
- Empacotam workflows reutilizáveis em comandos invocáveis
- Ex.: `/diario`, `/inbox`, `/pesquisa`, `/destilar`
- Composable: skills podem invocar subagents

### Multi-Agent Orchestration
- Agente líder planeja e integra resultados
- Sub-agentes especialistas executam em paralelo (filesystem compartilhado)
- Líder pode verificar sub-agentes mid-workflow
- Casos de uso: code review + tests + QA rodando simultaneamente

### Correções relevantes
- `autoAllowBashIfSandboxed` agora aprova corretamente comandos com expansões shell (`$VAR`, `$(cmd)`)
- Corrigido memory leak em HTTP/SSE MCP servers que transmitem dados não-protocolo
- Melhorias em login, scrolling, diffs, e integrações com editors

## 🔗 Conexões
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]] — pesquisa base com fundamentos
- [[Pesquisa - 2026-05-13 - Claude API]] — Agent SDK (renomeação do Claude Code SDK)
- [[Pesquisa - 2026-05-08 - Cloud e Infraestrutura]] — SpaceX compute + Anthropic
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]] — Colossus 1 e expansão de capacidade

## 📚 Fontes
- [[Referência - Doc - Claude Code Changelog 2026]]
- [[Referência - Artigo - Claude Code Hooks Subagents Skills 2026]]

## 🚧 Lacunas
- Agent View: quando sai de Research Preview para GA?
- /goal: limite de turnos máximo antes de timeout?
- Qual o custo extra de rodar Multi-Agent Orchestration (tokens dos sub-agentes contam separado?)
- Hooks em 25 pontos: lista completa dos event names disponíveis?
- Skills podem ter hooks próprios ou apenas comandos herdados do agente pai?
