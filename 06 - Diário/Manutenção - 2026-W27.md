---
tipo: diario
status: ativo
criado: 2026-07-03
atualizado: 2026-07-03
tags: [manutencao-semanal, revisao]
---

# Manutenção Semanal — 2026-W27

> Gerado em 2026-07-03 via skill `manutencao-semanal`.

---

## 1. Inbox

- [x] **0 itens** — Inbox vazia. Nenhuma ação necessária.

---

## 2. Projetos parados

- [ ] **`Projeto - Sistema Chamados.md`** — status `ativo`, última atualização: **2026-06-11** (22 dias sem toque)
  - → Atualizar `atualizado:` com o estado atual OU mover para `status: em-andamento` OU arquivar se pausado.

---

## 3. Notas órfãs (sem links de entrada nem saída)

### Arquivos raiz / miscelânea
- [ ] `_BACKUP_INFO_2026-04-29.md` — parece uma nota de backup esquecida na raiz → arquivar ou deletar

### `06 - Diário/` — notas de manutenção anteriores sem inlinks
- Manutenção - 2026-W20.md, W21, W23, W24, W25 — normais (histórico), mas nenhuma é referenciada
- `Semana - 2026-05-20.md` e `Semana - 2026-05-21.md` — formato antigo (antes de "Manutenção")
  - → Padronizar nomenclatura ou arquivar os dois últimos

### `03 - Pesquisa/` — pesquisas recentes sem conexões
- 7 pesquisas de **2026-07-01** — criadas automaticamente mas não linkadas a nenhuma nota
- 7 pesquisas de **2026-07-03** (hoje) — recém-geradas, ainda sem contexto
  - → Rodar `/destilar` para transformar em zettels

---

## 4. Volume crítico de pesquisas ⚠️

**608 notas em `03 - Pesquisa/`** — 7 novas por dia, automáticas, sem destilação.

| Mês    | Contagem |
|--------|----------|
| Mai/26 | 142      |
| Jun/26 | 156      |
| Jul/26 | 21 (parcial) |

**Problema**: o pipeline `pesquisa → zettel → conexão` está acumulando sem girar. As notas existem mas não viram conhecimento.

- [ ] Decisão necessária: manter ritmo atual (7/dia) ou reduzir para 3-4 temas por rodada?
- [ ] Rodar `/destilar` nas pesquisas de Jun/Jul que ainda não geraram zettels
- [ ] Considerar arquivar pesquisas com mais de 30 dias que não foram destiladas

---

## 5. Tags inconsistentes

Variações detectadas — aguardando confirmação para unificar:

| Canônica (manter) | Duplicatas a remover | Ocorrências |
|---|---|---|
| `salarios` | `salario` (8x), `salários` (1x) | → unificar em `salarios` |
| `ia` | `inteligencia-artificial` (3x) | → unificar em `ia` |
| `infra` | `infraestrutura` (35x) | → unificar em `infra` |
| `automacao` | `automatico` (42x) | → confirmar: `automatico` é diferente de `automacao`? |
| `claude-code` | `claudecode` (2x) | → unificar em `claude-code` |
| `tendencias` | `tendências` (1x, com acento) | → unificar em `tendencias` |
| `programacao` | `programação` (1x, com acento) | → unificar em `programacao` |
| `agentes` | `agente` (8x) | → unificar em `agentes` |

**Tags-problema (acidentais):**
- Cores CSS como tags: `f8f9fa`, `ffff00`, `dee2e6`, `dc3545`, `f5576c`, `f9f9f9`, `fff`, `ffffff`, `ff6b6b`, `ff6b35`, `FF5733`, `f0f0f0` — vieram de alguma nota com HTML/CSS
- `#processar` (com `#` no nome) — deveria ser só `processar`
- `CoD`, `ID`, `tag1`, `tag2`, `secao1` — parecem resíduos de templates

- [ ] Confirmar unificações acima antes de executar
- [ ] Identificar qual nota gerou as tags de cores CSS

---

## 6. Frontmatter quebrado

| Nota | Problema |
|------|----------|
| `00 - LEIA-ME.md` | `status: ativo\`.` — tem backtick e ponto no valor |
| `_BACKUP_INFO_2026-04-29.md` | Campo `atualizado:` ausente |
| Pesquisas antigas (mai/jun, formato sem `---`) | Sem delimitador de frontmatter — não são parseadas pelo Obsidian |

- [ ] Corrigir `00 - LEIA-ME.md` manualmente (remover `` `. ``)
- [ ] Corrigir `_BACKUP_INFO_2026-04-29.md` (adicionar `atualizado: 2026-04-29`)
- [ ] Pesquisas sem frontmatter: baixa prioridade, mas impede filtros de base

---

## 7. MOCs desatualizados

| MOC | Links atuais | Estado real | Ação |
|-----|-------------|-------------|------|
| `_MOC - Pesquisa.md` | 116 links | 608 notas existem | Muito desatualizado → rodar `/moc` para pesquisa |
| `_MOC - Inbox.md` | 0 links | Inbox vazia | OK |
| `_MOC - Áreas.md` | 0 links | Pasta só tem o próprio MOC | Vazia — adicionar áreas ou documentar que está em construção |
| `_MOC - Arquivo.md` | 0 links | Arquivo parece vazio | OK por enquanto |
| `_MOC - Projetos.md` | 2 links | 1 projeto ativo | Razoável |

- [ ] Regenerar `_MOC - Pesquisa.md` com `/moc Pesquisa`
- [ ] Definir quais áreas existem e criar notas em `02 - Áreas/`

---

## 8. Pesquisas sem síntese

Todas as pesquisas verificadas têm seção de síntese preenchida. ✅

---

## Pendências para decidir

1. **Ritmo de pesquisas**: 7/dia → destilado zero. Reduzir frequência ou dedicar sessão semanal ao `/destilar`?
2. **Tags acidentais** (cores CSS, CoD, ID): autorizar limpeza?
3. **Unificação de tags**: confirmar tabela acima para executar em lote
4. **`02 - Áreas/`**: pasta praticamente vazia — quais áreas de responsabilidade você quer mapear?
5. **`Projeto - Sistema Chamados`**: atualizar status (ativo/pausado/concluído)?
