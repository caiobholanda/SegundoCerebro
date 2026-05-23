---
tipo: diario
status: ativo
criado: 2026-05-22
atualizado: 2026-05-22
tags: [diario, manutencao-semanal, revisao]
---

# Manutenção Semanal — 2026-W21

## ✅ Inbox
- **Limpa** — nenhuma nota pendente. Nada a fazer.

---

## 🔴 Frontmatter quebrado — CRÍTICO (19 arquivos)

Todo frontmatter envolvido por ` ```markdown ``` ` NÃO é reconhecido pelo Obsidian como YAML — é tratado como texto puro. Properties não funcionam, filtros em bases falham.

**Afetados:**
- `06 - Diário/Semana - 2026-05-13.md` a `Semana - 2026-05-21.md` (9 arquivos)
- `03 - Pesquisa/2026-05-22 - *.md` (7 arquivos sem prefixo)
- Confirmar se outros arquivos têm o mesmo padrão

**Ação**: Remover o bloco ` ```markdown ``` ` que envolve o frontmatter em cada arquivo. O `---` deve estar na linha 1, sem nada antes.

---

## 🟠 Pesquisas duplicadas — 03 - Pesquisa (16 arquivos extras)

Dois sets de arquivos para os mesmos temas:

| Data | Duplicata A | Duplicata B |
|------|-------------|-------------|
| 2026-05-22 | `2026-05-22 - Claude API e Anthropic SDK.md` | `Pesquisa - 2026-05-22 - Claude API e Anthropic SDK.md` |
| 2026-05-22 | (+ 6 outros temas) | (+ 6 outros temas) |
| 2026-05-16 | `Pesquisa - 2026-05-16 - Claude Code.md` | `Pesquisa - 2026-05-16 - Claude Code e Claude.ai.md` |
| 2026-05-16 | `Pesquisa - 2026-05-16 - Mercado TI Brasil.md` | `Pesquisa - 2026-05-16 - Mercado de TI Brasil.md` |
| 2026-05-17 | `Pesquisa - 2026-05-17 - Mercado TI Brasil.md` | `Pesquisa - 2026-05-17 - Mercado de TI Brasil.md` |

**Total**: ~16 arquivos duplicados (7 de 2026-05-22 sem prefixo + 2 pares em 2026-05-16 + 1 par em 2026-05-17)

**Ação sugerida**: Arquivar a duplicata com conteúdo menor/inferior → `07 - Arquivo/`. Os sem prefixo "Pesquisa - " não estão linkados no MOC — candidatos a arquivar.

---

## 🟡 Tags com aspas (9 arquivos)

Todos os `Semana - *.md` usam:
```
tags: ["diario", "revisao-semanal"]
```
Deveria ser:
```
tags: [diario, revisao-semanal]
```
Aspas em YAML de tags causam inconsistência nos filtros do Obsidian.

**Afetados**: `Semana - 2026-05-13.md` até `Semana - 2026-05-21.md`

**Ação**: Remover aspas — mas este fix pode ser feito junto com a correção do frontmatter acima.

---

## 🟡 Tags com variações de nome

| Variante A | Variante B | Onde |
|-----------|-----------|------|
| `mercado-ti` | `mercado` | pesquisas 2026-05-08 vs pesquisas novas |
| `claude` | `claude-code` | misturadas em pesquisas e referências |
| `automacao` | `automacao` | OK — consistente |

**Ação sugerida**: Padronizar `mercado-ti` (mais específico). Em pesquisas futuras usar `claude-code` para Claude Code e `claude` para API/modelos.

---

## 🟡 Pastas vazias (só MOC)

- `02 - Áreas/` — apenas `_MOC - Áreas.md`, sem nenhuma nota de área
- `04 - Roteiros/` — apenas `_MOC - Roteiros.md`, sem roteiros

**Ação**: Criar ao menos 1 nota em cada para validar o fluxo. Sugestão:
- `02 - Áreas/Área - TI e Infraestrutura.md`
- `04 - Roteiros/Roteiro - [próximo tema de conteúdo].md`

---

## 🟢 Projetos

| Projeto | Status | Atualizado | Situação |
|---------|--------|-----------|---------|
| Setup Segundo Cérebro | concluido | 2026-04-29 | ✅ OK |
| Sistema Chamados | ativo | 2026-05-12 | ⚠️ 10 dias — monitorar (limite: 14d) |

**Ação**: Atualizar `Projeto - Sistema Chamados.md` se houve progresso na semana.

---

## 🟢 Pesquisas sem síntese

Nenhuma — todas as notas em `03 - Pesquisa/` têm seção `🎯 Síntese`. ✅

---

## 🟢 MOC Pesquisa

Coberto e atualizado para os arquivos com prefixo `Pesquisa - *`. Os 7 arquivos sem prefixo de 2026-05-22 não estão no MOC — serão cobertos após decisão sobre as duplicatas.

---

## 📋 Pendências para decisão

- [ ] **Corrigir frontmatter quebrado** nos 19 arquivos (remover ` ```markdown ``` `)
- [ ] **Arquivar duplicatas** — qual versão manter? (com ou sem prefixo "Pesquisa -")
- [ ] **Remover aspas** das tags nos Semana files (junto com fix acima)
- [ ] **Criar nota de Área** em `02 - Áreas/`
- [ ] **Criar próximo Roteiro** se houver tema de conteúdo pendente
- [ ] **Atualizar** `Projeto - Sistema Chamados.md` com progresso recente
