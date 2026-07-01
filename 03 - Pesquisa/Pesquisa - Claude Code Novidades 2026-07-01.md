---
tipo: pesquisa
status: ativo
criado: 2026-07-01
atualizado: 2026-07-01
tags: [ia, claude, dev-tools, cli]
related: []
pergunta-central: Quais são as novidades do Claude Code em julho de 2026?
relacionado-a: Claude API
---

# Claude Code — Novidades Julho 2026

Cobertura das versões v2.1.193 a v2.1.197, com foco em novidades a partir de 28/06/2026.

---

## Claude Sonnet 5 como modelo padrão (v2.1.197 — 30/jun)

O Sonnet 5 passou a ser o modelo padrão do Claude Code. Destaques:

- Janela de contexto nativa de **1M de tokens**
- Preço promocional de **$2/$10 por MTok** até 31 de agosto
- Substitui o Opus 4.8 como padrão em fluxos interativos

---

## Gerenciamento de Organização e Sessões (v2.1.196 — 29/jun)

### Modelos padrão por organização
Administradores podem definir o modelo padrão via console de org. O `/model` passa a exibir "Org default" ou "Role default". Restrições de modelo agora se aplicam ao seletor `/model`, flag `--model`, variável `ANTHROPIC_MODEL` e comando `/model` — com mensagem de "restricted by your organization's settings" ao tentar usar modelo bloqueado.

### Nomes de sessão legíveis
Sessões agora recebem nomes padrão descritivos ao iniciar, facilitando identificação no `claude agents`.

### Anexos clicáveis
Arquivos anexados no chat podem ser abertos com Cmd/Ctrl-click diretamente no Finder/Explorer.

### Stream watchdog ativado por padrão
O watchdog que aborta streams silenciosos passou a ser ativado por padrão para todos os providers, com timeout de 5 minutos. Para desativar: `CLAUDE_ENABLE_STREAM_WATCHDOG=0`.

### `/code-review` mais eficiente
O workflow `/code-review` unificou 5 buscadores de problemas em um, **reduzindo uso de tokens em ~25%**.

---

## Segurança e Background Jobs (v2.1.196)

- **MCP security**: `claude mcp list` e `claude mcp get` não mais disparam servidores configurados em `.mcp.json` de workspaces não confiáveis — eles aparecem como `⏸ Pending approval`
- **`sandbox.credentials`**: nova configuração que impede comandos em sandbox de ler arquivos de credenciais e variáveis de ambiente secretas
- **Background session reliability**: comandos de longa duração agora sobrevivem a paradas, reinicializações e atualizações do processo — incluindo no Windows, onde shells são passados adiante em vez de encerrados
- **Remote Control**: desativado automaticamente quando `ANTHROPIC_BASE_URL` aponta para host não-Anthropic

---

## Hooks e Matchers (v2.1.195 — 26/jun)

Correção crítica: hooks com hífens no nome (ex.: `code-reviewer`, `mcp__brave-search`) faziam substring-match de forma incorreta. Agora fazem **exact-match**. Para usar pattern matching, é necessário sintaxe explícita: `mcp__brave-search__.*`.

---

## Voz e Input (v2.1.195)

- `CLAUDE_CODE_DISABLE_MOUSE_CLICKS`: desativa cliques do mouse no fullscreen mantendo o scroll da roda
- Voice dictation corrigido para captura de silêncio após mudança de dispositivo de entrada no macOS
- Auto-submit corrigido para idiomas sem espaços (japonês, chinês, tailandês)

---

## Auto Mode e Permissões (v2.1.193 — 25/jun)

- **`autoMode.classifyAllShell`**: nova config que roteia **todos** os comandos Bash/PowerShell pelo classificador de auto mode (não apenas padrões de execução arbitrária)
- **Razões de negação**: agora exibidas no transcript, no toast de negação e em `/permissions` aba "Recently denied"
- **Background subagents**: passam a exibir prompts de permissão na sessão principal em vez de auto-negar; o dialog indica qual agente está pedindo e Esc nega apenas aquele tool

---

## Observabilidade — OpenTelemetry (v2.1.193)

Novo evento de log: `claude_code.assistant_response` carrega o texto de resposta do modelo.

Controle via env vars:
- `OTEL_LOG_ASSISTANT_RESPONSES=1` — ativa logging de respostas
- `OTEL_LOG_ASSISTANT_RESPONSES=0` — mantém apenas prompts
- Segue `OTEL_LOG_USER_PROMPTS` se não definido

---

## Performance e Memória (v2.1.193 / v2.1.191)

- Streaming com **~37% menos CPU** via coalescing de atualizações de texto em janelas de 100ms
- Reaping automático de shells background ociosos sob pressão de memória (desativar: `CLAUDE_CODE_DISABLE_BG_SHELL_PRESSURE_REAP=1`)
- Redução de crescimento de memória em sessões longas pelo cache de saída do terminal

---

## `/rewind` — Retomar antes do `/clear` (v2.1.191 — 24/jun)

O comando `/rewind` agora permite retomar uma conversa a partir de um ponto anterior ao `/clear`, preservando o histórico que seria descartado.

---

## MCP — Autenticação CLI (v2.1.186 — 23/jun)

- `claude mcp login <nome>`: executa o fluxo OAuth de um servidor MCP configurado direto do shell, sem abrir sessão interativa
- `claude mcp logout <nome>`: limpa as credenciais armazenadas
- Timeout de 5 minutos para chamadas MCP remotas travadas (override: `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT`)

---

## Shell Mode — Resposta a Comandos (v2.1.186)

Comandos com prefixo `!` agora disparam resposta automática do Claude ao output produzido. Exemplo: `! npm test` gera uma explicação das falhas sem segundo prompt. Para manter comportamento anterior: `"respondToBashCommands": false` no `settings.json`.

---

## Referência Rápida — Novas Env Vars (jun-jul 2026)

| Variável | Função |
|---|---|
| `CLAUDE_ENABLE_STREAM_WATCHDOG=0` | Desativa watchdog de stream |
| `OTEL_LOG_ASSISTANT_RESPONSES=1` | Loga respostas do assistente via OTel |
| `CLAUDE_CODE_DISABLE_BG_SHELL_PRESSURE_REAP=1` | Desativa reaping de shells ociosos |
| `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT` | Override do timeout de tools MCP |
| `CLAUDE_CODE_DISABLE_MOUSE_CLICKS` | Desativa mouse no fullscreen |

---

## Fontes

- [What's New — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Week 26 Digest (Jun 22–26)](https://code.claude.com/docs/en/whats-new/2026-w26)
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Updates July 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Anthropic Release Notes June 2026 — Releasebot](https://releasebot.io/updates/anthropic)
