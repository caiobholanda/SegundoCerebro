---
tipo: diario
status: ativo
criado: 2026-06-19
atualizado: 2026-06-19
tags: [manutencao-semanal, revisao, relatorio]
related: []
---

# Manutenção Semanal — 2026-W25

**Data:** 2026-06-19 (quinta-feira)

---

## ✅ Checklist de manutenção

### 1. Inbox
- [x] **1 item** na Inbox — dentro do limite (< 10). OK.

---

### 2. Projetos parados
- [x] `Projeto - Sistema Chamados.md` → status: **ativo**, atualizado: 2026-06-11 (8 dias) — OK.
- [ ] `_MOC - Projetos.md` → sem `status`, `atualizado: 2026-04-29` (**51 dias sem atualizar**).
  - **Ação:** atualizar frontmatter e revisar se o MOC ainda reflete os projetos reais.

---

### 3. Notas órfãs (sem wikilinks)

#### Referências sem conexão
- [ ] `Referência - Artigo - AlphaEvolve Open Source Implementations 2026.md`
- [ ] `Referência - Artigo - Claude Mythos Project Glasswing 2026.md`
- [ ] `Referência - Artigo - TurboQuant KV Cache ICLR 2026.md`
  - **Ação:** adicionar links em notas de pesquisa relevantes (IA, Claude, Economia de Tokens).

#### Diários sem conexão
- [ ] `2026-05-13.md`, `2026-05-16.md`, `2026-05-17.md`
  - **Ação:** arquivar ou adicionar link retroativo a partir da nota da semana correspondente.

#### Relatórios de manutenção anteriores (sem links)
- `Manutenção - 2026-W20.md`, `W21.md`, `W23.md`, `W24.md`
- `Semana - 2026-05-20.md`, `Semana - 2026-05-21.md`
  - **Ação:** são arquivos históricos — aceitável que sejam órfãos. Não requer ação.

#### MOC de Áreas
- [ ] `_MOC - Áreas.md` → sem wikilinks internos.
  - **Ação:** popular o MOC com links para as áreas ativas ou arquivar.

---

### 4. Tags inconsistentes

| Problema | Tags conflitantes | Ação sugerida |
|---|---|---|
| Singular vs plural | `agente` (8) vs `agentes` (22) | Unificar em `agentes` |
| Acentuação | `salarios` (22) vs `salário` (7) vs `salários` (1) | Unificar em `salarios` (kebab sem acento) |
| Acentuação | `programacao` (41) vs `programação` (1) | Unificar em `programacao` |
| Acentuação | `tendencias` (8) vs `tendências` (1) | Unificar em `tendencias` |
| Sinônimos | `infra` (34) vs `infraestrutura` (27) | Unificar em `infra` |
| Aspas erradas | `"diario"` (12) vs `diario` (41) | Remover aspas — usar `diario` |
| Aspas erradas | `"pesquisa"` (6) vs `pesquisa` (373) | Remover aspas |
| Aspas erradas | `"revisao-semanal"` (12) vs `revisao-semanal` (1) | Remover aspas |
| Aspas erradas | `"ia"` (2), `"dev"` (5), `"claude"` (1), `"infra"` (1), `"produtividade"` (3) | Remover aspas |
| Placeholder | `tag1` (2), `tag2` (2) | Substituir por tags reais ou remover |
| Prefixo errado | `#processar` (1) | Trocar para `processar` (sem `#`) |

**Total de inconsistências:** 11 grupos. Requer `/conectar` ou edição manual para correção em massa.

---

### 5. Frontmatter quebrado
- `_BACKUP_INFO_2026-04-29.md` → faltando `atualizado:`.
  - **Ação:** adicionar `atualizado: 2026-04-29`.
- Arquivos em `.claude/commands/*.md` → sem frontmatter (esperado — não são notas do vault, ignorar).

---

### 6. Pesquisas sem síntese

- **438 pesquisas** no total em `03 - Pesquisa/`
- **244** com síntese preenchida (~56%)
- **~194** sem síntese completa (~44%)
- Há duas camadas: notas no formato `YYYY-MM-DD - Tema.md` (geradas automaticamente) e `Pesquisa - YYYY-MM-DD - Tema.md` (formato mais antigo)
  - **Ação:** rodar `/destilar` nas mais recentes. Considerar arquivar em lote as pesquisas brutas (`YYYY-MM-DD - Tema.md`) após síntese.

---

### 7. MOCs desatualizados

- Nenhum arquivo `_MOC*.md` encontrado fora de `01 - Projetos` e `03 - Pesquisa`.
- `_MOC - Pesquisa.md` existe em `03 - Pesquisa/` — não verificado se está atualizado.
- `_MOC - Projetos.md` existe mas sem `status` e desatualizado (ver item 2).
- `02 - Áreas` tem `_MOC - Áreas.md` mas sem links.
  - **Ação:** rodar `/moc` para cada pasta principal que ainda não tem MOC ou cujo MOC está vazio.

---

## 📋 Pendências para decidir

1. **Tags com aspas** (`"diario"`, `"pesquisa"`, etc.) — quero corrigir em massa? Posso rodar um script ou fazer manualmente.
2. **194 pesquisas sem síntese** — quer rodar `/destilar` agora ou agendar para a rotina noturna?
3. **_MOC - Áreas.md** vazio — o que pertence a essa área? Definir conteúdo ou arquivar.
4. **Projeto Sistema Chamados** — continua ativo? Status e próximos passos atuais?
5. **Pesquisas brutas (`YYYY-MM-DD - Tema.md`)** — 175 arquivos de formato antigo em `03 - Pesquisa/`. Arquivar em bloco após destilar?

---

## 📊 Resumo da semana

| Item | Status |
|---|---|
| Inbox | ✅ OK (1 item) |
| Projetos ativos | ⚠️ 1 ativo, MOC desatualizado |
| Notas órfãs | ⚠️ 6 acionáveis (3 referências + 3 diários) |
| Tags inconsistentes | ❌ 11 grupos a unificar |
| Frontmatter | ⚠️ 1 nota real com problema |
| Pesquisas sem síntese | ⚠️ ~194 (44%) |
| MOCs | ⚠️ 2 desatualizados / 1 vazio |
