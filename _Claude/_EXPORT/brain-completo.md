# Segundo CÃ©rebro â€” Export para Claude.ai Projects
> Gerado automaticamente em 2026-05-20 Ã s 10:06. NÃ£o edite â€” serÃ¡ sobrescrito.
> Este arquivo deve ser carregado como Project Knowledge no claude.ai.

---
## Conhecimento Global

# Conhecimento Global

> Preferências, padrões e fatos aprendidos em todas as sessões.
> Claude atualiza este arquivo quando aprende algo relevante e duradouro.

## Sobre o Usuário

- Estagiário de TI no Hotel Gran Marquise, Fortaleza-CE
- Trabalha com suporte TI interno e desenvolvimento do sistema de chamados
- Prefere respostas curtas e diretas, sem enrolação
- Usa Windows 11 + PowerShell + Claude Code no terminal
- Email: caiobholanda2007@gmail.com

## Preferências de Trabalho

- Deploy automático via Stop hook — nunca fazer commit/push manual
- Sempre aguardar confirmação de deploy antes de reportar conclusão
- Respostas sem emojis
- Timezone: America/Fortaleza (UTC-3)
- Prefere código funcional antes de explicações longas

## Stack Principal

- **sistema-chamados**: Node.js + Express + better-sqlite3 + JWT, sem framework frontend, HTML/CSS/JS puro
- **Deploy**: Railway via GitHub Actions (`railway up`)
- **Banco**: SQLite em `data/chamados.db`

## Prioridades de Pesquisa do Vault

1. **Claude API** — novidades, modelos, preços, tool use, prompt caching, batches, files API
2. **Claude Code e Claude.ai** — CLI, skills, hooks, MCP, Projects, Canvas, features novas
3. **Economia de Tokens** — técnicas para reduzir custo/consumo em Claude e LLMs
4. **Deploy e Infraestrutura** — Railway, Vercel, VPS, CI/CD, HTTPS, containers
5. **Inteligência Artificial** — outros modelos e avanços do campo
6. **Programação e Dev** — linguagens, frameworks, boas práticas
7. **Mercado TI Brasil** — vagas, salários, carreira

## Loop Autônomo

- Loop autônomo completo a partir de 2026-05-11: 4 ciclos diários via Task Scheduler (manhã, noite, sexta, dia 1)
- 6 skills novas: nota-permanente, conectar-notas, buscar-vault, sintetizar-moc, processar-inbox-pesquisa, revisao-mensal
- 3 sub-agentes em `.claude/agents/`: curador, conector, historiador
- 11 slash commands em `.claude/commands/`

## Cross-Device (claude.ai Projects)

- Export consolidado: `_Claude/_EXPORT/brain-completo.md` — gerado por `_Claude/gerar-export.ps1`
- Para usar em mobile/web: fazer upload do export no Project "Segundo Cérebro" no claude.ai
- SessionStart hook injeta `_HOT_CACHE.md` no Claude Code automaticamente

## Padrões Técnicos Aprendidos

- Migrações SQLite com `ALTER TABLE` dentro de `try/catch` para idempotência
- Prazo de chamados de impressora = 2 dias úteis (sem fins de semana + feriados Fortaleza)
- Feriados Fortaleza: ver `_Claude/projetos/sistema-chamados/_DECISOES.md`
- Timezone sempre convertida: UTC armazenado, Fortaleza exibido
- `cor: 'usado'` para `qtd_usado` no estoque de nobreaks

---

## Contexto Recente (Hot Cache)

# Hot Cache — Contexto Recente

> Atualizado automaticamente pelo PostCompact. Lido pelo SessionStart.
> Não edite manualmente — será sobrescrito na próxima compactação.

## Última Sessão

2026-05-20 (pesquisa diária): 7 notas criadas/confirmadas em `03 - Pesquisa/`. Destaques:
- Claude API: **Anthropic adquiriu a Stainless por ~$300M** (gerava SDKs oficiais de OpenAI, Google e Anthropic); Andrej Karpathy se juntou à Anthropic (pré-treinamento); MCP Tunnels (research preview) + Self-Hosted Sandboxes (public beta) lançados no evento Code with Claude London (19/05); Cache Diagnostics public beta (`cache_miss_reason`); Claude Platform on AWS
- Claude Code: Flags de agente expandidas (--add-dir, --settings, --mcp-config, --plugin-dir, --permission-mode, --model, --effort); terminalSequence para notificações headless; MCP parallel reconnect ~2× mais rápido; OAuth fix para múltiplos servidores; WSL2 clipboard fix
- Inteligência Artificial: **Google I/O 2026 (19-20/mai)** — Gemini 3.5 Flash (novo padrão, 4× mais rápido), Gemini Omni (multimodal/vídeo), Gemini Spark (agente pessoal autônomo), Android XR, CodeMender (rival do Mythos); OpenAI GPT-5.3-Codex; Meta modelos "Mango"+"Avocado" em desenvolvimento
- Economia de Tokens: ArXiv papers novos sobre prompt caching (2601.06007 e 2602.22812); savings realistas 70-80% com combinação de técnicas
- Deploy: Padrão 2026 consolidado = Vercel (frontend) + Railway/Fly.io (backend) + managed DB
- Programação: TypeScript #1 GitHub 2025; dev como revisor/arquiteto; DevSecOps + Green Software como padrão
- Mercado TI Brasil: 18,5% crescimento em 2025; US$67,8bi; 44% empresas expandindo; salário médio R$7.666

2026-05-19 (pesquisa diária — sessão vespertina): Complemento às 7 notas criadas pela automação das 10h. Complementos adicionados:
- Claude API: tabela de preços completa (Haiku $1/$5, Sonnet $3/$15, Opus $5/$25, Fast Mode $30/$150); tokenizador Opus 4.7 +35% tokens; Advisor Tool beta; histórico de lançamentos 4.x
- Claude Code: PostToolUse duration_ms; updatedToolOutput para todos os tools; terminalSequence para notificações headless; MCP paralelo (2× mais rápido); tabela de promoção de limites (+50% até 13/jul/2026)
- Inteligência Artificial: Google I/O 2026 acontece HOJE (19/mai, 14h BRT); Gemini 4 benchmark 84,6% ARC-AGI2; Android XR glasses; GPT-5.5 Instant como padrão ChatGPT; Project Mariner descontinuado
- Mercado TI Brasil: tabela salarial detalhada (IA R$19,5k–R$27,1k; DevOps R$9-14k; backend pleno R$6-9k); concursos até R$26k; ROI de certificações; Finep/BNDES R$205M para IA nacional
- Duplicata Mercado de TI Brasil.md movida para 07 - Arquivo/

2026-05-18 (pesquisa diária — sessão vespertina): Complemento às 7 notas criadas pela sessão matutina de hoje em `03 - Pesquisa/`:
- Claude API: Advisor Tool beta (`anthropic-beta: advisor-tool-2026-03-01`); Claude for Small Business (conectores QuickBooks/HubSpot/etc.); Rate limits dobrados confirmados; tabela de preços Opus 4.7 ($5/$25)
- Claude Code: /goal supervisor architecture (segunda sessão valida antes de marcar Done); updatedToolOutput para todos os tools via PostToolUse; terminalSequence; MCP OAuth fix; OTEL isolation; plugin zip support; Routines (5/dia Pro)
- IA: GPT-5.5 Instant padrão ChatGPT desde 05/mai; família GPT-Realtime (3 modelos de voz); Meta Muse Spark (Meta Superintelligence Labs); Google Android Show — Gemini Intelligence como camada de SO, Googlebook, Magic Pointer (DeepMind), Auto Browse (Chrome); Google I/O 2026 em 19-20/mai (Gemini 4 esperado)
- Mercado TI Brasil: tabela salarial detalhada (dev pleno R$6-9k, IA R$19.5k+); certificações (+30-35% ROI); setores que mais contratam
- Notas de Deploy, Economia, Programacao e Dev: sem alterações (sessão matutina já estava completa)

2026-05-18 (pesquisa diária — sessão matutina): 7 notas criadas em `03 - Pesquisa/`:
- Claude API: Files API beta, Skills beta, MCP Connector beta, Claude Platform no AWS, Billing Split 15/06/2026 (API separada de subscription), Managed Agents Dreaming + Multiagent Orchestration ($0,08/h), Opus 4.7 default Fast Mode
- Claude Code: Agent View + novos flags `claude agents` (--add-dir, --settings, --mcp-config, --model, --effort); Rate limits 2× para todos os planos pagos
- IA: DeepMind AI co-mathematician (48% FrontierMath Tier 4); Baidu ERNIE 5.1; Microsoft Work Trend Index 2026 (adoção bloqueada por cultura); Fundo Finep/BNDES R$205M para IA nacional
- Deploy: Agentic Ops como nova fronteira DevOps; IDPs (Internal Developer Platforms); Amazon EKS Hybrid Nodes; fuga do Kubernetes SaaS; Agent Code Explosion no CI/CD
- Programação: Python + TypeScript dominam; IA agêntica transformou dev de escritor para revisor/arquiteto; DevSecOps como padrão; Low-Code complementar; Green Software emergindo
- Mercado TI Brasil: gap 106k profissionais/ano (53k formados vs 159k demanda); R$666bi investidos até 2026; 44% empresas expandindo equipes TI

2026-05-17 (pesquisa diária): 7 notas criadas em `03 - Pesquisa/`:
- Claude API: GPT-5.5 Instant como padrão ChatGPT; Agent View (Research Preview); Advisor Tool beta; Message Batches até 300k output tokens; rate limits dobrados; Opus 4.7 tokenizador +35% tokens
- Claude Code e Claude.ai: PostToolUse com duration_ms; updatedToolOutput para todos os tools; terminalSequence para notificações; MCP paralelo; /goal, --plugin-url, /recap confirmados
- Economia de Tokens: Semantic caching 70% redução (Redis LangCache); LLMLingua-2 <3s overhead; model routing 60-80% economia; combinado 50-80%; cache reads 0,1× base
- Deploy e Infraestrutura: Vercel flow/step handler unificado + Node 26 sandbox; Fly.io com GPU + Kubernetes + object storage; padrão 2026 = Vercel+Railway+managed DB
- Inteligência Artificial: GPT-5.5 Instant lançado; 3 modelos realtime áudio (GPT-Realtime-2/Translate/Whisper); Meta Muse Spark + agente "Hatch"; Google "Remy" + Project Mariner descontinuado (04/05)
- Programação e Dev: TypeScript #1 GitHub; Node.js maior gap supply/demand; IA como infraestrutura padrão (Copilot, CodeWhisperer, Claude Code); WASM + Rust crescendo
- Mercado TI Brasil: déficit 530k vagas; salário médio R$7.666; dev pleno R$6-9k; cibersegurança/dados/cloud R$8-15k; concursos TI até R$26k; certificações +30% no 1º ano

2026-05-16 (pesquisa diária): 7 notas criadas em `03 - Pesquisa/`:
- Claude API: Opus 4.7 (16/04), preços atuais, Managed Agents beta ($0.08/h), Compaction API (fev/2026)
- Claude Code: hooks com duration_ms + terminalSequence, MCP 500K chars, subagentes em paralelo
- Economia de Tokens: LLMLingua 20× compressão, semantic caching −70%, Compaction API, técnicas de 60-80% redução
- Deploy e Infraestrutura: Railway vs Fly.io vs Vercel comparativo, IA gerando pipelines CI/CD, edge computing
- Inteligência Artificial: GPT-5.4/5.3-Codex (OpenAI), Muse Spark (Meta), Gemini 3 Deep Think 45% ARC-AGI, agente Remy (Google)
- Programação e Dev: TypeScript ultrapassou Python no GitHub (ago/2025), Rust mais admirada, WASM cresce
- Mercado TI Brasil: déficit 530k vagas, salário médio R$7.666, concursos TI até R$26k, IA+cloud=cargos top

2026-05-14 (pesquisa Claude Code): Lacunas da pesquisa de 13/05 respondidas.
- Agent View: sem data GA anunciada; Research Preview desde 11/05/2026; UI pode mudar antes de GA
- /goal: sem timeout fixo — controle declarativo ("ou parar após N turnos"); subagentes travam após 10min de idle
- Hooks: ~27-28 eventos documentados (não 25); Agent Teams adiciona TaskCreated/TeammateIdle/TaskCompleted; skills podem ter hooks locais no frontmatter YAML (escopo = lifetime da skill)
- Multi-agent billing: sem billing separado; cada subagente tem contexto independente; custo ~3-4x de sessão sequencial; exemplos reais: $8k–$47k em execuções sem supervisão
- Novos recursos semana 12-14/05: /goal, --plugin-url, /recap, claude project purge, skills folder protection expandida
- Routines (abr/2026): automações cloud-managed com schedule/API/GitHub triggers; limite Pro=5/dia
- Desktop redesign (abr/2026): sidebar multi-sessão, terminal integrado, side chat isolado

2026-05-12 (sistema-chamados): Integração completa do projeto no vault.
- `_Claude/projetos/sistema-chamados/_CONTEXTO.md` reescrito com estado atual completo
- `_Claude/projetos/sistema-chamados/_DECISOES.md` com todas as decisões de 2026-05-11 e 2026-05-12
- `01 - Projetos/Projeto - Sistema Chamados.md` criado (template padrão)
- `01 - Projetos/_MOC - Projetos.md` atualizado com wikilink do projeto

2026-05-11 (sistema-chamados — sessão de desenvolvimento):
- **Push mobile**: is_mobile flag, pushsubscriptionchange com oldEndpoint, reconexão em focus/online
- **Alertas de prazo**: janela 10min adicionada, prazo_alertas reset ao reabrir/atualizar prazo
- **Filtro admin**: filtro por ID client-side com debounce; removidos filtros de prioridade e data
- **Histórico por usuário**: modal z-3000 + popup chamado z-3100 sem navegar de tela
- **iOS PWA**: manifest.json + apple meta tags; banner de instalação para usuários iOS browser
- **Bug fix chat**: clearInterval ao abrir modal evita chat compartilhado entre chamados
- **setor_origem**: toner entrada rastreia setor de origem da redistribuição
- **Badge #ID**: visível em todos os portais (admin, mobile, usuário)

2026-05-11 (upgrade autonomia): Loop autônomo completo instalado.
- **6 skills novas**: nota-permanente, conectar-notas, buscar-vault, sintetizar-moc, processar-inbox-pesquisa, revisao-mensal
- **3 sub-agentes**: curador, conector, historiador (em `.claude/agents/`)
- **11 slash commands** em `.claude/commands/` (/zettel, /buscar, /moc, /conectar, /destilar, /mes, etc.)
- **Hook PostToolUse**: atualiza `atualizado:` no frontmatter automaticamente em todo `.md` editado
- **automacao-cerebro.ps1** + 4 tarefas no Task Scheduler: cerebro-manha (07h), cerebro-noite (22h), cerebro-semana (sex 18h), cerebro-mes (dia 1, 09h)
- CLAUDE.md e _GLOBAL.md atualizados com novo estado do sistema

2026-05-11 (sessão anterior): Base de conhecimento de programação criada em `05 - Referências/`. 9 notas de documentação completa adicionadas:
- JavaScript (MDN) — Referência - Doc - JavaScript.md
- TypeScript (typescriptlang.org) — Referência - Doc - TypeScript.md
- Python (docs.python.org) — Referência - Doc - Python.md
- Java (Oracle JDK 21) — Referência - Doc - Java.md
- HTML5 (MDN) — Referência - Doc - HTML5.md
- CSS3 (MDN) — Referência - Doc - CSS3.md
- SQL/PostgreSQL — Referência - Doc - SQL.md
- Node.js (nodejs.org) — Referência - Doc - Node.js.md
- React v18+ (react.dev) — Referência - Doc - React.md

**IMPORTANTE**: Ao programar, buscar primeiro em `05 - Referências/` antes de fazer WebSearch. Economiza tokens significativamente.

Sessão anterior (2026-05-08): Pesquisa diária concluída. 5 notas em `03 - Pesquisa/`:
- Inteligência Artificial, Programação e Desenvolvimento, Mercado TI Brasil, Segurança da Informação, Cloud e Infraestrutura.

Automação diária configurada: `pesquisa-diaria.ps1` criado para rodar via Windows Task Scheduler às 10h.
Sistema de memória autônoma ativo: hooks SessionStart (injeta hot cache) + PostCompact (salva resumo).

## Projetos Ativos

- **sistema-chamados** — sistema de suporte TI do Hotel Gran Marquise. Stack: Node.js + Express + SQLite + JWT + Web Push. Deploy automático via Railway + GitHub Actions. Em produção e ativo. Nota: `01 - Projetos/Projeto - Sistema Chamados.md`.

## Decisões Recentes

2026-05-14 (pesquisa economia de tokens):
- Confirmado: Opus 4.7 input = $5/MTok (não $15 — esse valor é do Opus 4.1 legado)
- Compaction API suporta: Opus 4.7, Opus 4.6, Sonnet 4.6, Mythos Preview. Haiku não.
- LLMLingua inviável para tempo real com APIs comerciais (overhead 21s original, <3s LLMLingua-2)
- Semantic caching dinâmico: confidence = 70% similaridade + 30% frescor

## Padrões Aprendidos

- Preços Claude: Opus 4.x ($5 input) é a família moderna. Opus 4.1 e anteriores ($15 input) são legado.
- Tokenizador Opus 4.7: até 35% mais tokens que modelos anteriores para o mesmo texto.
- Fast Mode Opus 4.7 disponível: 2,5× tokens/s de output, mas 6× o preço padrão ($30 input/$150 output)

---

## Regras do Vault (CLAUDE.md)

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

---

## Projetos Ativos

### sistema-chamados

# sistema-chamados — Contexto do Projeto

## O que é

Sistema interno de suporte TI do Hotel Gran Marquise (Fortaleza-CE). Usuários do hotel abrem chamados pelo portal web; admins de TI gerenciam tudo pelo painel administrativo. Existe também um app mobile (PWA) para técnicos em campo.

## URLs

- **Produção**: https://web-production-83b4ae.up.railway.app
- **Repositório**: https://github.com/caiobholanda/sistema-chamados
- **Diretório local**: `C:\Users\estagio.ti\Desktop\ClaudeCode\sistema-chamados`

## Stack

- Node.js + Express + better-sqlite3 + JWT
- Sem framework frontend — HTML/CSS/JS puro com fetch API
- SQLite em `data/chamados.db`
- Web Push Notifications (VAPID via `web-push`) com Service Worker
- Deploy: Railway via GitHub Actions (push em main → deploy automático)

## Estrutura de arquivos

```
server.js                      — entry point, monta rotas, checarPrazos (a cada 2min)
src/
  db.js                        — todas as queries SQLite + migrations inline
  auth.js                      — middleware JWT (requireAdmin, requireMaster)
  push.js                      — envio de push notifications (enviarParaAdmin, enviarParaTodos)
  rotas/
    admins.js                  — /api/admin/* (login, usuários, push, etc.)
    chamados.js                — abertura pública de chamados
    usuarios.js                — portal do usuário comum
    relatorios.js              — exportação de relatórios
    itens.js                   — suprimentos e toneres
    inventario.js              — inventário de equipamentos
    estoque.js                 — estoque + movimentações (setor_origem incluído)
public/
  admin-painel.html + js/      — painel principal de chamados
  admin-usuarios.html + js/    — gerenciamento de admins e usuários do portal
  admin-relatorios.html        — relatórios e gráficos
  admin-itens.html + js/       — gerenciamento de suprimentos/toneres
  admin-estoque.html + js/     — estoque completo
  admin-inventario.html + js/  — inventário
  admin-login.html + js/       — login admin (por e-mail)
  index.html + js/usuario.js   — portal do usuário comum
  mobile.html + js/mobile.js   — app mobile PWA para técnicos
  manifest.json                — PWA manifest (iOS home screen)
  sw.js                        — Service Worker (push + pushsubscriptionchange)
  css/style.css                — único arquivo de estilos
```

## Regras de negócio importantes

- **Domínio obrigatório**: `@granmarquise.com.br` para admins e usuários
- **Hierarquia**: `is_master = 1` tem acesso total; admin comum só gerencia chamados
- **Status dos chamados**: `aberto → em_andamento → concluido` ou `encerrado`; reabrir volta para `aberto`
- **Timezone**: America/Fortaleza (UTC-3) em todas as exibições; prazos armazenados em UTC
- **Prazo impressora**: 2 dias úteis, pula fins de semana + feriados Fortaleza (nacionais + CE + municipais)
- **Push subscriptions**: `is_mobile` flag distingue app mobile (técnico) de desktop (admin)

## Funcionalidades principais

### Chamados
- Usuários comuns abrem chamados com nome, setor, tipo, descrição e arquivos
- Admins assumem, adicionam anotações, definem prazo, concluem ou encerram
- Chat interno por chamado (admin ↔ usuário, atualização por polling)
- Reabrir chamado zera alertas de prazo (`DELETE FROM prazo_alertas`)
- Filtro por ID (client-side, debounce 150ms) no painel do admin

### Prazo e Alertas
- Alertas automáticos via push em 3 janelas: <10min, 10-60min, 1-24h
- `checarPrazos()` roda a cada 2 minutos no servidor
- `prazo_alertas (chamado_id, tipo)` evita duplicatas; resetado ao atualizar/reabrir
- Admin responsável recebe alerta individual; sem responsável → todos os admins

### Estoque / Toneres
- Movimentações rastreadas com `setor_origem` (toner vindo de algum setor)
- Cálculo de saldo via UNION ALL (saídas positivas + entradas negativas)
- Wizard mobile ao concluir chamado pergunta sobre movimentação de equipamentos

### Notificações Push
- VAPID keys geradas em `push.js`; chave pública exposta em `/api/admin/push/vapid-public-key`
- `pushsubscriptionchange` no SW re-inscreve automaticamente e avisa backend via `/push/resubscribe`
- Subscriptions com `is_mobile=1` recebem URL `/mobile`; demais recebem URL do admin
- Só deleta subscription em erro 404/410 (não 401/403)
- Reconecta automaticamente em `focus` e `online` events

### App Mobile (PWA)
- URL: `/mobile`
- Instalável no iOS via "Adicionar à Tela de Início" (manifest.json + apple meta tags)
- Push só funciona no iOS quando instalado como PWA (não no Safari browser)
- Detecta iOS + standalone: se browser → mostra banner de instalação

### Portal do Usuário
- Usuários veem seus chamados com badge `#ID`
- Não tem acesso ao chat ou dados internos

### Gerenciamento de Usuários (admin-usuarios)
- Botões de ação como ícones SVG em toolbar agrupada
- Histórico de chamados por usuário (modal z-index 3000)
- Clicar no ID do chamado no histórico abre popup do chamado (z-index 3100)
- Senha visível ao editar (campo `type="text"` + botão olho)

## Deploy automático

Hook Stop em `ClaudeCode/.claude/settings.json` faz commit+push automático após cada sessão. GitHub Actions executa `railway up` automaticamente.

## Padrões de código

- CSS em variáveis: `--gold`, `--navy`, `--border`
- `sanitizarTexto()` em todos os inputs de texto antes de salvar
- Migrations inline no `initDb()` com try/catch (`ALTER TABLE ... ADD COLUMN`)
- Rotas admin exigem cookie JWT via `requireAdmin` ou `requireMaster`

---

## Pesquisas Recentes

### Pesquisa - Obsidian + Claude Code

# Pesquisa - Obsidian + Claude Code

## ❓ Pergunta central
Como combinar Obsidian e Claude Code para criar um segundo cérebro funcional sem depender de plugins comunitários?

## 🎯 Síntese
Obsidian é o frontend (markdown local, navegação, graph view) e Claude Code é o agente que opera o vault. A integração se sustenta em três pilares: **skills oficiais do Kepano** (regras de formato), **CLAUDE.md** (regras do vault) e **skills customizadas** (automação do loop diário). Resultado: um sistema onde o usuário escreve o essencial e o agente cuida da estrutura, conexões e manutenção.

## 🔬 Detalhes
- **Markdown local** elimina dependência de servidor e formato proprietário — LLMs leem `.md` nativamente.
- **Skills do Kepano** (`obsidian-markdown`, `obsidian-bases`, `json-canvas`, `obsidian-cli`, `defuddle`) garantem que arquivos gerados pelo Claude não quebrem no Obsidian.
- **CLAUDE.md** funciona como manual estilístico do vault — Claude lê antes de cada operação.
- **Skills customizadas** automatizam capturas, processamento e revisão.
- **JSON Canvas** permite criar mapas visuais inteiros via prompt.
- Loop: nota diária → pesquisa → inbox → roteiro → manutenção semanal.

## 🔗 Conexões
- [[Projeto - Setup Segundo Cérebro]]
- [[Referência - Skills do Kepano]]
- [[Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro]]

## 📚 Fontes
- [[Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro]]
- [[Referência - Skills do Kepano]]

## 🚧 Lacunas
- Como integrar com Claude Sync (oficial) sem quebrar o setup local?
- Vale incluir Bases (`.base`) já no setup inicial ou só quando aparecer demanda?
- Como gerenciar múltiplos vaults (pessoal + cliente)?

...[truncado]

### Pesquisa - 2026-05-20 - Programacao e Dev

# Programação e Dev — Novidades de 2026-05-20

## Ranking de Linguagens em 2026

### Top linguagens por adoção/demanda

1. **TypeScript** — #1 no GitHub desde ago/2025 (ultrapassou Python e JavaScript)
   - Usado em: frontend (React, Next.js), backend (Node.js), tooling
   - Razão do domínio: type safety, DX superior, adoção massiva por grandes projetos
   
2. **Python** — dominante em IA/ML
   - Alimenta >80% dos projetos de ML e IA atualmente
   - Core skill para: cientistas de dados, engenheiros de IA, backend
   - Cresce junto com o boom de IA
   
3. **JavaScript** — essencial para web
   - Continua indispensável para frameworks React e Vue.js
   - Runtime cada vez mais: Node.js, Deno, Bun

4. **Rust** — segurança + performance
   - Mais admirada por desenvolvedores (pesquisas Stack Overflow consecutivas)
   - Cresce em: WebAssembly, sistemas embarcados, CLI tools, infraestrutura
   - Adotado por: Linux kernel, Windows, Android, ferramentas de build (Rolldown, Oxc)

5. **Go** — microserviços
   - Simplicidade e eficiência em arquiteturas distribuídas
   - Forte em: backends de alta carga, CLIs, ferramentas DevOps
   - Kubernetes e grande parte da infra cloud escrita em Go

### Linguagens com momentum específico
- **WASM (WebAssembly)**: crescendo como target de compilação para Rust/C++ no browser
- **Kotlin**: domina Android, avança em backend (Kotlin Multiplatform)
- **Swift**: iOS/macOS, avança em server-side

## Frameworks Mais Demandados

| Framework | Ecosistema | Demanda |
|-----------|-----------|---------|
| React | JavaScript/TypeScript | Mais demandado UI |
| Next.js | React/TypeScript | Full-stack web padrão |

...[truncado]

### Pesquisa - 2026-05-20 - Mercado TI Brasil

# Mercado TI Brasil — Novidades de 2026-05-20

## Panorama Geral

O setor de TI no Brasil teve crescimento de **18,5% em 2025**, superando a média global de 14,1% e atingindo **US$ 67,8 bilhões** em faturamento. Para 2026, a trajetória de expansão continua.

- **44%** das empresas planejam ampliar equipes de TI em 2026
- Modalidades variadas: CLT, PJ, remoto, híbrido
- Objetivo principal das contratações: fortalecer infraestrutura tecnológica e preparar sistemas para IA

## Tabela Salarial (2026)

| Cargo / Área | Júnior | Pleno | Sênior |
|-------------|--------|-------|--------|
| Desenvolvedor Backend (geral) | R$ 3-5k | R$ 6-9k | R$ 12-18k |
| Desenvolvedor Frontend | R$ 3-4k | R$ 5-8k | R$ 10-15k |
| Engenheiro DevOps/Cloud | R$ 5-7k | R$ 9-14k | R$ 15-22k |
| Especialista em IA/ML | R$ 8-12k | R$ 19,5-27k | R$ 25k+ |
| Cibersegurança | R$ 5-8k | R$ 8-15k | R$ 18-28k |
| Engenheiro de Dados | R$ 5-8k | R$ 8-15k | R$ 18-25k |
| Arquiteto de Nuvem | R$ — | R$ 12-18k | R$ 20-35k |

**Salário médio geral TI**: R$ 7.666/mês (Glassdoor, dados jan-mai 2026)

### Concursos públicos TI
- Salários de até **R$ 26.000** em concursos TI federais
- Alta competição mas estabilidade e benefícios atrativos

## Áreas em Alta / Hot Skills

### Áreas com maior demanda 2026
1. **Inteligência Artificial / Machine Learning** — maior crescimento salarial
2. **Cibersegurança** — déficit crítico de profissionais
3. **Engenharia de Dados** — BigData, pipelines, ETL
4. **Arquitetura de Nuvem** — AWS, Azure, GCP
5. **DevOps / SRE** — automação de infraestrutura

### Tecnologias que mais valorizam o salário
- Segurança da informação e gestão de riscos
- Cloud computing (certificações AWS/Azure/GCP)

...[truncado]

### Pesquisa - 2026-05-20 - Inteligencia Artificial

# Inteligência Artificial — Novidades de 2026-05-20

## Google I/O 2026 — Era Agêntica Declarada

O Google I/O 2026 aconteceu nos dias **19-20 de maio** e foi marcado pela declaração: **"Chegamos à era dos agentes autônomos"**. O Google posicionou agentes capazes de resolver tarefas longas e complexas como o novo padrão.

### Gemini 3.5 Flash — Novo Modelo Padrão
- **Novo padrão** no app Gemini e no Modo de IA da Busca Google (a partir de 19/05)
- **4× mais rápido** que outros modelos de fronteira comparáveis
- Supera o Gemini 3.1 Pro em benchmarks de: código, raciocínio multimodal, tarefas agênticas
- Otimizado para velocidade, multimodalidade e execução autônoma de tarefas

### Gemini Omni
- Gera "qualquer coisa a partir de qualquer prompt" — qualquer modalidade
- Especialidade: geração de vídeo de alta fidelidade em tempo real
- Combina expertises de todos os modelos Gemini anteriores
- Posicionado como resposta ao GPT-5 da OpenAI na geração multimodal

### Gemini Spark — Agente Pessoal
- IA de propósito geral que **executa tarefas sozinha** (não apenas responde perguntas)
- Raciocina sobre informações em **aplicações conectadas** do usuário
- Objetivo: gerenciar a vida digital do usuário tomando ações em seu nome
- Comparable ao Project Mariner mas como agente pessoal integrado ao ecossistema Google

### Google Search — Inteligência Agêntica
Novidades na busca do Google com IA:
- **Agentes de informação**: rastreiam temas e resumem atualizações de blogs, notícias e redes sociais
- **Interface generativa**: cria tabelas, gráficos e simulações diretamente na SERP
- **Mini-apps**: gerados on-the-fly para tarefas recorrentes do usuário

### Android XR
- Plataforma criada para **dispositivos de realidade estendida**: óculos inteligentes e headsets
- Gemini integrado como camada de inteligência do dispositivo

### CodeMender
- Resposta do Google ao **Mythos da Anthropic** (modelo de codificação agêntica)
- Modelo especializado em programação com capacidades agênticas

## Meta — Modelos em Desenvolvimento

...[truncado]

### Pesquisa - 2026-05-20 - Economia de Tokens

# Economia de Tokens — Novidades de 2026-05-20

## Panorama 2026

Estudos recentes (mai/2026) confirmam que é realista economizar **70-80%** em custos de LLM com a combinação de estratégias abaixo. O maior ganho individual vem do prompt caching.

## Prompt Caching — Análise Atualizada

### Números validados por estudos recentes
- Redução de custo: **41-80%** em tokens de input (varia por caso de uso)
- Melhora no TTFT (Time to First Token): **13-31%** entre provedores
- Custo de cache hit no Claude: **10% do preço de input** padrão

### Paper ArXiv relevante
- **"Don't Break the Cache: An Evaluation of Prompt Caching for Long-Horizon Agentic Tasks"** (arXiv:2601.06007)
  - Avalia prompt caching especificamente para tarefas agênticas longas
  - Conclusão principal: caching é muito efetivo, mas requer atenção ao design do prompt para não invalidar o cache desnecessariamente

- **"Accelerating Local LLMs on Resource-Constrained Edge Devices via Distributed Prompt Caching"** (arXiv:2602.22812)
  - Aplica caching distribuído para LLMs locais em dispositivos edge
  - Relevante para cenários on-premise e IoT

### Como não quebrar o cache
O cache é invalidado sempre que o prefixo do prompt muda. Boas práticas:
1. Manter o contexto estático (system prompt, documentos, histórico) no início
2. Colocar partes dinâmicas (pergunta do usuário, dados variáveis) sempre no final
3. Usar `cache_control: {type: "ephemeral"}` nos blocos estáticos longos

```python
# Exemplo correto: estático primeiro, dinâmico no final
messages = [
    {
        "role": "user",
        "content": [
            {
                "type": "text",
                "text": LONG_STATIC_CONTEXT,  # cacheado
                "cache_control": {"type": "ephemeral"}
            },
            {

...[truncado]

### Pesquisa - 2026-05-20 - Deploy e Infraestrutura

# Deploy e Infraestrutura — Novidades de 2026-05-20

## Padrão Recomendado 2026

A arquitetura de três caixas consolidou-se como padrão em 2026 para equipes de SaaS:

```
FRONTEND  → Vercel / Netlify / Cloudflare Pages (edge, CDN, previews)
BACKEND   → Railway / Fly.io / Render / DigitalOcean (containers, databases)
DATABASE  → MongoDB Atlas / PlanetScale / Railway Postgres (managed)
```

Tendência: times usam **Vercel + Railway juntos** — Vercel para o que faz melhor (frontend, edge, deploy previews) e Railway para o que faz melhor (databases, containers, serviços backend).

## Railway — Estado Atual (Mai/2026)

### Recursos do plano gratuito
- 500h de execução mensal
- 512 MB RAM por serviço
- Deploy com 1 clique: PostgreSQL, MySQL, Redis
- Suporte a Next.js SSR com performance competitiva

### Expansão recente
- Next.js one-click deploy com SSR competitivo a Vercel
- Sobreposição real com Vercel: Railway agora pode hospedar aplicações Next.js com desempenho SSR comparável

### Quando preferir Railway
- Backend Node.js/Python/Go/Rust
- Banco de dados com persistência real
- Containers Docker com volumes
- Background jobs de longa duração

## Fly.io — Estado Atual (Mai/2026)

### Recursos do plano gratuito
- 3 VMs de 256 MB RAM — **sem hibernação** (sempre on)
- Suporte nativo a Docker
- Volumes persistentes de 3 GB
- GPUs disponíveis (pay-per-use)
- Suporte a Kubernetes e object storage

...[truncado]

### Pesquisa - 2026-05-20 - Claude Code e Claude.ai

# Claude Code e Claude.ai — Novidades de 2026-05-20

## Novas Flags para Agentes em Background

Adicionadas flags para configurar sessões de agentes dispatched (background):

```bash
claude agent run \
  --add-dir ./src \
  --settings ./settings.json \
  --mcp-config ./mcp.json \
  --plugin-dir ./plugins \
  --permission-mode auto \
  --model claude-sonnet-4-6 \
  --effort high \
  --dangerously-skip-permissions
```

Permite configurar granularmente cada sessão de subagente sem alterar as configurações globais.

## Hooks: Novidades

### terminalSequence
- Hook JSON output agora aceita campo `terminalSequence`
- Permite que hooks emitam: notificações de desktop, títulos de janela, terminal bells
- Uso principal: notificações headless (quando não há terminal controlador visível)
- Exemplo de payload de hook com notificação:
```json
{
  "output": "Processamento concluído",
  "terminalSequence": "\x1b]9;2;Tarefa finalizada\x07"
}
```

### duration_ms em PostToolUse
- `PostToolUse` e `PostToolUseFailure` agora incluem `duration_ms` no input do hook
- Permite medir tempo de execução de cada ferramenta individualmente
- Útil para logging de performance, alertas de lentidão e otimização

## MCP: Melhorias

...[truncado]

### Pesquisa - 2026-05-20 - Claude API

# Pesquisa - 2026-05-20 - Claude API

## ❓ Pergunta central
Quais foram os movimentos estratégicos da Anthropic na semana de 20/05/2026 que mudam o ecossistema de API e agentes?

## 🎯 Síntese (3-5 linhas)
A semana foi marcada por duas ações de alto impacto: a aquisição da Stainless por ~$300M (empresa que gerava os SDKs oficiais de OpenAI, Google e Anthropic) e a expansão do Claude Managed Agents com MCP tunnels e self-hosted sandboxes para uso enterprise. Andrej Karpathy também se juntou à Anthropic para liderar pesquisa de pré-treinamento. Em conjunto, esses movimentos mostram a Anthropic consolidando controle vertical sobre modelo, SDK, conectividade (MCP) e infraestrutura de execução — stack completo para agentes de produção.

## 🔬 Detalhes

### Aquisição da Stainless (~$300M)
- Fundada em 2022, Stainless gerava SDKs (TypeScript, Python, Go, Java), CLIs e servidores MCP a partir de specs OpenAPI
- Era usada por OpenAI, Google, Cloudflare e centenas de empresas — e já gerava **todos** os SDKs oficiais da Anthropic
- Com a aquisição, Anthropic passa a controlar o modelo + padrão de conectividade (MCP) + toolchain de SDKs
- Impacto: Stainless encerrou produtos para clientes externos (OpenAI e Google precisarão migrar ou reconstruir)
- Estratégia clara: dominar toda a cadeia de integração de agentes

### Claude Managed Agents — Self-Hosted Sandboxes (public beta)
- Permite que a execução de ferramentas ocorra na infraestrutura do cliente (ou via Cloudflare, Daytona, Modal, Vercel)
- Anthropic continua gerenciando orquestração, contexto e recovery — o cliente controla onde o código roda
- Resolve o bloqueador nº 1 de enterprise: dados sensíveis e workloads não saem do perímetro de segurança

### Claude Managed Agents — MCP Tunnels (research preview)
- Conecta Managed Agents e Messages API a servidores MCP privados sem expor à internet pública
- Gateway leve com conexão encriptada de saída (outbound) para infraestrutura Anthropic — sem abrir firewall inbound
- Elimina a necessidade de expor sistemas internos para usar agentes Claude

### Andrej Karpathy na Anthropic
- Co-fundador da OpenAI e defensor do "Software 3.0" se juntou ao time de pré-treinamento
- Objetivo: usar Claude para acelerar pesquisa de pré-treinamento
- Sinaliza intensificação da disputa de talentos no topo da pesquisa de IA

### Cache Diagnostics (public beta)
- API agora reporta `cache_miss_reason` ao passar `diagnostics.previous_message_id` em requests do Messages
- Facilita depuração de falhas de prompt cache — antes era uma caixa-preta
- Importante para otimizar custos em aplicações com prompt caching intensivo

### Claude Platform on AWS
- Claude API disponível via infraestrutura gerenciada na AWS com billing AWS e autenticação IAM
- Acesso a Messages API, Files API, Message Batches API e Claude Managed Agents

...[truncado]

### Pesquisa - 2026-05-19 - Programacao e Dev

# Pesquisa - 2026-05-19 - Programacao e Dev

## ❓ Pergunta central
Quais linguagens e frameworks dominam o desenvolvimento em 2026 e como a IA está mudando a prática da programação?

## 🎯 Síntese (3-5 linhas)
TypeScript ultrapassou Python em contribuidores no GitHub (agosto 2025), mas Python mantém liderança no TIOBE com 21,81%. Rust é a linguagem "mais admirada" pelo quinto ano seguido e ganha espaço em sistemas críticos cloud-native. A grande transformação não é qual linguagem aprender — é que todo dev agora programa acompanhado de IA como co-piloto. Ferramentas como Copilot e CodeWhisperer tornaram-se padrão de mercado.

## 🔬 Detalhes
- **TypeScript**: maior número de contribuidores no GitHub desde ago/2025 — Next.js e Angular usam TS por padrão; adoção acelerada pela IA generativa
- **Python**: TIOBE #1 com 21,81% (fev/2026) — dominante em IA, ML, data science e automação
- **Rust**: "linguagem mais admirada" 2026 — crescimento em sistemas críticos, cloud-native, segurança e embarcados; confiabilidade e performance
- **Go**: popular em cloud computing, DevOps e sistemas distribuídos — backends de alta performance e infraestrutura
- **IA como co-piloto**: GitHub Copilot, Amazon CodeWhisperer e equivalentes tornam-se padrão — não substituem o dev, amplificam capacidade
- **Foco em segurança e performance**: linguagens com garantias de segurança em tempo de compilação (Rust, Go) ganham espaço onde Python não chega
- **Frameworks dominantes (2026)**: React/Next.js (frontend), FastAPI/Django (Python backend), Axum (Rust), Gin/Fiber (Go), NestJS (TypeScript backend)

## 🔗 Conexões
- [[Pesquisa - 2026-05-18 - Programacao e Dev]]
- [[Pesquisa - 2026-05-19 - Deploy e Infraestrutura]]
- [[Pesquisa - 2026-05-19 - Mercado TI Brasil]]

## 📚 Fontes
- [As linguagens de programação mais usadas em 2026 — Caiena](https://www.caiena.net/blog/linguagens-de-programacao-mais-usadas)
- [Top 20 linguagens 2026 — Nextage](https://nextage.com.br/blog/en/top-20-programming-languages/)
- [Tendências linguagens 2026 — HelpPDev](https://helppdev.com/pt/blog/tendencias-em-linguagens-de-programacao-para-2026-o-que-os-desenvolvedores-precisam-saber)
- [10 Frameworks que dominam 2026 — Nextage](https://nextage.com.br/blog/en/10-frameworks-that-will-dominate-2026/)
- [Mercado de programação 2026 — Alura](https://www.alura.com.br/artigos/mercado-de-programacao-2025)

## 🚧 Lacunas
- Qual framework full-stack TypeScript tem maior adoção no Brasil especificamente
- Como medir ROI real do uso de Copilot em projetos de software
- Rust em produção no Brasil: casos de uso reais além de grandes empresas

...[truncado]

### Pesquisa - 2026-05-19 - Mercado TI Brasil

# Pesquisa - 2026-05-19 - Mercado TI Brasil

## ❓ Pergunta central
Como está o mercado de TI brasileiro em 2026 — salários, áreas em alta e o gap de talentos?

## 🎯 Síntese (3-5 linhas)
O mercado de TI brasileiro cresceu 18,5% em 2025, acima da média global, e segue aquecido em 2026. O gap de talentos é estrutural: o Brasil forma 53 mil profissionais/ano enquanto a demanda é de 159 mil — déficit de mais de 100 mil vagas. Salário médio de dev está em R$ 8.200/mês, com premium para certificados e especialistas em IA, cloud e segurança. 48% dos gestores pagam mais por profissionais com certificações.

## 🔬 Detalhes
- **Crescimento do setor**: +18,5% em 2025 — acima da média mundial; tendência de expansão contínua em 2026
- **Gap estrutural de talentos**: 53k formados/ano vs. 159k demandados — déficit crônico favorece quem está no mercado
- **44% das empresas** planejam ampliar equipes de TI; **48%** pagam mais por profissionais certificados
- **Salário médio dev**: R$ 8.200/mês — variação por experiência, especialização e localização
- **Áreas de maior demanda**: Cibersegurança, Engenharia de Dados, Desenvolvimento em IA, Cloud Computing, Ciência de Dados
- **Stack mais valorizado**: Cloud (AWS/Azure/GCP), IA/ML aplicada, Segurança da Informação, Gestão de Bancos de Dados
- **IA cria novos papéis**: não substitui profissionais de TI no curto prazo — exige novas competências em prompt engineering, MLOps, AI governance
- **Profissionais sênior remotos**: alta demanda de empresas estrangeiras para devs brasileiros com inglês — salários em dólar/euro

## 🔗 Conexões
- [[Pesquisa - 2026-05-18 - Mercado TI Brasil]]
- [[Pesquisa - 2026-05-19 - Programacao e Dev]]
- [[Pesquisa - 2026-05-19 - Inteligencia Artificial]]

## 📚 Fontes
- [Guia Salarial TI 2026 — Robert Half](https://www.roberthalf.com/br/pt/insights/guia-salarial/tecnologia)
- [Mercado de trabalho em TI no Brasil 2026 — InvGate](https://blog.invgate.com/pt/mercado-para-ti)
- [5 cargos TI em alta 2026 — TI Safe](https://tisafe.com/5-cargos-de-ti-em-alta-em-2026/)
- [Guia salarial áreas TI com mais vagas — FIAP](https://www.fiap.com.br/2025/12/02/mercado-de-ti-guia-salarial-revela-areas-mais-demandadas-e-tendencias-para-2026/)
- [Salários de tecnologia 2026 — Green Tecnologia](https://www.green.com.br/blog/salarios-de-tecnologia/)

## 🔄 Complemento (pesquisa vespertina 2026-05-19)

### Tabela Salarial Detalhada — mai/2026

| Cargo | Nível | Faixa Mensal (R$) |
|-------|-------|-------------------|
| Engenheiro de IA | Pleno/Sênior | R$ 19.500 – R$ 27.100 |
| Arquiteto de Nuvem | Sênior | R$ 12.000 – R$ 20.000 |
| DevOps / SRE | Pleno | R$ 9.000 – R$ 14.000 |
| Engenheiro de Dados | Pleno | R$ 8.000 – R$ 15.000 |

...[truncado]

---

## InstruÃ§Ãµes de Comportamento para o Claude

VocÃª Ã© o assistente pessoal de Caio Holanda, estagiÃ¡rio de TI no Hotel Gran Marquise (Fortaleza-CE).

### Prioridades de Conhecimento
1. **Claude API e Claude Code** â€” mÃ¡xima expertise: API, tool use, streaming, prompt caching, hooks, skills, economia de tokens
2. **Deploy e infraestrutura** â€” como colocar sites no ar (Railway, Vercel, VPS, HTTPS, CI/CD)
3. **sistema-chamados** â€” sistema de suporte TI do hotel, Node.js + SQLite + Railway
4. **Tecnologia geral** â€” IA, programaÃ§Ã£o, seguranÃ§a, cloud, mercado TI

### Estilo de Resposta
- Respostas curtas e diretas â€” sem enrolaÃ§Ã£o
- Sem emojis
- Timezone: America/Fortaleza (UTC-3)
- PortuguÃªs brasileiro

### O Que VocÃª Sabe Sobre o UsuÃ¡rio
- Stack principal: Node.js + Express + SQLite + JWT (sem frameworks frontend)
- Deploy via Railway + GitHub Actions
- Usa Windows 11 + PowerShell + Claude Code no terminal
- Prefere cÃ³digo funcional antes de explicaÃ§Ãµes longas
