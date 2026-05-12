---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, ia, claude, automacao]
pergunta-central: "Como usar Claude Code de forma profissional com skills, hooks e automação?"
relacionado-a: []
---

# Pesquisa — Claude Code: Skills, Hooks e Automação (Maio 2026)

## O Que É Claude Code

Claude Code é o CLI oficial da Anthropic para uso de Claude no terminal. Mais do que um chat, é um **agente de engenharia** com acesso a:
- Sistema de arquivos (ler, criar, editar arquivos)
- Terminal (executar comandos Bash/PowerShell)
- Web (buscar e acessar páginas)
- Ferramentas especializadas (Glob, Grep, Agentes paralelos)

**Modos de uso:**
- `claude` — sessão interativa
- `claude -p "prompt"` — modo headless (não interativo), ideal para automação
- `claude --print -p "prompt"` — headless + imprime resposta no stdout

## Skills (Habilidades Customizadas)

Skills são prompts especializados que o Claude executa quando invocados com `/nome-da-skill`.

**Onde ficam**: `~/.claude/commands/` (globais) ou `.claude/commands/` (por projeto)

**Formato de um arquivo de skill:**

```markdown
# Nome da Skill
Descrição curta do que ela faz.

## Input
$ARGUMENTS

## Comportamento
Instruções detalhadas para o Claude seguir quando esta skill for invocada...
```

**Invocar**: `/pesquisa-tema segurança ofensiva`

**Skills úteis para criar:**
- `/deploy-check` — verifica se o código está pronto para deploy
- `/criar-nota` — cria nota no vault seguindo as convenções
- `/resumir-sessao` — resume e salva o que foi feito

## Hooks — Automação no Ciclo de Vida

Hooks são scripts que rodam automaticamente em eventos do Claude Code.

**Configuração em** `~/.claude/settings.json` ou `.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [{ "hooks": [{ "type": "command", "command": "powershell -File hook.ps1" }] }],
    "Stop": [{ "hooks": [{ "type": "command", "command": "powershell -File deploy.ps1" }] }],
    "PostCompact": [{ "hooks": [{ "type": "command", "command": "powershell -File capture.ps1" }] }],
    "PostToolUse": [{
      "matcher": "Write|Edit",
      "hooks": [{ "type": "command", "command": "prettier --write $FILE" }]
    }]
  }
}
```

**Eventos disponíveis:**

| Evento | Quando Dispara | Uso Principal |
|--------|---------------|---------------|
| `SessionStart` | Início de cada sessão | Injetar contexto, criar nota diária |
| `Stop` | Claude termina resposta | Deploy automático, salvar estado |
| `PostCompact` | Após compactação de contexto | Salvar resumo no vault |
| `PreToolUse` | Antes de executar ferramenta | Validar, bloquear ações perigosas |
| `PostToolUse` | Após ferramenta executar | Formatar código, rodar testes |
| `UserPromptSubmit` | Usuário envia mensagem | Logging, transformar prompt |

**Hook recebe input via stdin (JSON):**
```json
{
  "session_id": "abc123",
  "tool_name": "Write",
  "tool_input": { "file_path": "/caminho/arquivo.js" }
}
```

**Hook pode retornar JSON para controlar o Claude:**
```json
{
  "additionalContext": "Texto injetado no contexto do Claude",
  "continue": false,
  "stopReason": "Motivo para parar"
}
```

## Modo Headless para Automação

Para rodar o Claude sem interação humana (scripts, cron, Task Scheduler):

```powershell
# Executar tarefa e capturar resultado
$resultado = claude --print -p "Crie uma nota resumindo as novidades de hoje" 2>&1

# Com diretório de trabalho específico
Set-Location "C:\MeuVault"
claude --print -p "Leia o CLAUDE.md e crie uma nota em 03 - Pesquisa/" 2>&1
```

**Flags úteis:**
- `--print` ou `-p` — modo headless, saída no stdout
- `--model claude-haiku-4-5-20251001` — escolher modelo (Haiku = mais barato)
- `--no-session-persistence` — não salvar transcript (economia de disco)
- `--output-format json` — saída em JSON estruturado

## Claude Code como Agente Paralelo

O Claude Code pode lançar subagentes paralelos para tarefas independentes:

```javascript
// Dentro de um prompt ao Claude:
// "Pesquise em paralelo: (1) novidades em IA, (2) vulnerabilidades de segurança"
// Claude usa o Agent tool com múltiplas chamadas simultâneas
```

Isso é mais eficiente que fazer sequencialmente — tarefas paralelas terminam no tempo da mais longa, não da soma.

## Memória Persistente

Claude Code tem sistema de memória em `~/.claude/projects/<hash>/memory/`:
- Arquivos `.md` com frontmatter
- `MEMORY.md` como índice
- Persiste entre sessões do mesmo projeto

**Tipos de memória**: `user`, `feedback`, `project`, `reference`

## CLAUDE.md — Instruções do Projeto

Arquivo lido automaticamente no início de cada sessão. Hierarquia:
1. `~/.claude/CLAUDE.md` — global (todas as sessões)
2. `.claude/CLAUDE.md` — raiz do projeto
3. `CLAUDE.md` — no diretório atual

**Dicas para CLAUDE.md eficiente:**
- Seja específico sobre o que o Claude deve e não deve fazer
- Liste as convenções mais importantes
- Não documente o que é óbvio pelo código
- Mantenha curto — cada linha consome tokens

## Projetos no Claude.ai (Cross-Device)

Para ter o segundo cérebro disponível em qualquer dispositivo (web, mobile):

1. Acesse **claude.ai** → clique em **"Projects"** na barra lateral
2. Crie um projeto: "Segundo Cérebro"
3. Em **"Project Knowledge"**, faça upload dos arquivos-chave:
   - `_Claude/_GLOBAL.md`
   - `_Claude/_HOT_CACHE.md`
   - `CLAUDE.md` do vault
   - O arquivo `_EXPORT/brain-completo.md` (gerado automaticamente)
4. Em **"Custom Instructions"** do projeto, cole as instruções de comportamento

O Claude terá acesso a esse conhecimento em todas as conversas do projeto, em qualquer dispositivo.

## Conexões

- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — API para integrações externas
- [[Pesquisa - 2026-05-08 - Economia de Tokens Claude]] — economizar tokens no Claude Code
- [[_Claude/index]] — sistema de memória deste vault

## Fontes

- https://docs.anthropic.com/en/docs/claude-code
- https://docs.anthropic.com/en/docs/claude-code/hooks
- https://docs.anthropic.com/en/docs/claude-code/memory
- https://docs.anthropic.com/en/docs/claude-code/skills
