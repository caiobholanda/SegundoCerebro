---
tipo: meta
criado: 2026-05-11
atualizado: 2026-05-11
tags: [meta, upgrade, autonomia]
---

# Upgrade de Autonomia — Segundo Cérebro

> Documento para colar no Claude Code dentro de `SegundoCerebroOficial/`.
> Mandar: **"Leia `_Claude/PROXIMO_UPGRADE_AUTONOMIA.md` e execute o checklist da seção 11 do início ao fim."**

Este upgrade **não refaz** o que já está no vault. Adiciona apenas o que falta para fechar o loop autônomo total.

---

## 0. Diagnóstico — o que já existe

✅ Estrutura PARA (`00 - Inbox` → `07 - Arquivo`) + Templates + MOCs por pasta
✅ `CLAUDE.md` raiz com regras
✅ `_Claude/` com `_HOT_CACHE.md`, `_GLOBAL.md`, `projetos/sistema-chamados/`
✅ 5 skills custom em `_Skills/`: `nota-diaria`, `processar-inbox`, `pesquisa-tema`, `esqueleto-roteiro`, `manutencao-semanal`
✅ Hooks: SessionStart, PostCompact, Stop
✅ Automação `pesquisa-diaria.ps1` + Task Scheduler 10h
✅ Export para claude.ai Projects via `gerar-export.ps1`
✅ Skills do Kepano em `obsidian-skills/`

## 0.1. Gaps detectados (o upgrade resolve)

1. Não há **Zettel atômico funcionando como skill** — tem template `Template - Nota Permanente.md` mas sem skill para criá-lo automaticamente com links bidirecionais.
2. Não há **slash commands** — todas as skills dependem de o usuário lembrar de invocar por nome.
3. Não há **skill de conectar** — zettels órfãos não são detectados em tempo real.
4. Não há **skill de busca semântica** sobre a vault inteira.
5. Não há **revisão mensal** (só semanal).
6. Hook **PostToolUse** não atualiza o campo `atualizado:` no frontmatter automaticamente.
7. Não há **sub-agentes** — o curador, conector e historiador rodam todos sob o mesmo contexto da sessão principal (gasto de token alto).
8. **Inbox da pesquisa-diária acumula** sem rotina de processamento automática.

---

## 1. Skill nova — `_Skills/nota-permanente/SKILL.md`

Criar pasta + arquivo:

```markdown
---
name: nota-permanente
description: Cria zettel atômico em "05 - Referências/" (ou nova pasta "08 - Permanentes/" se preferir Zettelkasten estrito) a partir de um trecho/ideia. Use quando o usuário disser "criar zettel", "nota permanente", "transformar em atômica".
---

# Skill — Nota Permanente (Zettel Atômico)

## Quando disparar
- "criar zettel"
- "nota permanente"
- "atomizar essa ideia"
- "salvar como permanente"

## Passos
1. Receber trecho/ideia do usuário.
2. Resumir em UMA frase declarativa (ideia central).
3. Gerar título curto e descritivo (max 80 chars).
4. Gerar ID `YYYYMMDDHHmm` da hora atual.
5. Criar arquivo `05 - Referências/{ID} - {Título}.md` usando `99 - Templates/Template - Nota Permanente.md`.
6. **Buscar conexões**:
   - Grep palavras-chave da ideia em toda a vault.
   - Ler top 5 notas mais relevantes.
   - Escolher 2-5 que realmente se conectam (não apenas mencionam termos).
7. **Aplicar links bidirecionais**:
   - Adicionar `[[link]]` na seção "## Conexões" da nota nova.
   - Editar cada nota relacionada adicionando link de volta numa seção "## Notas relacionadas".
8. Sugerir 1-2 perguntas em aberto na seção "## Perguntas".
9. Atualizar `_MOC - Referências` adicionando wikilink.
10. Logar em `_Claude/_HOT_CACHE.md` na seção "Última Sessão".

## Regras
- Frontmatter: `tipo: permanente`, `tags: [permanente]` + tags temáticas.
- Uma ideia por nota — se vier mais de uma, dividir em N zettels.
- Mínimo 2 links bidirecionais — se não houver, criar stub de MOC primeiro.

## O que NÃO fazer
- Não criar zettel duplicado (checar similaridade ≥ 70% antes).
- Não linkar para si mesma.
- Não esquecer o link de volta nas notas relacionadas.
```

---

## 2. Skill nova — `_Skills/conectar-notas/SKILL.md`

```markdown
---
name: conectar-notas
description: Encontra conexões para uma nota específica ou processa todas as notas órfãs (sem links). Use quando o usuário disser "conectar notas", "achar links", "zettels órfãos".
---

# Skill — Conectar Notas

## Modos

### Modo 1 — Conectar nota específica
Input: caminho da nota.
1. Ler conteúdo.
2. Extrair palavras-chave e conceitos.
3. Grep + leitura na vault inteira.
4. Propor 3-10 conexões com justificativa em 1 linha.
5. Pedir confirmação do usuário.
6. Aplicar bidirecional nas confirmadas.

### Modo 2 — Vassoura de órfãos
Input: nenhum.
1. Listar todas as notas em `05 - Referências/` e `03 - Pesquisa/` com 0 backlinks E 0 outlinks (excetuando MOCs).
2. Para cada uma, rodar Modo 1.
3. Reportar quantas foram conectadas.

## Atalho
Usuário diz "conectar tudo" → Modo 2.
Usuário diz "conectar [[NotaX]]" → Modo 1 com NotaX.
```

---

## 3. Skill nova — `_Skills/buscar-vault/SKILL.md`

```markdown
---
name: buscar-vault
description: Busca semântica em linguagem natural na vault inteira. Use quando o usuário fizer perguntas tipo "o que eu já escrevi sobre X", "achar nota sobre Y", "tenho algo sobre Z".
---

# Skill — Buscar Vault

## Passos
1. Receber pergunta em linguagem natural.
2. Decompor em 3-5 palavras-chave + sinônimos (em pt-BR).
3. Grep em toda a vault, ignorando `.obsidian/`, `obsidian-skills/`, `_Claude/_EXPORT/`.
4. Ler top 10 arquivos mais relevantes.
5. Sintetizar resposta em 3-7 frases citando `[[notas]]` de origem.
6. Se nenhuma nota responde — sugerir criar zettel novo via `nota-permanente`.
7. Se a busca pede algo do dia → consultar também último diário em `06 - Diário/`.

## Saída padrão
```
**Resposta**: ...

**Notas consultadas**:
- [[Nota A]] — relevância
- [[Nota B]] — relevância

**Lacuna detectada**: [se houver — sugerir próxima ação]
```
```

---

## 4. Skill nova — `_Skills/sintetizar-moc/SKILL.md`

```markdown
---
name: sintetizar-moc
description: Gera ou atualiza um Map of Content (MOC) sobre um tópico. Use quando o usuário disser "criar MOC de X", "atualizar mapa de Y", "consolidar tópico Z".
---

# Skill — Sintetizar MOC

## Passos
1. Receber tópico.
2. Buscar notas relacionadas em toda a vault (grep + ranking).
3. Agrupar por subtema.
4. Gerar/atualizar arquivo na pasta apropriada com nome `_MOC - {Tópico}.md` (ou subpasta `07 - Maps/` se preferir).
5. Estrutura:

\`\`\`markdown
---
tipo: moc
criado: YYYY-MM-DD
atualizado: YYYY-MM-DD
tags: [moc]
---

# {Tópico}

## Definição

## Subtemas
### Subtema 1
- [[Nota A]]
- [[Nota B]]
### Subtema 2
- [[Nota C]]

## Perguntas em aberto
-

## Próximos zettels sugeridos
-
\`\`\`

6. Atualizar `🏠 Home.md` se o MOC for de alto nível.
```

---

## 5. Skill nova — `_Skills/processar-inbox-pesquisa/SKILL.md`

A pesquisa diária deixa notas em `03 - Pesquisa/` sem destilação. Esta skill processa.

```markdown
---
name: processar-inbox-pesquisa
description: Processa as notas geradas pela pesquisa-diaria.ps1, extrai insights atômicos, cria zettels e arquiva o material bruto. Use após cada execução da pesquisa diária ou quando o usuário disser "destilar pesquisa de hoje".
---

# Skill — Processar Inbox de Pesquisa

## Passos
1. Listar arquivos em `03 - Pesquisa/Pesquisa - YYYY-MM-DD - *.md` da data alvo (padrão: hoje).
2. Para cada arquivo:
   - Ler conteúdo.
   - Identificar 1-3 insights atômicos (não summary do texto inteiro — apenas o que **muda** alguma decisão ou abre pergunta nova).
   - Para cada insight: rodar fluxo da skill `nota-permanente`.
3. Após destilação, mover o arquivo bruto de `03 - Pesquisa/` para `07 - Arquivo/Pesquisas/YYYY-MM/`.
4. Atualizar `_MOC - Pesquisa` removendo links movidos.
5. Atualizar `_MOC - Arquivo` adicionando.
6. Log em `_Claude/_HOT_CACHE.md`.

## Regras
- Se nenhum insight atômico for extraível, marcar arquivo com frontmatter `status: descartado` e mover pro arquivo mesmo assim.
- Nunca destilar 2x o mesmo arquivo (checar `status: destilado` no frontmatter).
```

---

## 6. Skill nova — `_Skills/revisao-mensal/SKILL.md`

```markdown
---
name: revisao-mensal
description: Roda no dia 1 de cada mês. Consolida MOCs, detecta zettels órfãos, arquiva projetos concluídos, gera narrativa do mês.
---

# Skill — Revisão Mensal

## Passos
1. **Projetos**: listar todos em `01 - Projetos/`. Para cada `status: concluido`, mover para `07 - Arquivo/Projetos/YYYY-MM/`.
2. **Áreas**: listar `02 - Áreas/`. Para cada uma sem nota nova no último mês, sinalizar como "negligenciada".
3. **Zettels órfãos**: rodar `conectar-notas` Modo 2.
4. **MOCs**: para cada MOC, recontar links — se algum ficou abaixo de 3, sugerir merge/arquivamento.
5. **Pesquisas**: arquivar tudo que estiver com `status: destilado` há mais de 30 dias.
6. **Narrativa**: gerar arquivo `06 - Diário/Revisao - YYYY-MM.md` com:
   - Top 5 zettels mais linkados criados no mês
   - Projetos concluídos
   - Padrões aprendidos (puxar de `_Claude/_GLOBAL.md` adicionados no mês)
   - Lacunas: temas com poucos zettels, perguntas sem resposta acumuladas
7. Atualizar `_MOC - Diário` e `_Claude/_HOT_CACHE.md`.
```

---

## 7. Sub-agentes — criar `.claude/agents/`

Mesmo que `.claude/skills/` esteja bloqueado, `.claude/agents/` costuma funcionar. Tentar criar; se bloqueado, mover para `_Skills/_agents/`.

### `.claude/agents/curador.md`
```markdown
---
name: curador
description: Processa Inbox autonomamente. Invocado pelo PostCompact ou agendamento. Sub-agente — não pergunta, decide.
tools: Read, Write, Edit, Glob, Grep, Bash
---

Você é o curador autônomo da vault. Quando invocado:
1. Ler `00 - Inbox/` inteira.
2. Para cada nota: detectar duplicata (similaridade título + conteúdo ≥ 70%).
3. Classificar: projeto, área, pesquisa, referência, permanente, lixo.
4. Mover para pasta correta com nome adequado às convenções de `CLAUDE.md`.
5. Atualizar MOCs.
6. Logar em `99 - Templates/Log-curador-YYYY-MM-DD.md` (não — corrigir: log em `_Claude/curador-log.md`).
Sem perguntar. Reporta resumo no final.
```

### `.claude/agents/conector.md`
```markdown
---
name: conector
description: Encontra e aplica links bidirecionais. Chamado sob demanda.
tools: Read, Write, Edit, Glob, Grep
---

Recebe nota ou conjunto. Procura conexões. Aplica `[[link]]` nos dois lados. Atualiza seção `## Notas relacionadas`. Reporta diff.
```

### `.claude/agents/historiador.md`
```markdown
---
name: historiador
description: Gera narrativa semanal e mensal a partir de dailies + logs.
tools: Read, Write, Glob, Bash
---

Lê dailies + logs do período. Produz síntese narrativa (não lista). Salva em `06 - Diário/Resumo-{periodo}.md`. Linka MOCs relevantes.
```

---

## 8. Hook novo — `.claude/hooks/PostToolUse.ps1`

Atualiza automaticamente o campo `atualizado:` em qualquer `.md` editado.

```powershell
# .claude/hooks/PostToolUse.ps1
param([string]$FilePath)

if (-not $FilePath -or -not $FilePath.EndsWith('.md')) { return }

$today = Get-Date -Format 'yyyy-MM-dd'
$content = Get-Content $FilePath -Raw -Encoding UTF8

if ($content -match '(?ms)^---\s*\r?\n(.*?)\r?\n---') {
    $fm = $Matches[1]
    if ($fm -match 'atualizado:') {
        $newFm = $fm -replace 'atualizado:.*', "atualizado: $today"
    } else {
        $newFm = $fm + "`natualizado: $today"
    }
    $content = $content -replace '(?ms)^---\s*\r?\n.*?\r?\n---', "---`n$newFm`n---"
    Set-Content $FilePath -Value $content -Encoding UTF8 -NoNewline
}
```

Registrar no settings do Claude Code (`.claude/settings.json` se permitir):
```json
{
  "hooks": {
    "PostToolUse": [
      { "matcher": "Edit|Write", "command": "pwsh -File .claude/hooks/PostToolUse.ps1 -FilePath \"$CLAUDE_TOOL_FILE_PATH\"" }
    ]
  }
}
```

---

## 9. Slash commands (se o ambiente permitir `.claude/commands/`)

Tentar criar. Se bloqueado, fica como atalho mental — invocar a skill correspondente.

| Slash | Mapeia para skill |
|---|---|
| `/diario` | `nota-diaria` |
| `/inbox` | `processar-inbox` |
| `/pesquisa` | `pesquisa-tema` |
| `/destilar` | `processar-inbox-pesquisa` |
| `/zettel` | `nota-permanente` |
| `/conectar` | `conectar-notas` |
| `/buscar` | `buscar-vault` |
| `/moc` | `sintetizar-moc` |
| `/roteiro` | `esqueleto-roteiro` |
| `/semana` | `manutencao-semanal` |
| `/mes` | `revisao-mensal` |

Modelo `.claude/commands/zettel.md`:
```markdown
---
description: Cria zettel atômico
---
Use a skill `nota-permanente` com o argumento: $ARGUMENTS
```

Replicar para cada um.

---

## 10. Automação Windows (Task Scheduler)

Estender o que já existe (`pesquisa-diaria.ps1`). Criar `automacao-cerebro.ps1` na raiz:

```powershell
# automacao-cerebro.ps1
param([Parameter(Mandatory)] [ValidateSet('manha','noite','semana','mes')] [string]$Rotina)

$vault = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
Set-Location $vault

$prompts = @{
    'manha' = "Use a skill nota-diaria. Depois liste os 3 projetos com tarefas mais urgentes."
    'noite' = "Use a skill processar-inbox. Em seguida use a skill processar-inbox-pesquisa para o dia de hoje. Por último use a skill conectar-notas modo 'vassoura' nas notas criadas hoje."
    'semana' = "Use a skill manutencao-semanal."
    'mes' = "Use a skill revisao-mensal."
}

claude -p $prompts[$Rotina] --dangerously-skip-permissions
```

Tarefas no Task Scheduler:

| Tarefa | Trigger | Comando |
|---|---|---|
| cerebro-manha | Diário 07:00 | `pwsh -File automacao-cerebro.ps1 -Rotina manha` |
| cerebro-noite | Diário 22:00 | `pwsh -File automacao-cerebro.ps1 -Rotina noite` |
| cerebro-semana | Sexta 18:00 | `pwsh -File automacao-cerebro.ps1 -Rotina semana` |
| cerebro-mes | Dia 1 09:00 | `pwsh -File automacao-cerebro.ps1 -Rotina mes` |

PowerShell para criar tudo de uma vez:

```powershell
$script = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\automacao-cerebro.ps1"

$tasks = @(
    @{ Name='cerebro-manha'; Time='07:00'; Days='Daily'; Arg='-Rotina manha' }
    @{ Name='cerebro-noite'; Time='22:00'; Days='Daily'; Arg='-Rotina noite' }
    @{ Name='cerebro-semana'; Time='18:00'; Days='Friday'; Arg='-Rotina semana' }
    @{ Name='cerebro-mes'; Time='09:00'; Days='Monthly'; Arg='-Rotina mes' }
)

foreach ($t in $tasks) {
    $action = New-ScheduledTaskAction -Execute 'pwsh.exe' -Argument "-File `"$script`" $($t.Arg)"
    $trigger = if ($t.Days -eq 'Daily') {
        New-ScheduledTaskTrigger -Daily -At $t.Time
    } elseif ($t.Days -eq 'Friday') {
        New-ScheduledTaskTrigger -Weekly -DaysOfWeek Friday -At $t.Time
    } else {
        New-ScheduledTaskTrigger -Once -At $t.Time -RepetitionInterval (New-TimeSpan -Days 30)
    }
    Register-ScheduledTask -TaskName $t.Name -Action $action -Trigger $trigger -Force
}
```

---

## 11. Checklist final — execute na ordem

Claude Code: marque `[x]` cada item conforme conclui.

- [ ] Criar `_Skills/nota-permanente/SKILL.md` (seção 1)
- [ ] Criar `_Skills/conectar-notas/SKILL.md` (seção 2)
- [ ] Criar `_Skills/buscar-vault/SKILL.md` (seção 3)
- [ ] Criar `_Skills/sintetizar-moc/SKILL.md` (seção 4)
- [ ] Criar `_Skills/processar-inbox-pesquisa/SKILL.md` (seção 5)
- [ ] Criar `_Skills/revisao-mensal/SKILL.md` (seção 6)
- [ ] Tentar criar `.claude/agents/*.md` — se bloqueado, criar em `_Skills/_agents/` (seção 7)
- [ ] Criar `.claude/hooks/PostToolUse.ps1` + registrar em settings (seção 8)
- [ ] Tentar criar `.claude/commands/*.md` — se bloqueado, documentar atalhos no `CLAUDE.md` (seção 9)
- [ ] Criar `automacao-cerebro.ps1` na raiz da vault (seção 10)
- [ ] Rodar script PowerShell que cria as 4 tarefas no Task Scheduler (seção 10)
- [ ] Atualizar `CLAUDE.md` raiz mencionando: as 6 skills novas (seção 7 do CLAUDE atual), os 3 sub-agentes, os 4 horários da automação
- [ ] Atualizar `_Claude/_HOT_CACHE.md` com resumo do upgrade
- [ ] Atualizar `_Claude/_GLOBAL.md` adicionando: "Loop autônomo completo a partir de 2026-05-11"
- [ ] Atualizar `🏠 Home.md` adicionando link para o novo `_MOC - Permanentes` (se criou pasta dedicada)
- [ ] Rodar `pwsh _Claude\gerar-export.ps1` para refrescar export do claude.ai Projects
- [ ] Commit git: `git add . && git commit -m "[brain] upgrade autonomia: 6 skills + 3 agentes + 4 cron"`
- [ ] Gerar relatório em `_Claude/upgrade-report-2026-05-11.md` listando o que foi criado e o que ficou pendente

---

## 12. Como testar (5 min)

```powershell
cd C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial
claude
```

Dentro do Claude Code:

```
Use a skill nota-permanente com esta ideia: "Token caching no Claude reduz custo de prompts repetidos em até 90% quando o prefixo passa de 1024 tokens."
```

Esperado: zettel criado em `05 - Referências/`, 2-3 links bidirecionais aplicados, MOC atualizado, hook PostToolUse atualizou `atualizado:`, log no `_HOT_CACHE`.

Depois:

```
Use a skill buscar-vault: o que eu já tenho sobre prompt caching?
```

Esperado: cita a nota recém-criada + outras pesquisas existentes.

---

## 13. Limites a respeitar

- Manter `_Claude/_HOT_CACHE.md` < 500 linhas (PostCompact rotaciona).
- Não criar zettel se já existe similar.
- Nunca apagar — só mover pra `07 - Arquivo/`.
- Toda ação que mova arquivo gera log em `_Claude/curador-log.md`.
- Stop hook do `sistema-chamados` continua intocado.

---

Fim. Após executar checklist da seção 11, o segundo cérebro roda 4 ciclos por dia sem intervenção manual.
