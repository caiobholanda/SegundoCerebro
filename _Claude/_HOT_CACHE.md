---
tipo: meta
atualizado: 2026-05-16
---

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
