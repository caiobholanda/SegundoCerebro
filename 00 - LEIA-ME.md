---
tipo: meta
criado: 2026-04-29
atualizado: 2026-04-29
tags: [meta, documentacao]
---

# 📖 LEIA-ME — Segundo Cérebro

Vault Obsidian + Claude Code montado em 2026-04-29 com base no vídeo de Matheus Battisti (Hora de Codar). Este documento é o ponto de entrada.

> **Atalho do dia-a-dia**: comece sempre por [[🏠 Home]] ou pela [[06 - Diário/_MOC - Diário|nota diária]].

---

## 1. ✅ Changelog (tudo que foi alterado em 2026-04-29)

### Criado
- **Estrutura de 8 pastas numeradas** (00 a 99) + `_Skills/` + `obsidian-skills/`.
- **`CLAUDE.md`** na raiz — manual do vault para o Claude Code.
- **`🏠 Home.md`** — hub de navegação central.
- **`00 - LEIA-ME.md`** — este arquivo.
- **`_BACKUP_INFO_2026-04-29.md`** — registro do estado original.
- **8 MOCs** (um por pasta), prefixo `_MOC -`.
- **7 templates** em `99 - Templates/` (Diário, Projeto, Pesquisa, Roteiro, Referência, Área, Nota Permanente).
- **5 skills customizadas** em `_Skills/`: `nota-diaria`, `processar-inbox`, `pesquisa-tema`, `esqueleto-roteiro`, `manutencao-semanal`.
- **Notas de exemplo** com wikilinks bidirecionais cruzando as pastas:
  - `Projeto - Setup Segundo Cérebro`
  - `Pesquisa - Obsidian + Claude Code`
  - `Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro`
  - `Referência - Skills do Kepano`
  - `2026-04-29.md` (primeiro diário)

### Modificado (`.obsidian/`)
- `app.json` → `newFileFolderPath: "00 - Inbox"`, anexos em `z - Anexos`, links curtos, spellcheck pt-BR.
- `appearance.json` → `accentColor: #7c3aed`.
- `templates.json` → pasta `99 - Templates`.
- `daily-notes.json` → pasta `06 - Diário`, template `Template - Diário`.
- `bookmarks.json` → atalhos para Home, LEIA-ME, CLAUDE e os 7 MOCs.

### Mantido
- `core-plugins.json` — plugins core já estavam bem configurados (canvas, bases, properties, daily-notes, templates ON).
- `obsidian-skills/` — clone do repo do Kepano, intacto.

### Adicionado (extras além do plano original)
- **`Mapa - Loop Diário.canvas`** — canvas visual do loop diário com nodes coloridos.
- **`01 - Projetos/Projetos Ativos.base`** — view dinâmica filtrando projetos ativos (usa skill `obsidian-bases` do Kepano).
- **`.obsidian/snippets/segundo-cerebro.css`** — snippet de leitura confortável (largura 820px, blockquotes elegantes, wikilinks discretos), já habilitado em `appearance.json`.
- **`graph.json`** com 9 color groups (um por pasta) — Graph View já abre colorido por categoria.

### NÃO criado (escolha consciente)
- Plugins comunitários (zero — segue o vídeo).
- Tema custom (mantido `obsidian` padrão).
- Pasta `.claude/skills/` — bloqueada pelo ambiente do Cowork (proteção de path). Skills moram em `_Skills/`. Para integrar com Claude Code rodando localmente fora do Cowork, ver `_Skills/_README.md` (3 opções de symlink/copy/referência).

---

## 2. 🗂️ Estrutura final do vault

```
SegundoCerebroOficial/
├── 🏠 Home.md                 ← navegação principal
├── 00 - LEIA-ME.md            ← este arquivo
├── CLAUDE.md                  ← regras do vault (lido pelo Claude Code)
├── _BACKUP_INFO_2026-04-29.md ← registro do estado original
│
├── 00 - Inbox/                ← captura bruta
│   └── _MOC - Inbox.md
├── 01 - Projetos/             ← com começo, meio e fim
│   ├── _MOC - Projetos.md
│   └── Projeto - Setup Segundo Cérebro.md
├── 02 - Áreas/                ← responsabilidades contínuas
│   └── _MOC - Áreas.md
├── 03 - Pesquisa/             ← estudos destilados
│   ├── _MOC - Pesquisa.md
│   └── Pesquisa - Obsidian + Claude Code.md
├── 04 - Roteiros/             ← roteiros de conteúdo
│   └── _MOC - Roteiros.md
├── 05 - Referências/          ← material consultivo
│   ├── _MOC - Referências.md
│   ├── Referência - Skills do Kepano.md
│   └── Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro.md
├── 06 - Diário/               ← notas YYYY-MM-DD
│   ├── _MOC - Diário.md
│   └── 2026-04-29.md
├── 07 - Arquivo/              ← inativo (nunca deletar)
│   └── _MOC - Arquivo.md
├── 99 - Templates/            ← modelos
│   ├── _MOC - Templates.md
│   ├── Template - Diário.md
│   ├── Template - Projeto.md
│   ├── Template - Pesquisa.md
│   ├── Template - Roteiro.md
│   ├── Template - Referência.md
│   ├── Template - Área.md
│   └── Template - Nota Permanente.md
│
├── _Skills/                   ← skills customizadas (Claude Code)
│   ├── _README.md
│   ├── nota-diaria/SKILL.md
│   ├── processar-inbox/SKILL.md
│   ├── pesquisa-tema/SKILL.md
│   ├── esqueleto-roteiro/SKILL.md
│   └── manutencao-semanal/SKILL.md
│
├── obsidian-skills/           ← skills oficiais Kepano (intactas)
│   └── skills/{obsidian-markdown, obsidian-bases, json-canvas, obsidian-cli, defuddle}
│
└── .obsidian/                 ← configs ajustadas
```

---

## 3. 🔌 Plugins instalados (todos core do Obsidian)

| Plugin | Habilitado | Para quê |
|---|:---:|---|
| File Explorer | ✅ | Navegação por pastas |
| Global Search | ✅ | Busca textual |
| Quick Switcher | ✅ | Abrir nota com `Ctrl+O` |
| Graph View | ✅ | Visualizar conexões do vault |
| Backlinks | ✅ | Mostrar quem linka pra cá |
| Outgoing Links | ✅ | Mostrar pra quem essa nota linka |
| Tag Pane | ✅ | Lista de tags |
| Properties | ✅ | UI para frontmatter |
| Page Preview | ✅ | Hover preview de wikilinks |
| Daily Notes | ✅ | `Ctrl+P` → "Open today's daily note" |
| Templates | ✅ | Inserir template em qualquer nota |
| Note Composer | ✅ | Extrair/dividir notas |
| Command Palette | ✅ | `Ctrl+P` |
| Outline | ✅ | TOC lateral |
| Word Count | ✅ | Contagem de palavras |
| Bookmarks | ✅ | Atalhos pré-configurados |
| Canvas | ✅ | Mapas visuais (`.canvas`) |
| Bases | ✅ | Bases (`.base`) — uso futuro |
| File Recovery | ✅ | Histórico local automático |
| Sync | ✅ | (só se você assinar Obsidian Sync) |

**Comunitários: zero.** Se sentir falta de algo, registre em [[00 - Inbox/_MOC - Inbox|Inbox]] antes de instalar.

---

## 4. 📝 Guia rápido de uso

### 4.1. Como capturar uma nota nova
1. `Ctrl+N` cria a nota direto em `00 - Inbox/` (já configurado).
2. Escreva sem se preocupar com formato.
3. Adicione no mínimo `tipo: inbox` no frontmatter (Properties → `tipo` → `inbox`).
4. Não tente classificar agora — deixa pra depois.

### 4.2. Como processar a inbox
1. No prompt do Claude Code: **"use a skill `processar-inbox`"**.
2. O agente lê cada nota, sugere destino, renomeia, move e atualiza MOCs.
3. Você confirma os destinos duvidosos.
4. Faz isso 1x por semana (ou sempre que a inbox passar de 10 itens).

### 4.3. Como criar um projeto novo
1. `Ctrl+P` → `Templates: Insert template` → `Template - Projeto`.
2. Renomeie para `Projeto - <Título>.md` e mova para `01 - Projetos/`.
3. Preencha `objetivo`, `prazo`.
4. Atualize `_MOC - Projetos.md` adicionando o wikilink.
5. Linke pesquisas e referências relacionadas conforme aparecerem.

### 4.4. Como fazer revisão semanal
1. **Sexta** ou começo do domingo.
2. No prompt: **"use a skill `manutencao-semanal`"**.
3. Avalie o relatório: notas órfãs, tags inconsistentes, projetos parados, MOCs desatualizados.
4. Decida o que arquivar / conectar / ajustar.
5. O relatório fica em `06 - Diário/Manutenção - YYYY-Www.md`.

### 4.5. Como começar o dia
1. No prompt: **"use a skill `nota-diaria`"** (ou `Ctrl+P` → "Open today's daily note").
2. Skill puxa pendências de ontem + projetos ativos.
3. Defina **1 foco** + máx 3 tarefas.
4. Trabalhe. No fim do dia, encerre com a seção de Reflexão.

---

## 5. 💡 5 sugestões concretas de uso no dia-a-dia

1. **Captura por voz**: dite no celular pelo Obsidian Mobile direto em `00 - Inbox/`. Processe na sexta.
2. **Reading queue**: salve URLs como `Referência - Artigo - Título.md` e marque com `tags: [#fila-leitura]`. Filtre pela tag pra abrir uma a cada manhã.
3. **Decisões importantes**: na nota do projeto, mantenha um log na seção "📝 Decisões" (data + contexto + escolha). Em 6 meses, vale ouro.
4. **Daily review de 2 min**: ao fim do dia, abra a nota diária e marque `[ ]` → `[x]` o que terminou, mova o resto pro próximo dia. A skill `nota-diaria` faz isso automaticamente amanhã.
5. **Canvas mensal**: dia 1 de cada mês, peça ao Claude **"crie um JSON Canvas dos meus projetos ativos com cards coloridos por status"**. Cole na raiz como `Mapa - YYYY-MM.md.canvas`. Visão estratégica imediata.

---

## 6. 🧠 Otimizações aplicadas (vs vídeo do Battisti)

| Antes (vídeo) | Depois (este vault) | Justificativa |
|---|---|---|
| Pastas com nome solto | Pastas numeradas `00 - 99` | Ordenação natural no sidebar |
| Sem categoria "Áreas" | `02 - Áreas/` adicionada | Captura responsabilidades contínuas (PARA) |
| Sem categoria "Arquivo" explícita | `07 - Arquivo/` | Nada é deletado, só movido |
| Pesquisa e Referências misturadas | Separadas (03 e 05) | Pesquisa = destilação; Referência = fonte |
| Skills em `.claude/skills/` | Skills em `_Skills/` (mais 3 opções de integração documentadas) | Bloqueio do ambiente — zero perda funcional |
| Convenção implícita | Convenção explícita no `CLAUDE.md` (nomes, frontmatter, tags) | Reduz decisão diária |
| Sem hub central | `🏠 Home.md` + Bookmarks pré-configurados | 1-click pra qualquer área |
| 4 skills de Kepano | 5 skills (incluiu `obsidian-cli`) | Já estavam no clone, custo zero |

---

## 7. 🚀 Próximos passos opcionais

1. **Bases (`.base`)**: criar uma view dinâmica em `01 - Projetos/Projetos Ativos.base` filtrando por `status: ativo`. (skill `obsidian-bases` do Kepano cobre).
2. **Canvas mestre**: `Mapa - Vault Inteiro.canvas` linkando todos os MOCs visualmente.
3. **Sincronizar entre devices**: Obsidian Sync (pago) ou git/iCloud/OneDrive (grátis, com cuidado).
4. **Mobile capture**: Obsidian Mobile + atalho do iOS/Android pra criar nota direto em `00 - Inbox/`.
5. **Snippet CSS**: tema escuro com largura confortável (`.markdown-source-view { max-width: 800px; }`) — só se incomodar.
6. **Skill nova: `revisar-projeto`**: roda check específico de um projeto (próximos passos vagos? prazo passou? sem pesquisa linkada?).
7. **Linkar com calendário**: skill que lê eventos do dia e injeta na nota diária.
8. **Limpar `obsidian-skills/`**: se quiser que o Obsidian não indexe os SKILL.md do Kepano, mover a pasta para fora do vault e linkar via symlink só pro Claude Code.

---

## 8. 🆘 Troubleshooting

| Problema | Solução |
|---|---|
| Templates não aparecem no menu | Verificar `.obsidian/templates.json` aponta para `99 - Templates`. |
| Daily Note salva no lugar errado | Verificar `.obsidian/daily-notes.json` (`folder: 06 - Diário`). |
| Claude não acha as skills custom | Ler `_Skills/_README.md` — escolher symlink, copy ou referência via prompt. |
| Vault parece "sujo" com `obsidian-skills/` aparecendo | Settings → Files & Links → Excluded Files → adicionar `obsidian-skills/`. |
| Wikilinks quebrados após renomear | Settings → Files & Links → "Automatically update internal links" deve estar ON. |

---

## 9. ✅ Verificação rápida (faça uma vez ao abrir o Obsidian)

1. Abrir vault em **`C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\`**.
2. Settings → Files & Links → confirmar:
   - "Default location for new notes": `In the folder specified below` → `00 - Inbox`
   - "Automatically update internal links": ON
3. Settings → Daily notes → confirmar: pasta `06 - Diário`, template `99 - Templates/Template - Diário`.
4. Settings → Templates → confirmar: pasta `99 - Templates`.
5. Settings → Appearance → CSS snippets → ativar **segundo-cerebro** (já vem habilitado).
6. `Ctrl+P` → "Open today's daily note" → deve criar `06 - Diário/2026-04-29.md` (ou de hoje) com o template.
7. Abrir [[Mapa - Loop Diário.canvas]] — deve renderizar com 6 nodes conectados.
8. Abrir [[01 - Projetos/Projetos Ativos.base]] — deve listar `Projeto - Setup Segundo Cérebro` (status `concluido` filtrado out — ajuste filtro se quiser ver concluídos).
9. Graph View — deve mostrar nodes coloridos por pasta.

---

**Vault pronto.** Próximo passo: rodar a primeira [[06 - Diário/2026-04-29|nota diária]] amanhã invocando a skill `nota-diaria`.
