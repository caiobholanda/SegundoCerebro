---
tipo: diario
status: ativo
criado: 2026-06-05
atualizado: 2026-06-05
tags: [manutencao-semanal, revisao]
---

# Manutenção Semanal — 2026-W23

> Gerada em 2026-06-05 (sexta-feira)

---

## ✅ Resumo Rápido

| Item | Estado | Ação |
|------|--------|------|
| Inbox | 1 item | OK — abaixo do limite |
| Notas órfãs | 8 | Ver lista abaixo |
| Tags inconsistentes | 6 grupos | Decisão pendente |
| Frontmatter quebrado | 267 notas | Problema estrutural (pesquisas) |
| Projetos parados | 1 | Revisar Sistema Chamados |
| Pesquisas sem síntese | 256 | Rodar `/destilar` |
| MOCs | 9 existentes | A verificar manualmente |

---

## 1. Notas Órfãs (8)

Sem links de entrada nem saída — aguardam decisão:

- [ ] `_BACKUP_INFO_2026-04-29.md` → **arquivar** em `07 - Arquivo/`
- [ ] `Referência - Artigo - AlphaEvolve Open Source Implementations 2026.md` → conectar ao MOC de Referências
- [ ] `Referência - Artigo - Claude Mythos Project Glasswing 2026.md` → conectar ao MOC de Referências
- [ ] `Referência - Artigo - TurboQuant KV Cache ICLR 2026.md` → conectar ao MOC de Referências
- [ ] `Manutenção - 2026-W20.md` → linkar desta nota ou arquivar
- [ ] `Manutenção - 2026-W21.md` → linkar desta nota ou arquivar
- [ ] `Semana - 2026-05-20.md` → verificar se duplica Manutenção-W20; arquivar
- [ ] `Semana - 2026-05-21.md` → verificar se duplica Manutenção-W21; arquivar

---

## 2. Tags Inconsistentes

Grupos com variações — escolher uma e unificar:

| Variações | Sugestão |
|-----------|---------|
| `ia` / `inteligencia-artificial` | manter `ia` (mais curto) |
| `claudecode` / `claude-code` | manter `claude-code` |
| `flyio` / `fly-io` | manter `fly-io` |
| `tag1` / `tag2` | **remover** — são placeholders |
| `economia-tokens` / `economia` | manter `economia-tokens` (mais específico) |
| `mercado-ti` / `mercado` | manter `mercado-ti` |

> Aguardando confirmação antes de qualquer alteração.

---

## 3. Frontmatter Quebrado (267 notas)

**Problema estrutural**: a rotina automática `/pesquisa` gera notas sem `tipo`, `criado` e `atualizado` no frontmatter. Notas afetadas são principalmente:

- Todas as pesquisas diárias em `03 - Pesquisa/` (256 notas)
- Alguns arquivos raiz (`00 - LEIA-ME.md`, `🏠 Home.md`, `_BACKUP_INFO_*`)
- MOCs (`_MOC - Inbox.md`, `_MOC - Projetos.md`, `_MOC - Áreas.md`)
- `Projeto - Sistema Chamados.md`

**Ação sugerida**: corrigir o template da skill `pesquisa-tema` para incluir frontmatter padrão ao gerar notas. Não alterar notas individuais manualmente (ineficiente).

---

## 4. Projetos Parados

- [ ] **`Projeto - Sistema Chamados.md`** — `atualizado: 2026-05-12` (24 dias sem toque)
  - Sugestão: revisar status → mover para `em-andamento` ou `arquivado`

---

## 5. Inbox

- **1 item** na `00 - Inbox/` — abaixo do limite de 10.
- Nenhuma ação necessária.

---

## 6. Pesquisas sem Síntese (256 notas)

**Todas** as 256 notas em `03 - Pesquisa/` não têm seção de síntese. As pesquisas automáticas salvam conteúdo bruto mas não destilam.

**Ação**: rodar `/destilar` para processar os temas principais e gerar zettels em `05 - Referências/`. Não é necessário sintetizar cada nota individual — destilação por tema é suficiente.

Temas recorrentes detectados (candidatos ao `/destilar`):
- Claude API e Anthropic SDK
- Claude Code — CLI e agentes
- Deploy e Infraestrutura Cloud
- Economia de Tokens em LLMs
- Inteligência Artificial — avanços
- Mercado de TI no Brasil
- Programação e Desenvolvimento

---

## 7. MOCs

9 MOCs existentes (um por pasta principal). Verificação de sincronização com arquivos das pastas: **a fazer manualmente** — MOCs criados mas podem estar desatualizados dado o volume de novas pesquisas diárias.

---

## Pendências para Decisão

1. Unificar tags listadas na seção 2? (requer confirmação)
2. Arquivar notas órfãs da seção 1?
3. Corrigir template de pesquisa automática para incluir frontmatter?
4. Revisar `Projeto - Sistema Chamados`: continua ativo?
5. Rodar `/destilar` nos 7 temas de pesquisa?
