---
tipo: pesquisa
status: em-andamento
criado: 2026-06-05
atualizado: 2026-06-05
tags: [pesquisa, claude-code, cli, agentes, automatico]
related: ["[[Pesquisa - 2026-06-03 - Claude Code — CLI e agentes]]"]
pergunta-central: "Quais são as últimas mudanças no Claude Code CLI em 05/06/2026?"
relacionado-a: [claude-code, cli]
---

# Claude Code — CLI e Agentes — 2026-06-05

## Destaque principal

**OTEL agora inclui labels customizáveis por dimensão**: `OTEL_RESOURCE_ATTRIBUTES` são propagados como labels em todos os datapoints de métricas — permite fatiar uso por equipe, repositório ou qualquer dimensão via configuração de ambiente.

## Novidades (semana de 04–05/06)

### Observabilidade (OTEL)
- **`app.entrypoint` como atributo de métrica**: opt-in via `OTEL_METRICS_INCLUDE_ENTRYPOINT=true` — registra o ponto de entrada da sessão nas métricas
- **`tool_decision` telemetry com parâmetros**: quando `OTEL_LOG_TOOL_DETAILS=1`, eventos de decisão de ferramenta incluem `tool_parameters` (comandos bash, nomes de MCP/skill)
- **`OTEL_RESOURCE_ATTRIBUTES` como labels**: qualquer atributo definido no ambiente aparece como label nos datapoints — uso prático: `team=backend`, `repo=api`

### Agentes
- **`agent` field em `settings.json` honrado**: para sessões despachadas, o agente configurado em `settings.json` é agora respeitado; `--agent <n>` sobrescreve por chamada
- **`claude agents` rows com progresso**: exibe `done/total` antes do detalhe quando trabalho está fanned out; `peek` mostra o item de execução mais longa
- **Parallel tool calls mais resilientes**: falha em um `Bash` não cancela outros calls na mesma batch — cada ferramenta retorna seu próprio resultado independentemente

### UI / UX
- **`/plugin list`** com filtros `--enabled` / `--disabled`
- **`/effort`** confirma quando o nível escolhido persiste como padrão para novas sessões
- **Autocomplete de `/plugin`**: agora inclui subcomandos, nomes de plugins instalados e plugins de marketplaces conhecidos
- **Slash command no autocomplete**: clicar preenche o prompt em vez de executar imediatamente — pressionar Enter para rodar
- **`/mcp`** colapsa connectors do claude.ai não usados atrás de "Show unused connectors"

## O que mudou desde 2026-06-03

- OTEL ganhou profundidade: labels por dimensão (`OTEL_RESOURCE_ATTRIBUTES`) + parâmetros de ferramenta em telemetria
- Parallel tool calls: comportamento de falha isolada (não propaga para a batch)
- Autocomplete mais rico para plugins

## Links relacionados

- [[Pesquisa - 2026-06-03 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-01 - Claude Code — CLI e agentes]]

## Fontes

- [Claude Code Changelog — Claude Code Docs](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates June 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [GitHub Releases anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Configure custom OTEL collector — Claude Help Center](https://support.claude.com/en/articles/14447276-configure-a-custom-opentelemetry-collector-for-office-agents)
- [claude-code-otel observability solution — GitHub](https://github.com/ColeMurray/claude-code-otel)
