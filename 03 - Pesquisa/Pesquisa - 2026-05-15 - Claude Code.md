---
tipo: pesquisa
status: ativo
criado: 2026-05-15
atualizado: 2026-05-15
tags: [pesquisa, claude-code, plugins, marketplace, hooks, agente]
pergunta-central: "Como funciona o Plugin Marketplace do Claude Code, o que são os plugins de primeira classe e quais melhorias recentes de bug fixes e hooks foram lançadas em maio/2026?"
relacionado-a: [Pesquisa - 2026-05-14 - Claude Code, Pesquisa - 2026-05-13 - Claude Code, Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]
---

# Pesquisa — Claude Code (15/05/2026)

## ❓ Pergunta central

Como funciona o Plugin Marketplace do Claude Code, o que são os plugins de primeira classe, e quais melhorias de bug fixes e hooks foram lançadas em maio/2026?

## 🎯 Síntese

O Plugin Marketplace se tornou sistema de primeira classe no Claude Code em maio/2026: plugins instalam via `--plugin-url` ou `--plugin-dir` (aceita .zip), registram slash commands, hooks, sub-agentes e skills — arquitetura similar ao VS Code Extensions. O marketplace oficial da Anthropic (`claude-plugins-official`) já incluiu o comando `/radio` (abre Claude FM lo-fi radio no browser). Em paralelo, bug fixes relevantes cobriram crash do `claude --bg`, hot-reload com symlinks, e subagent_type matching insensível a maiúsculas. O MCP agora auto-retry até 3 vezes em erros transientes.

## 🔬 Detalhes

### 1. Plugin Marketplace — Sistema de Primeira Classe

**Disponível desde v2.1.108 (maio/2026)**

- **Instalação via URL**: `--plugin-url <url>` baixa archive de plugin para a sessão atual
- **Instalação via diretório/zip**: `--plugin-dir <path>` aceita tanto diretório quanto arquivo `.zip`
- **Dependências automáticas**: `package.json` do plugin é instalado automaticamente
- **Segurança enterprise**: nova chave `blockedMarketplaces` em settings permite bloquear marketplaces não autorizados

**Marketplaces disponíveis:**
- Oficial Anthropic: `github.com/anthropics/claude-plugins-official` — plugins curados e mantidos pela equipe
- Comunidade: `awesome-claude-code-plugins` — lista ampla de plugins de terceiros

**Capacidades dos plugins** (arquitetura similar ao VS Code Extensions):
| Recurso | Descrição |
|---------|-----------|
| Slash commands | Adiciona comandos ao terminal (ex.: `/radio`) |
| Hooks | Registra listeners para eventos do lifecycle |
| Sub-agentes | Traz agentes especializados para o contexto |
| Skills | Define comportamentos que moldam o modelo |

### 2. Novos Comandos e Features

- **`/radio`**: abre Claude FM lo-fi radio no browser — adicionado pelo marketplace oficial; demonstra que o marketplace pode distribuir features utilitárias simples além de agentes complexos
- **`claude agents --cwd <path>`**: filtra lista de sessões por diretório — útil para monorepos com múltiplos projetos
- **`/feedback` expandido**: agora inclui sessões recentes (últimas 24h ou 7 dias) para reportar problemas que abrangem mais de uma sessão
- **`CLAUDE_CODE_PLUGIN_PREFER_HTTPS`**: variável de ambiente para clonar plugins do GitHub via HTTPS em vez de SSH (ambientes sem chave SSH configurada)

### 3. Melhorias de Hooks

- **`terminalSequence` em hook JSON output**: permite que hooks emitam notificações desktop, títulos de janela e bells sem um terminal controlador — útil para automações headless
- Hooks podem agora reagir a eventos do ciclo de vida sem depender de UI ativa

### 4. Bug Fixes Relevantes (semana 12-14/05/2026)

| Bug | Correção |
|-----|----------|
| `claude --bg` falhava com "connection dropped mid-request" | Corrigido — background agents estáveis |
| Settings hot-reload com symlinks causava eventos de mudança mal atribuídos | Corrigido — paths symlinked detectados corretamente |
| Background service falhava em máquinas com endpoint security enterprise | Corrigido — compatibilidade com AV/EDR corporativo |
| `/goal` travava silenciosamente com `disableAllHooks` ou `allowManagedHooksOnly` | Corrigido — erro explícito exibido |
| `Agent tool subagent_type` case-sensitive causava falha de match | Corrigido — agora aceita "Code Reviewer" → `code-reviewer` |

### 5. MCP e Integrações

- **Auto-retry em servidores MCP**: servidores que sofrem erros transientes agora tentam reconectar até 3 vezes automaticamente antes de falhar
- **Vertex AI — mTLS ADC**: suporte a X.509 certificate-based Workload Identity Federation para ambientes corporativos com Google Cloud

### 6. Plugins para Serviços Financeiros

- Anthropic lançou 10 templates de agentes prontos para uso em serviços financeiros
- Distribuídos como plugins no Claude Cowork e Claude Code, além de cookbooks para Managed Agents
- Cobre casos de uso: análise de portfólio, due diligence, compliance, modelagem de risco

## 🔗 Conexões

- [[Pesquisa - 2026-05-14 - Claude Code]] — /goal, Agent View, billing multi-agent, hooks lifecycle
- [[Pesquisa - 2026-05-13 - Claude Code]] — Routines, Agent Teams, Desktop Redesign
- [[Pesquisa - 2026-05-15 - Claude API]] — MCP Connector update, Skills API beta
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]] — base histórica de skills/automação

## 📚 Fontes

- [Claude Code May 2026 Release Notes: From the /radio Tweet to the Plugin Marketplace — pasqualepillitteri.it](https://pasqualepillitteri.it/en/news/2223/claude-code-may-2026-release-notes-radio-plugin-marketplace)
- [Discover and install prebuilt plugins — Claude Code Docs](https://code.claude.com/docs/en/discover-plugins)
- [GitHub: anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official)
- [Claude Code Plugins & Marketplaces — aitmpl.com](https://www.aitmpl.com/plugins/)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Claude Code Changelog — claudefa.st](https://claudefa.st/blog/guide/changelog)
- [Code with Claude 2026: 5 New Agent Features — MindStudio](https://www.mindstudio.ai/blog/code-with-claude-2026-new-agent-features)
- [Agents for financial services — Anthropic](https://www.anthropic.com/news/finance-agents)
- [Claude Code Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)

## 🚧 Lacunas

- Limite de plugins simultâneos por sessão: documentação não especifica teto
- Como `blockedMarketplaces` interage com plugins já instalados (retroativo ou apenas novos?)
- `/radio` é apenas cosmético ou demonstra pattern de plugins de "lifestyle features" que Anthropic pretende expandir?
- MCP auto-retry: configurável (número de tentativas, backoff) ou fixo em 3?
- Plugins financeiros: disponíveis apenas para planos Enterprise ou também para Pro/Team?
