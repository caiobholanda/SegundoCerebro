---
tipo: diario
status: ativo
criado: 2026-05-15
atualizado: 2026-05-15
tags: [diario, manutencao-semanal, revisao]
---

# Manutenção Semanal — 2026-W20 (15/05)

---

## ✅ 1. Notas órfãs (sem wikilinks)

| Nota | Situação | Ação sugerida |
|------|----------|---------------|
| `Referência - Artigo - Claude Mythos Project Glasswing 2026` | Sem links de saída + ausente do MOC | Adicionar ao MOC Referências (seção Claude/IA) |
| `Referência - Artigo - TurboQuant KV Cache ICLR 2026` | Sem links de saída + ausente do MOC | Adicionar ao MOC Referências (seção Claude/IA) |
| `Referência - Artigo - AlphaEvolve Open Source Implementations 2026` | Sem links de saída + ausente do MOC | Adicionar ao MOC Referências (seção Claude/IA) |
| `06 - Diário/2026-05-13.md` | Sem nenhum wikilink | Adicionar links de projetos/pesquisas do dia |
| `02 - Áreas/_MOC - Áreas.md` | Nenhuma nota de área criada ainda | Criar primeira nota de área ou aceitar estado vazio |
| `07 - Arquivo/_MOC - Arquivo.md` | Arquivo vazio (nenhuma nota arquivada) | Normal por ora — ignorar |

---

## ⚠️ 2. Tags inconsistentes

**7 referências sem a tag `referencia`** (e/ou sem `artigo`/`doc`):

- `Referência - Artigo - AlphaEvolve...` → `[ia, google, deepmind, ...]` — falta `referencia`, `artigo`
- `Referência - Artigo - Claude Mythos...` → `[anthropic, claude, ...]` — falta `referencia`, `artigo`
- `Referência - Artigo - Crossplane vs Terraform...` → `[crossplane, terraform, ...]` — falta `referencia`, `artigo`
- `Referência - Artigo - K3s vs Kubernetes...` → `[kubernetes, edge, ...]` — falta `referencia`, `artigo`
- `Referência - Artigo - Kubecost vs OpenCost...` → `[kubernetes, finops, ...]` — falta `referencia`
- `Referência - Artigo - TurboQuant KV Cache...` → `[ia, quantizacao, ...]` — falta `referencia`, `artigo`
- `Referência - Doc - AWS Kiro IDE Agentic...` → `[aws, kiro, ...]` — falta `referencia`

**1 nota com aspas nas tags** (formato inconsistente):
- `06 - Diário/Semana - 2026-05-13.md` → `tags: ["diario", "revisao-semanal"]` — remover aspas

**Ação sugerida**: unificar tags das referências acima adicionando `referencia` + tipo (`artigo`/`doc`) à lista existente.

---

## 🔧 3. Frontmatter quebrado

Nenhum problema crítico encontrado. Todos os campos obrigatórios (`tipo`, `criado`, `atualizado`, `tags`) estão presentes nos arquivos verificados.

---

## 🏗️ 4. Projetos parados (>14 dias)

| Projeto | Status | Última atualização | Situação |
|---------|--------|--------------------|----------|
| Setup Segundo Cérebro | `concluido` | 2026-04-29 | ✅ Correto — projeto encerrado |
| Sistema Chamados | `ativo` | 2026-05-12 | ✅ OK — 3 dias atrás |

Nenhum projeto parado.

---

## 📥 5. Inbox

**Inbox vazia** — sem itens pendentes. ✅

---

## 🔬 6. Pesquisas sem síntese (12 arquivos)

**Lote 2026-05-08** (9 arquivos — os mais antigos, prioridade alta):
- `Pesquisa - 2026-05-08 - Inteligencia Artificial`
- `Pesquisa - 2026-05-08 - Programacao e Desenvolvimento`
- `Pesquisa - 2026-05-08 - Mercado TI Brasil`
- `Pesquisa - 2026-05-08 - Seguranca da Informacao`
- `Pesquisa - 2026-05-08 - Cloud e Infraestrutura`
- `Pesquisa - 2026-05-08 - Claude API e Desenvolvimento`
- `Pesquisa - 2026-05-08 - Economia de Tokens Claude`
- `Pesquisa - 2026-05-08 - Deploy Publico de Sites`
- `Pesquisa - 2026-05-08 - Claude Code Skills e Automacao`

**Lote 2026-05-14** (3 arquivos):
- `Pesquisa - 2026-05-14 - Claude API`
- `Pesquisa - 2026-05-14 - Deploy e Infraestrutura`
- `Pesquisa - 2026-05-14 - Programacao e Dev`

**Ação sugerida**: rodar `/destilar` no lote 2026-05-08 esta semana.

---

## 🗺️ 7. MOCs desatualizados

**MOC Referências** (`_MOC - Referências.md`) — **desatualizado**.
Tem 23 itens listados, mas existem 40 referências. Faltam ~17 arquivos:

*Seção Claude/IA/Dev (faltando):*
- `Referência - Artigo - Claude Code Desktop Redesign 2026`
- `Referência - Artigo - Claude Mythos Project Glasswing 2026`
- `Referência - Doc - Claude Code Routines 2026`
- `Referência - Doc - Claude Compaction API Models 2026`
- `Referência - Doc - Claude Multi-Agent Orchestration 2026`
- `Referência - Doc - Claude Code Agent View 2026`
- `Referência - Doc - ant CLI Anthropic 2026`
- `Referência - Artigo - Cursor vs Claude Code Agentic Comparison 2026`

*Seção Infra/Cloud/DevOps (faltando):*
- `Referência - Artigo - AlphaEvolve Open Source Implementations 2026`
- `Referência - Doc - AWS Kiro IDE Agentic 2026`
- `Referência - Artigo - TurboQuant KV Cache ICLR 2026`
- `Referência - Artigo - GreenOps Sustainable Programming 2026`
- `Referência - Artigo - Crossplane vs Terraform Times Pequenos 2026`

*Seção Mercado TI (faltando):*
- `Referência - Artigo - Salarios AI Engineer Junior Brasil Glassdoor 2026`
- `Referência - Artigo - Empresas Contratam IA Brasil Nucamp 2026`
- `Referência - Artigo - Certificacoes TI Mais Valorizadas Brasil 2026`
- `Referência - Artigo - Amazon Q Developer vs GitHub Copilot 2026`

*Outros (faltando):*
- `Referência - Artigo - LLMLingua Latência Compressão 2026`
- `Referência - Artigo - Kubecost vs OpenCost FinOps Kubernetes 2026`
- `Referência - Artigo - Semantic Caching TTL Confidence 2026`

**Ação sugerida**: rodar `/moc` para regenerar o MOC de Referências.

**MOC Pesquisa** (`_MOC - Pesquisa.md`) — **atualizado**. Todos os 30 arquivos estão listados. ✅

**MOC Projetos, Diário, Roteiros, Arquivo, Áreas** — estruturalmente ok para o volume atual.

---

## 📋 Resumo de pendências para o usuário

| Prioridade | Ação | Comando |
|-----------|------|---------|
| 🔴 Alta | Destilar pesquisas de 2026-05-08 (9 sem síntese) | `/destilar` |
| 🔴 Alta | Atualizar MOC Referências (faltam ~20 itens) | `/moc` |
| 🟡 Média | Corrigir tags de 7 referências (falta `referencia`) | Manual ou `/conectar` |
| 🟡 Média | Adicionar 3 refs órfãs ao MOC (AlphaEvolve, TurboQuant, Mythos) | Manual |
| 🟢 Baixa | Remover aspas em tags do `Semana - 2026-05-13.md` | Manual |
| 🟢 Baixa | Adicionar wikilinks ao `2026-05-13.md` (diário sem links) | Manual |
| 🟢 Baixa | Criar primeira nota em `02 - Áreas/` ou aceitar vazio | Decisão sua |
