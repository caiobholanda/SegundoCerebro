---
tipo: diario
status: ativo
criado: 2026-07-10
atualizado: 2026-07-10
tags: [manutencao-semanal, revisao]
---

# Manutenção Semanal — 2026-W28

> Gerado em 2026-07-10 via skill `manutencao-semanal`.

---

## 1. Inbox

- [x] **0 itens** — Inbox vazia. Nenhuma ação necessária.

---

## 2. Projetos parados

- [ ] **`Projeto - Sistema Chamados.md`** — status `ativo`, última atualização: **2026-06-11** (29 dias sem toque)
  - Mesmo item da W27 — não foi resolvido.
  - → Atualizar `atualizado:` com estado atual OU mover para `status: em-andamento` OU arquivar se pausado.

---

## 3. Notas órfãs (sem links de saída)

**43 notas** sem nenhum wikilink de saída. Destaques:

- `_BACKUP_INFO_2026-04-29.md` — nota de backup esquecida na raiz → arquivar
- 7 pesquisas de **2026-07-03** e 7 de **2026-07-07** — criadas automaticamente, sem conexões
- 3 referências sem links: `Referência - Artigo - AlphaEvolve Open Source Implementations 2026.md`, `Referência - Artigo - Claude Mythos Project Glasswing 2026.md`, `Referência - Artigo - TurboQuant KV Cache ICLR 2026.md`
- Notas de diário antigas sem links: `2026-05-13.md`, `2026-05-16.md`, `2026-05-17.md`
- Notas de semana formato antigo: `Semana - 2026-05-20.md`, `Semana - 2026-05-21.md`

> **Ação sugerida**: rodar `/destilar` nas pesquisas recentes; arquivar referências sem conexões.

---

## 4. Volume crítico de pesquisas ⚠️

**685 notas em `03 - Pesquisa/`** — cresceu 77 desde W27 (608).

| Mês    | Contagem |
|--------|----------|
| Mai/26 | 191      |
| Jun/26 | 371      |
| Jul/26 | 119 (parcial) |

- **35 pesquisas de julho** sem seção 🎯 Síntese (todas a partir de 2026-07-02)
- Pipeline `pesquisa → zettel → conexão` continua acumulando sem girar

- [ ] Rodar `/destilar` nas pesquisas de jul/26 sem síntese
- [ ] Decisão pendente da W27: reduzir frequência de 7 para 3-4 temas/dia?
- [ ] Considerar arquivar pesquisas com mais de 60 dias não destiladas

---

## 5. Tags inconsistentes

Mesmo estado da W27 — nenhuma unificação foi executada.

| Canônica | Duplicatas | Ação |
|----------|-----------|------|
| `salarios` | `salario`, `salários` | unificar |
| `ia` | `inteligencia-artificial` | unificar |
| `infra` | `infraestrutura` | unificar |
| `agentes` | `agente` | unificar |
| `claude-code` | `claudecode` | unificar |

**Tags acidentais ainda presentes**: cores CSS (`f8f9fa`, `0066cc`, `dc3545`, `fff`, etc.), `secao1`, `tag1`, `tag2`.

- [ ] Autorizar limpeza de tags acidentais?
- [ ] Confirmar tabela de unificação para executar em lote

---

## 6. Frontmatter quebrado

**359 notas** sem `tipo`, `criado` ou `atualizado` — principalmente:
- Pesquisas no formato `YYYY-MM-DD - Tema.md` (sem delimitador `---`)
- `_BACKUP_INFO_2026-04-29.md` — sem campo `atualizado:`

> Baixa prioridade para correção manual; impede filtros em Bases do Obsidian.

---

## 7. MOCs desatualizados

| MOC | Estado |
|-----|--------|
| `_MOC - Pesquisa.md` | Desatualizado — 685 notas, MOC tem ~116 links |
| `_MOC - Áreas.md` | Vazio — pasta `02 - Áreas/` sem notas |
| `_MOC - Projetos.md` | Razoável — 1 projeto ativo linkado |

- [ ] Regenerar `_MOC - Pesquisa.md` com `/moc Pesquisa`
- [ ] Definir e criar notas em `02 - Áreas/`

---

## Pendências para decidir

1. **`Projeto - Sistema Chamados`** (29 dias parado) — ativo, pausado ou concluído?
2. **Ritmo de pesquisas** — 7/dia → destilação zero. Reduzir ou dedicar sessão semanal ao `/destilar`?
3. **Tags acidentais** (cores CSS) — autorizar limpeza em lote?
4. **`02 - Áreas/`** — quais áreas de responsabilidade mapear?
5. **Pesquisas +60 dias sem zettel** — arquivar ou destinar sessão de destilação?
