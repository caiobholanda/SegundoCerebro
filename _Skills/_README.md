---
tipo: meta
criado: 2026-04-29
atualizado: 2026-05-25
---

# `_Skills/` — Skills customizadas do Segundo Cérebro

14 skills organizadas em 3 gerações. Cada uma tem um `SKILL.md` com `name`, `description` e passos.

## Geração 1 — Loop diário original (2026-04-29)
- [[nota-diaria/SKILL|nota-diaria]] → cria nota do dia com pendências e projetos ativos
- [[processar-inbox/SKILL|processar-inbox]] → classifica e move tudo do Inbox para a pasta certa
- [[pesquisa-tema/SKILL|pesquisa-tema]] → busca na web, salva em `03 - Pesquisa/` com links cruzados
- [[esqueleto-roteiro/SKILL|esqueleto-roteiro]] → gera roteiro em `04 - Roteiros/` a partir de pesquisas
- [[manutencao-semanal/SKILL|manutencao-semanal]] → notas órfãs, tags inconsistentes, conexões faltando

## Geração 2 — Zettelkasten + autonomia (upgrade 2026-05-11)
- [[nota-permanente/SKILL|nota-permanente]] → cria zettel atômico com links bidirecionais
- [[conectar-notas/SKILL|conectar-notas]] → detecta órfãos e aplica links em lote
- [[buscar-vault/SKILL|buscar-vault]] → busca semântica em linguagem natural no vault inteiro
- [[sintetizar-moc/SKILL|sintetizar-moc]] → gera ou atualiza Map of Content de um tópico
- [[processar-inbox-pesquisa/SKILL|processar-inbox-pesquisa]] → destila pesquisas brutas em zettels
- [[revisao-mensal/SKILL|revisao-mensal]] → revisão completa no dia 1 de cada mês

## Geração 3 — Gaps do KJ Rainey (upgrade 2026-05-25)
- [[reuniao/SKILL|reuniao]] → prepara briefing de reunião a partir do vault
- [[lacunas/SKILL|lacunas]] → gap analysis: perguntas abertas, notas isoladas, temas sem pesquisa
- [[expandir/SKILL|expandir]] → expande rascunho em nota completa e conectada ao vault

## Sub-agentes autônomos (`.claude/agents/`)
- `curador` → processa Inbox sem intervenção
- `conector` → links bidirecionais em lote
- `historiador` → narrativa semanal/mensal a partir dos diários

## Skills oficiais Kepano (`obsidian-skills/skills/`)
- `obsidian-markdown`, `obsidian-bases`, `json-canvas`, `obsidian-cli`, `defuddle`

## Slash commands disponíveis (`.claude/commands/`)
`/diario` `/inbox` `/pesquisa` `/destilar` `/zettel` `/conectar` `/buscar` `/moc` `/roteiro` `/semana` `/mes` `/reuniao` `/lacunas` `/expandir` `/sessao`

## Como adicionar nova skill
1. Criar `_Skills/<nome>/SKILL.md` com frontmatter `name` e `description`.
2. Criar `.claude/commands/<nome>.md` com o comando slash.
3. Atualizar este README e a seção 7 do `CLAUDE.md`.
