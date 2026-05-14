---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, claude-code, agente, automacao, ia]
pergunta-central: "Quais são as informações novas sobre Claude Code pós-13/05/2026, e o que foi esclarecido sobre as lacunas da pesquisa anterior (hooks event names, /goal timeout, billing multi-agent, Agent View GA)?"
relacionado-a: [Pesquisa - 2026-05-13 - Claude Code, Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]
---

# Pesquisa — Claude Code (14/05/2026)

## ❓ Pergunta central
Quais informações novas surgiram sobre Claude Code pós-13/05/2026, e o que foi esclarecido sobre as lacunas da sessão anterior — especificamente: hooks event names completos, limite de turnos do /goal, billing de multi-agent orchestration, e timeline de GA do Agent View?

## 🎯 Síntese (3-5 linhas)
A semana de 11-14/05/2026 consolidou o Claude Code como plataforma de orquestração multi-agente: Agent View (Research Preview desde 11/05) unifica todas as sessões; /goal opera sem limite fixo de turnos mas aceita cláusulas de parada declarativas; subagentes consomem tokens em contextos independentes (sem billing separado, mas multiplicam custo ~3-4x); hooks agora somam ~27-28 eventos documentados (não 25 como citado anteriormente); e dois recursos maiores lançados em abril — Routines (cloud scheduling) e Desktop Redesign — completam o ecossistema de automação paralela.

## 🔬 Detalhes

### 1. Agent View — Status e GA

**Lançado**: 11/05/2026 como Research Preview  
**Planos**: Pro, Max, Team, Enterprise, API  
**Acesso**: `claude agents` no CLI  
**Funcionalidades**: lista única de sessões (running / blocked on you / done), dispatch de novas tarefas, resposta a prompts bloqueados, stop/cleanup de sessões

**Quanto ao GA**: Anthropic não anunciou data. A declaração oficial é:
> "Research preview means the keybindings, command names, and UI may shift before general availability. The underlying capability — one list, every session — is the part Anthropic is committing to."

**Conclusão**: GA sem data definida. O conceito é permanente; a interface ainda pode mudar.

---

### 2. /goal — Limite de turnos

O comando `/goal` foi introduzido na versão 2.1.139 (12/05/2026). Não existe um limite máximo fixo de turnos documentado oficialmente.

**Comportamento**: Claude trabalha autonomamente até que a condição de conclusão declarada seja satisfeita.

**Como controlar**: incluir cláusula de parada no próprio goal:
```
/goal refatorar módulo de autenticação; ou parar após 20 turnos
/goal rodar testes até zero falhas; timeout de 30 min
```

**Subagentes**: subagentes que travam mid-stream falham com erro após 10 minutos (em vez de travar indefinidamente). Configurável via `CLAUDE_STREAM_IDLE_TIMEOUT_MS`.

**Conclusão**: não há timeout fixo — o controle é declarativo, por design.

---

### 3. Hooks — Lista completa de eventos

Fontes divergem no número exato. A pesquisa de 13/05 citou "25 lifecycle points"; fontes de março/2026 citam 21; outras citam 12 ou 18. A lista mais abrangente encontrada para 05/2026 soma **27-28 eventos**:

**Sessão e config (5):**
| Evento | Quando dispara |
|--------|---------------|
| `Setup` | Antes da sessão iniciar |
| `SessionStart` | Início de sessão |
| `SessionEnd` | Encerramento de sessão |
| `InstructionsLoaded` | Após carregar CLAUDE.md / instruções |
| `ConfigChange` | Mudança de config em runtime |

**Prompt e interação (4):**
| Evento | Quando dispara |
|--------|---------------|
| `UserPromptSubmit` | Ao submeter prompt (pode bloquear/modificar) |
| `UserPromptExpansion` | Expansão de prompt pelo sistema |
| `Elicitation` | Claude solicita informação ao usuário |
| `ElicitationResult` | Resposta ao Elicitation recebida |

**Ferramentas e permissões (5):**
| Evento | Quando dispara |
|--------|---------------|
| `PreToolUse` | Antes de qualquer ferramenta (checkpoint de segurança) |
| `PermissionRequest` | Claude solicita permissão |
| `PermissionDenied` | Permissão negada |
| `PostToolUse` | Após ferramenta executar com sucesso |
| `PostToolUseFailure` | Após ferramenta falhar |

**Parada e notificação (3):**
| Evento | Quando dispara |
|--------|---------------|
| `Stop` | Claude ou subagente encerra (pode forçar continuação) |
| `StopFailure` | Falha no encerramento |
| `Notification` | Notificação gerada |

**Subagentes (2):**
| Evento | Quando dispara |
|--------|---------------|
| `SubagentStart` | Subagente inicia |
| `SubagentStop` | Subagente encerra |

**Compactação (2):**
| Evento | Quando dispara |
|--------|---------------|
| `PreCompact` | Antes de compactar contexto |
| `PostCompact` | Após compactar contexto |

**Worktrees (2):**
| Evento | Quando dispara |
|--------|---------------|
| `WorktreeCreate` | Criação de worktree |
| `WorktreeRemove` | Remoção de worktree |

**Sistema de arquivos (2):**
| Evento | Quando dispara |
|--------|---------------|
| `CwdChanged` | Diretório de trabalho alterado |
| `FileChanged` | Arquivo modificado |

**Agent Teams — mais recentes (3):**
| Evento | Quando dispara |
|--------|---------------|
| `TaskCreated` | Tarefa criada em time de agentes |
| `TeammateIdle` | Agente parceiro ocioso |
| `TaskCompleted` | Tarefa do time concluída |

**Tipos de handler disponíveis:**
- Command hooks (shell scripts)
- HTTP hooks — POST para endpoint, recebe JSON (adicionado fev/2026)
- Prompt hooks (LLM prompt)
- Agent hooks (dispara subagente)

**Features recentes de hooks:**
- `async: true` — hook roda em background sem bloquear Claude (jan/2026)
- `disableAllHooks` para desabilitar tudo de uma vez
- `/hooks` menu agora read-only

**Skills e hooks**: Skills podem definir hooks no frontmatter YAML, com escopo limitado ao lifetime da skill. Não herdam o escopo global — são locais ao componente.

---

### 4. Multi-Agent Orchestration — Billing e tokens

**Modelo de billing**: sem tarifa separada para subagentes. Todos os tokens (orquestrador + subagentes) são cobrados à mesma taxa do modelo escolhido via API padrão.

**Contextos**: cada subagente possui **contexto independente** — não contamina nem compartilha tokens com o agente pai ou outros subagentes.

**Multiplicador de custo**: um time de 3 subagentes usa ~3-4x os tokens de uma sessão sequencial equivalente.

**Exemplos reais de custo reportados:**
- 49 subagentes paralelos para `/typescript-checks` por 2.5h → estimativa $8.000–$15.000
- 23 subagentes em code-quality não supervisionados por 3 dias → $47.000

**Estratégias de controle:**
- Rotear tarefas simples para Haiku (mais barato)
- Context compaction reduz contexto em 60-80%
- Benchmark: $150–$250/dev/mês antes de otimização; ~$13/dia ativo como estimativa central

---

### 5. Novos recursos pós-13/05/2026

**Versão 2.1.139 (12/05/2026):**
- `/goal` command — trabalho autônomo até condição de conclusão
- `--plugin-url` flag — carrega plugin archive via URL para sessão atual
- `--plugin-dir` agora aceita arquivo `.zip` além de diretório
- `/recap` — fornece contexto ao retornar a sessão (configurável em /config)
- `/model` picker lista modelos do gateway quando `ANTHROPIC_BASE_URL` aponta para gateway compatível
- `claude project purge [path]` — deleta todo estado Claude Code de um projeto
- Skills folder protection expandida: `--dangerously-skip-permissions` não mais solicita writes em `.claude/skills/`, `.claude/agents/`, `.claude/commands/`
- Agentes que terminam mas deixam shell rodando em background agora movem para "Completed"
- Auto mode permission dialog explica quando `permissions.ask` causou o prompt
- Background agents via `/bg` ou `←←` preservam permission mode atual em vez de reverter ao padrão

**Desktop App Redesign (Abril 2026 — mas amplamente noticiado esta semana):**
- Sidebar para múltiplas sessões com filtro por status/projeto/ambiente
- Layout drag-and-drop
- Terminal integrado
- Editor de arquivos in-app
- Diff viewer reconstruído para performance
- Side chat (⌘+; / Ctrl+;) — branch sem contaminar contexto principal
- Preview in-app para HTML, PDFs, servidores locais
- Auto-archive quando PR é mergeado/fechado

**Routines (Lançado 14/04/2026 — Research Preview):**
- Automações cloud-managed (roda com laptop fechado)
- Triggers: schedule, API (HTTP POST), GitHub events
- Limites: Pro 5/dia, Max 15/dia, Team/Enterprise 25/dia
- Criação via web (claude.ai/code/routines), desktop ou CLI

---

### 6. Skills e hooks próprios

Skills podem definir hooks no frontmatter YAML com escopo local (não global). O comportamento é:
- Hooks de skill ficam ativos apenas durante o lifetime da skill
- Cleanup automático quando a skill termina
- Não herdam hooks do agente pai — são adicionais e isolados

Isso significa que uma skill pode, por exemplo, definir um `PostToolUse` hook que só dispara quando a skill está ativa, sem afetar o comportamento global do agente.

---

## 🔗 Conexões
- [[Pesquisa - 2026-05-13 - Claude Code]]
- [[Pesquisa - 2026-05-13 - Claude API]]
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]]
- [[Referência - Doc - Claude Code Hooks Reference 2026]]
- [[Referência - Doc - Claude Code Agent View 2026]]
- [[Referência - Doc - Claude Code Routines 2026]]
- [[Referência - Artigo - Claude Code Desktop Redesign 2026]]
- [[Referência - Doc - Claude Code Changelog 2026]]
- [[Referência - Artigo - Claude Code Hooks Subagents Skills 2026]]

## 📚 Fontes
- [Agent view in Claude Code — Anthropic Blog](https://claude.com/blog/agent-view-in-claude-code)
- [Hooks reference — Claude Code Docs](https://code.claude.com/docs/en/hooks)
- [Keep Claude working toward a goal — Claude Code Docs](https://code.claude.com/docs/en/goal)
- [Create custom subagents — Claude Code Docs](https://code.claude.com/docs/en/sub-agents)
- [Automate work with routines — Claude Code Docs](https://code.claude.com/docs/en/routines)
- [Redesigning Claude Code on desktop — Anthropic Blog](https://claude.com/blog/claude-code-desktop-redesign)
- [Claude Code Changelog — claude.fa.st](https://claudefa.st/blog/guide/changelog)
- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Skills vs Hooks — MindStudio](https://www.mindstudio.ai/blog/claude-code-skills-vs-hooks-difference)
- [Claude Code Pricing 2026 — Finout](https://www.finout.io/blog/claude-code-pricing-2026)
- [Claude Code 2.1.139 adds /goal command — explainx.ai](https://explainx.ai/blog/claude-code-goal-command-long-running-agents-2026)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Claude Code Limits — ClaudeLog](https://claudelog.com/claude-code-limits/)
- [Claude Code Agent View Deep Dive — Oflight Inc.](https://www.oflight.co.jp/en/columns/claude-code-agent-view-parallel-orchestration-2026)

## 🚧 Lacunas
1. **Agent View GA**: sem data anunciada. "Research Preview" sem roadmap público de promoção a GA.
2. **/goal timeout**: não há limite fixo documentado — o controle é declarativo (o usuário inclui cláusula de parada na condição). Pode ser uma decisão de design permanente, não uma lacuna de documentação.
3. **Lista exata de 25 hooks**: fontes divergem — a documentação oficial provavelmente lista entre 21 e 28 eventos dependendo da versão consultada. A lista nesta nota representa a compilação mais completa encontrada, mas pode não ser exaustiva.
4. **Billing de subagentes via planos pagos (não API)**: o modelo de custo em tokens é claro para API. Para planos Pro/Max (usage-based vs. flat-fee), não ficou claro como múltiplos subagentes paralelos impactam os limites de rate ou o billing mensal.
5. **Skills com hooks — profundidade**: confirmado que skills podem ter hooks no frontmatter YAML, mas não foi encontrada documentação detalhada sobre quais eventos são suportados no escopo de skill vs. globais.
