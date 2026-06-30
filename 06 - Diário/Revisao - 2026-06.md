---
tipo: diario
status: concluido
criado: 2026-06-30
atualizado: 2026-06-30
tags: [revisao-mensal, meta]
---

# Revisão Mensal — Junho 2026

## 1. Projetos

### Concluídos este mês
- Nenhum.

### Ativos
- [[Projeto - Sistema Chamados]] — em produção. Stack Node.js + SQLite + Railway. Sem progresso registrado nas notas do mês.

---

## 2. Áreas

**Ainda vazia.** `02 - Áreas/` contém apenas `_MOC - Áreas.md` (`atualizado: 2026-04-29` — 2 meses sem toque).

Problema identificado em maio, não resolvido em junho. Sugestão ainda válida:
- `Área - Carreira e Estudos.md`
- `Área - Desenvolvimento Pessoal.md`
- `Área - TI e Infraestrutura Hoteleira.md`

---

## 3. Top referências mais linkadas criadas no mês

**Nenhuma referência nova criada em junho.** O acervo de `05 - Referências/` mantém as mesmas notas de maio.

As mais linkadas do vault inteiro:
| # | Nota | Links recebidos |
|---|------|----------------|
| 1 | [[Referência - Skills do Kepano]] | 2 |
| 2 | [[Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro]] | 2 |
| — | Demais 38 referências | 0 cada |

---

## 4. Padrões aprendidos em junho

Puxados do `_HOT_CACHE.md` (ciclos de pesquisa diária):

**Claude API / Anthropic**
- **Billing split ativado em 15/06**: Agent SDK / `claude -p` / GitHub Actions / apps terceiros consomem crédito separado (Pro $20, Max5x $100, Max20x $200/mês, não acumula). Context engineering tornou-se obrigatório.
- Sonnet 4 + Opus 4 originais **DEPRECADOS em 15/06** — chamadas falham.
- Fable 5 gratuito até 22/06; a partir de então $10/$50 MTok.
- WIF + Service Accounts: credenciais de curta duração via OIDC (elimina chaves API estáticas).
- Managed Agents: sandbox corporativo + vault env vars + scheduled deployments.
- Apple Foundation Models Framework (iOS/macOS/watchOS 27).
- Colorado AI Act vigente desde 30/06.
- Managed Connectors MCP — primeiro conector: Okta.

**Claude Code**
- Sub-agentes aninhados até 5 níveis hierárquicos (pai → filho → neto → ...).
- Artifacts beta (18/06) para Team/Enterprise: sessões viram páginas HTML com URL privada em tempo real.
- Dynamic Workflows em research preview: dezenas/centenas de subagentes paralelos por sessão.
- Bloqueio de comandos git destrutivos: `git reset --hard`, `git clean -fd`, `git stash drop`, `git commit --amend` não-autoral.
- `--safe-mode` para troubleshooting sem customizações.
- `/cd` muda diretório sem quebrar cache.
- Routines via cron/GitHub/webhook (Managed Agents beta público).
- Community Tool Marketplace: `claude marketplace search/install`.

**IA / Mercado**
- Gemini 3.5 Flash GA: 4× mais rápido, score ~55 vs Sonnet 4.6 = 52.
- Fable 5 score AA = 59.9 (mais alto publicamente disponível).
- IA agêntica: US$8,5B → US$35B/2030 (Stanford HAI).
- Railway outage 19/05 (GCP suspendeu conta de produção, 8h fora) → Railway redesenhando HA.
- Fly.io removeu free tier (jan/fev 2026).

**Economia de Tokens**
- Combinado (caching + routing + compression): 70–80% real de economia.
- Output mediana 4× mais caro que input (não otimizar output = jogar dinheiro fora).
- YAML: 50% menos tokens que JSON; TOON: 35% menos que JSON.
- Prompt caching = maior alavanca isolada: 90% off no cached input.

**Mercado TI Brasil**
- Salário médio: R$7.666/mês (+6,4%/ano).
- Déficit: 106k profissionais/ano (53k formados vs 159k demanda) → projeção 1M vagas em 2030.
- IA/LLMs: +50% acima da média salarial.
- PL 2.338 (regulação IA): adiado para dezembro 2026.

---

## 5. Lacunas identificadas

| Lacuna | Impacto | Sugestão |
|--------|---------|----------|
| Destilação (`/destilar`) não acontece | Crítico — 210 notas de pesquisa em junho, 0 destiladas. Mesmo problema de maio. | Adicionar `/destilar` ao Task Scheduler (ex.: após cada ciclo `cerebro-noite`) |
| `02 - Áreas/` vazia | Alto — nenhuma responsabilidade contínua mapeada há 2 meses | Criar 3 áreas essenciais |
| Nenhum zettel novo em junho | Alto — crescimento zero em `05 - Referências/` | Destilar pesquisas → zettels atômicos |
| `04 - Roteiros/` vazio | Médio — se há intenção de produzir conteúdo | Usar `/roteiro` após destilar pesquisa de tema |
| MOCs de Inbox, Áreas e Arquivo com 0 links | Médio — MOCs sem utilidade real | Conectar ou arquivar esses MOCs |
| 38 de 40 referências com 0 links externos | Médio — acervo sem usar | Rodar `/conectar` modo vassoura em `05 - Referências/` |
| Pesquisas diárias não têm `status` definido | Baixo — dificulta filtros em `.base` | Adicionar `status: bruto` ao template de pesquisa |

---

## 6. Volume do mês

| Item | Quantidade |
|------|-----------|
| Pesquisas criadas | 210 (7 temas × 30 dias) |
| Referências novas | 0 |
| Diários criados | 28 |
| Zettels destilados | 0 |
| Projetos concluídos | 0 |
| Roteiros | 0 |

---

## 7. Decisão de arquitetura

O vault segue crescendo em volume de pesquisa sem converter em conhecimento permanente. O loop `cerebro-manha` e `cerebro-noite` funcionam (28 diários + 210 pesquisas), mas a etapa de destilação (`/destilar` → zettels em `05 - Referências/`) está ausente há 2 meses consecutivos.

**Ação prioritária para julho:** integrar `/destilar` ao Task Scheduler — rodar pelo menos 1× por semana (ex.: sexta-feira junto com `manutencao-semanal`) para converter pesquisas acumuladas em notas permanentes linkadas.
