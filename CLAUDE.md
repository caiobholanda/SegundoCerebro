# CLAUDE.md — Regras do Vault Segundo Cérebro

Este arquivo orienta o Claude Code (e qualquer agente) ao operar este vault. Leia antes de criar, editar ou organizar notas.

---

## 1. Estrutura de pastas

```
SegundoCerebroOficial/
├── 00 - Inbox/          # captura bruta, ainda não processada
├── 01 - Projetos/       # esforços com começo, meio e fim
├── 02 - Áreas/           # responsabilidades contínuas
├── 03 - Pesquisa/        # estudos sobre temas e ferramentas
├── 04 - Roteiros/        # roteiros de conteúdo (vídeo, post, etc)
├── 05 - Referências/     # material consultivo (livros, artigos, docs)
├── 06 - Diário/          # notas diárias YYYY-MM-DD.md
├── 07 - Arquivo/         # projetos concluídos / notas inativas
├── 99 - Templates/       # templates reutilizáveis
├── _Skills/              # skills customizadas (nota diária, inbox, etc)
└── obsidian-skills/      # skills oficiais do Kepano (markdown, bases, canvas, cli, defuddle)
```

## 2. Convenções de nomenclatura

- **Arquivos**: `Tipo - Título descritivo.md` (ex.: `Projeto - Lançar curso.md`).
- **Diário**: `YYYY-MM-DD.md` (ex.: `2026-04-29.md`).
- **MOCs (Mapas de Conteúdo)**: prefixo `_MOC - Nome.md`. Sempre na pasta a que se referem.
- Sem espaços iniciais. Sem caracteres especiais além de hífen, parênteses e acentos.

## 3. Frontmatter padrão

Toda nota nasce com properties (frontmatter YAML):

```yaml
---
tipo: projeto | pesquisa | roteiro | referencia | area | diario | inbox | permanente
status: ativo | em-andamento | concluido | arquivado
criado: YYYY-MM-DD
atualizado: YYYY-MM-DD
tags: [tag1, tag2]
---
```

Campos extras por tipo:
- **projeto**: `prazo`, `objetivo`
- **roteiro**: `canal`, `formato`, `data-publicacao`
- **referencia**: `fonte`, `autor`, `url`
- **pesquisa**: `pergunta-central`, `relacionado-a`

## 4. Tags (kebab-case, em português)

Use poucas e consistentes. Convenção:
- Por domínio: `#dev`, `#ia`, `#produtividade`, `#financas`, `#saude`
- Por estado de processamento: `#processar`, `#fleeting`, `#permanente`
- Por origem: `#video`, `#artigo`, `#podcast`, `#livro`

Evite tags hierárquicas profundas (`#dev/python/django`) — prefira links.

## 5. Wikilinks > tags > URLs

Sempre que mencionar outra nota existente, usar `[[Wikilink]]`. Para textos âncora: `[[Nota|texto exibido]]`. Tags só pra metadados de filtro. URLs externas viram referências em `05 - Referências/`.

## 6. Skills oficiais (Kepano) — pré-requisito

Antes de criar/editar `.md`, `.base` ou `.canvas`, o Claude Code DEVE consultar a skill correspondente em `obsidian-skills/skills/`:
- `obsidian-markdown` → wikilinks, embeds, callouts, properties.
- `obsidian-bases` → views, filtros, fórmulas em `.base`.
- `json-canvas` → nodes, edges, groups em `.canvas`.
- `obsidian-cli` → operações via CLI.
- `defuddle` → extração limpa de páginas web.

## 7. Skills customizadas (em `_Skills/`)

**Skills originais:**
- `nota-diaria` → cria a nota do dia em `06 - Diário/` puxando pendências de ontem e projetos ativos.
- `processar-inbox` → consome `00 - Inbox/`, classifica, move para a pasta certa.
- `pesquisa-tema` → busca na web, salva em `03 - Pesquisa/` com links cruzados.
- `esqueleto-roteiro` → gera roteiro em `04 - Roteiros/` a partir de pesquisas linkadas.
- `manutencao-semanal` → encontra notas órfãs, tags inconsistentes, conexões faltando.

**Skills novas (upgrade 2026-05-11):**
- `nota-permanente` → cria zettel atômico em `05 - Referências/` com links bidirecionais.
- `conectar-notas` → detecta órfãos e aplica links bidirecionais em modo pontual ou vassoura.
- `buscar-vault` → busca semântica em linguagem natural em toda a vault.
- `sintetizar-moc` → gera ou atualiza Map of Content de um tópico.
- `processar-inbox-pesquisa` → destila pesquisas brutas em zettels e arquiva material.
- `revisao-mensal` → revisão completa no dia 1 de cada mês.

**Slash commands** (via `.claude/commands/`):
`/diario` `/inbox` `/pesquisa` `/destilar` `/zettel` `/conectar` `/buscar` `/moc` `/roteiro` `/semana` `/mes`

**Sub-agentes** (via `.claude/agents/`):
- `curador` → processa Inbox autonomamente sem perguntar.
- `conector` → aplica links bidirecionais em lote.
- `historiador` → gera narrativa semanal/mensal a partir de dailies.

**Automação autônoma** (`automacao-cerebro.ps1` + Task Scheduler):
| Tarefa | Horário | Rotina |
|--------|---------|--------|
| cerebro-manha | Diário 07:00 | nota-diaria + projetos urgentes |
| cerebro-noite | Diário 22:00 | processar-inbox + destilar + conectar |
| cerebro-semana | Sexta 18:00 | manutencao-semanal |
| cerebro-mes | Dia 1 09:00 | revisao-mensal |

## 8. Regras imutáveis

1. **Nunca** apagar notas — mover para `07 - Arquivo/`.
2. **Sempre** atualizar `atualizado:` ao editar.
3. **Sempre** preservar wikilinks ao renomear (Obsidian faz isso, mas confirme).
4. **Templates** sempre lidos de `99 - Templates/`. Não inventar formato.
5. **Sem plugins comunitários** — tudo nativo + skills.

## 9. Loop diário esperado

Manhã → `nota-diaria` → escrever → `pesquisa-tema` quando aparece tema novo → `processar-inbox` quando acumula → `esqueleto-roteiro` quando vai produzir → semanal: `manutencao-semanal`.

## 10. Quando em dúvida

Pergunte. Não invente estrutura. Não crie plugin novo. Não modifique `.obsidian/` sem aviso.

## 11. Sistema de captura autônoma (`_Claude/`)

A pasta `_Claude/` é a memória viva do sistema. Claude DEVE atualizá-la sempre que aprender algo relevante — sem precisar ser pedido.

### Regras de captura obrigatórias

| Situação | O que fazer |
|----------|------------|
| Aprende preferência do usuário | Append em `_Claude/_GLOBAL.md` |
| Toma decisão técnica importante | Append em `_Claude/projetos/{nome}/_DECISOES.md` |
| Contexto de projeto muda | Atualizar `_Claude/projetos/{nome}/_CONTEXTO.md` |
| Final de sessão longa | Resumir em `_Claude/_HOT_CACHE.md` (seção "Ultima Sessao") |

### Hot Cache

- `_Claude/_HOT_CACHE.md` é lido automaticamente no **início de cada sessão** via hook
- Fornece contexto instantâneo sem gastar tokens com re-explicações
- Atualizado pelo PostCompact hook — mas Claude pode e deve enriquecê-lo manualmente quando perceber algo importante

### Capturar para o Inbox

Ao pesquisar um tema novo ou aprender algo externo ao projeto atual, criar nota em `00 - Inbox/` com frontmatter `tags: [processar]` para processamento posterior.

### Formato de append em `_DECISOES.md`

```markdown
## YYYY-MM-DD

- **Decisão**: descrição curta
- **Motivo**: por que foi tomada
- **Impacto**: o que mudou
```
