---
tipo: pesquisa
status: ativo
criado: 2026-05-16
atualizado: 2026-05-16
tags: [pesquisa, ia, claude, claude-code, agent-view, goal, plugins]
pergunta-central: "Quais são as principais novidades do Claude Code em maio de 2026, com foco em Agent View e na flag /goal?"
relacionado-a: [Pesquisa - 2026-05-15 - Claude Code, Pesquisa - 2026-05-16 - Claude API]
---

# Pesquisa — Claude Code (16/05/2026)

## ❓ Pergunta central

Quais são as principais novidades do Claude Code em maio de 2026, com foco em Agent View (Research Preview) e na feature `/goal` para execução autônoma?

## 🎯 Síntese

O Claude Code ganhou um salto qualitativo em autonomia e gerenciamento multi-sessão. O **Agent View** (Research Preview) centraliza todas as sessões ativas em uma lista única, permitindo iniciar agentes, enviá-los ao background e retornar só quando necessário. A feature `/goal` introduz tarefas outcome-based que executam independentemente. O Fast mode agora usa **Opus 4.7** por padrão. O ecossistema de plugins evoluiu com dependency enforcement e estimativas de custo por token diretamente no marketplace.

## 🔬 Detalhes

### 1. Agent View (Research Preview)

- Lista unificada de todas as sessões Claude Code: ativas, bloqueadas aguardando input, e concluídas
- Permite:
  - Iniciar novos agentes
  - Enviar sessões ao background
  - Verificar status e última resposta sem entrar na sessão
  - Retornar à sessão apenas quando input é necessário
- Paradigma de "async agente": o desenvolvedor gerencia múltiplos contextos sem perder foco

### 2. Feature `/goal` — Autonomia Outcome-Based

- Define tarefas por **resultado esperado** em vez de passos detalhados
- Execução independente: Claude planeja e executa sem intervenção contínua
- Novo nível de autonomia — complementa os hooks e automações existentes

### 3. Model Update — Fast Mode com Opus 4.7

- Fast mode agora usa **Claude Opus 4.7** por padrão (substituindo Opus 4.6)
- Mais capacidade de raciocínio sem custo adicional para usuários do Fast mode

### 4. Plugin System — Melhorias

- **Dependency enforcement**: `claude plugin disable` recusa quando outro plugin ativo depende do alvo
  - Gera dica copiável de "disable chain" para resolver dependências manualmente
  - `claude plugin enable` força ativação de dependências transitivas automaticamente
- **Projected context cost**: estimativa de custo por token (por turno e por invocação) no marketplace (`/plugin marketplace browse`)
  - Ajuda a tomar decisão sobre qual plugin ativar vs. custo de contexto

### 5. Novos Flags para `claude agents`

Flags adicionados para configurar sessões de background:

| Flag | Função |
|------|--------|
| `--add-dir` | Adiciona diretório ao contexto do agente |
| `--settings` | Arquivo de settings customizado |
| `--mcp-config` | Configuração MCP específica |
| `--plugin-dir` | Diretório de plugins alternativo |
| `--permission-mode` | Modo de permissão (default, acceptEdits, etc.) |
| `--model` | Override de modelo por sessão |
| `--effort` | Nível de esforço/profundidade |
| `--dangerously-skip-permissions` | Bypass de permissões (uso com cautela) |

### 6. Worktree — Nova Opção de Isolamento

- `worktree.bgIsolation: "none"`: sessões de background editam a cópia de trabalho diretamente, sem criar worktree
- Útil para repositórios onde worktrees são impraticáveis (monorepos, links simbólicos complexos)

## 🔗 Conexões

- [[Pesquisa - 2026-05-15 - Claude Code]] — Agent Teams, hooks de automação, background sessions
- [[Pesquisa - 2026-05-16 - Claude API]] — Opus 4.7 lançado, task budgets
- [[Pesquisa - 2026-05-15 - Deploy e Infraestrutura]] — implicações de CI/CD com claude agents flags

## 📚 Fontes

- [Claude Code Changelog 2026 — Claudefa.st](https://claudefa.st/blog/guide/changelog)
- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Updates May 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [7 Claude Code Features You Likely Missed — Medium/Joe Njenga](https://medium.com/@joe.njenga/i-tested-7-claude-code-new-features-you-likely-missed-in-the-last-10-days-87629ab086c7)
- [How the New Claude Code Agent View Changes Development — Geeky Gadgets](https://www.geeky-gadgets.com/claude-code-agent-view-update/)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)

## 🚧 Lacunas

- Agent View: disponível apenas no Claude Code CLI ou também no VS Code/JetBrains?
- `/goal`: existe limite de complexidade das tarefas? Integra com task budgets da API?
- Projected context cost: os valores são em USD real ou estimativas relativas?
- Roadmap oficial: quando Agent View sai de Research Preview para GA?
