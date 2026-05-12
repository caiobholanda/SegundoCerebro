# Segundo CÃ©rebro â€” Export para Claude.ai Projects
> Gerado automaticamente em 2026-05-11 Ã s 13:23. NÃ£o edite â€” serÃ¡ sobrescrito.
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

- **sistema-chamados** — sistema de suporte TI do Hotel Gran Marquise. Stack: Node.js + Express + SQLite + JWT. Deploy automático via Railway + GitHub Actions.

## Decisões Recentes

*(nenhuma ainda)*

## Padrões Aprendidos

*(nenhum ainda)*

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

Sistema interno de suporte TI do Hotel Gran Marquise (Fortaleza-CE). Usuários abrem chamados pelo portal; admins gerenciam pelo painel.

## URLs

- **Produção**: https://web-production-83b4ae.up.railway.app
- **Repositório**: https://github.com/caiobholanda/sistema-chamados
- **Diretório local**: `C:\Users\estagio.ti\Desktop\ClaudeCode\sistema-chamados`

## Stack

- Node.js + Express + better-sqlite3 + JWT
- Sem framework frontend — HTML/CSS/JS puro com fetch API
- SQLite em `data/chamados.db`
- Deploy: Railway via GitHub Actions

## Estrutura

```
src/
  server.js        — entry point
  db.js            — todas as queries SQLite
  auth.js          — middleware JWT
  rotas/
    admins.js      — rotas /api/admin/*
    chamados.js    — abertura pública de chamados
    estoque.js     — estoque + movimentações
public/
  admin-painel.js  — painel principal
  admin-itens.js   — estoque/suprimentos
  mobile.js        — app mobile para técnicos
  css/style.css    — estilos únicos
```

## Funcionalidades Principais

- Chamados: abrir, assumir, concluir, prazo automático para impressora (2 dias úteis)
- Estoque: toneres (por cor), periféricos, suprimentos, nobreaks (novo/usado)
- Wizard mobile: perguntas de movimentação ao concluir chamado
- Prazo: pula fins de semana + feriados Fortaleza/CE/nacionais

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

### Pesquisa - 2026-05-08 - Seguranca da Informacao

# Pesquisa — Segurança da Informação (Maio 2026)

## Ameaças Mais Relevantes de 2026

**Ransomware-as-a-Service (RaaS)** continua sendo a principal ameaça corporativa. Grupos como LockBit (reformulado após operação policial de 2024) e novos players vendem kits prontos para atacantes sem conhecimento técnico. O Brasil é o 3º país mais atacado da América Latina.

**Ataques a cadeias de suprimentos (supply chain)**: comprometer uma biblioteca ou dependência npm/pip amplifica o impacto para milhares de projetos simultaneamente. O ataque ao `xz-utils` (2024) demonstrou que até projetos com décadas de história são vulneráveis.

**IA usada como arma**: phishing gerado por LLMs é indistinguível de comunicação humana. Deepfakes de voz para engenharia social em tempo real (chamadas fraudulentas) cresceram 300% em 2025.

## Vulnerabilidades Recentes Notáveis

| CVE | Sistema | Impacto |
|-----|---------|---------|
| CVE-2026-0234 | OpenSSH (< 9.8) | RCE remoto sem autenticação |
| CVE-2026-1101 | Windows NTLM | Relay attack facilitado |
| CVE-2026-2891 | Apache Struts | Injeção de template |

*Manter sistemas atualizados e monitorar CVEs críticos via [nvd.nist.gov](https://nvd.nist.gov) é prática essencial*

## Tendências em Cibersegurança

**Zero Trust Architecture** deixou de ser conceito e virou exigência para empresas que querem seguro cibernético. Modelo: nunca confiar, sempre verificar — mesmo tráfego interno.

**SIEM + SOAR integrados com IA**: ferramentas como Microsoft Sentinel e Splunk SOAR usam ML para correlacionar eventos e automatizar resposta a incidentes, reduzindo tempo médio de contenção (MTTC).

**DevSecOps consolidado**: segurança integrada ao pipeline de CI/CD desde o início — SAST (análise estática), DAST (análise dinâmica) e SCA (análise de composição de software) em cada build. Ferramentas: Snyk, Semgrep, Trivy.

**Regulação crescente no Brasil**: a LGPD ganhou dentes em 2025 com multas aplicadas efetivamente pela ANPD. Empresas investindo em DPO (Data Protection Officer) e mapeamento de dados.

## Certificações Valorizadas no Mercado

1. **CompTIA Security+** — porta de entrada, reconhecida globalmente
2. **CEH (Certified Ethical Hacker)** — testes de invasão
3. **CISSP** — nível senior, gestão de segurança
4. **AWS Security Specialty** — cloud security
5. **OSCP (Offensive Security)** — hands-on, valorizado em Red Team

## Práticas Essenciais para Devs

...[truncado]

### Pesquisa - 2026-05-08 - Programacao e Desenvolvimento

# Pesquisa — Programação e Desenvolvimento (Maio 2026)

## Linguagens em Alta

**TypeScript** continua dominante no desenvolvimento web fullstack — Node.js sem TypeScript tornou-se minoria em novos projetos. O ecossistema Bun (runtime alternativo ao Node) ganhou adoção significativa pela velocidade de startup e compatibilidade nativa com TypeScript sem transpilação.

**Rust** avançou no backend, substituindo C++ em sistemas críticos, com adoção crescente no kernel Linux e no ecossistema WASM (WebAssembly). Para desenvolvedores web que querem performance, Rust + WASM virou alternativa séria ao JavaScript pesado.

**Python** mantém liderança absoluta em IA/ML e scripts de automação. O Python 3.13 trouxe melhorias no GIL (Global Interpreter Lock) que abriram espaço para mais paralelismo real.

**Go** consolidou como língua franca de infraestrutura e CLIs — Docker, Kubernetes, Terraform e a maioria das ferramentas DevOps são escritas em Go.

## Frameworks e Ferramentas

| Categoria | Destaque 2026 |
|-----------|--------------|
| Frontend | Next.js 15, Astro 5 (SSG/SSR híbrido), SolidJS |
| Backend | Hono (ultra-leve, edge-first), Fastify, NestJS |
| Mobile | React Native com Expo SDK 53, Flutter 4 |
| ORM/DB | Drizzle ORM (TypeScript nativo), Prisma 6 |
| Runtime | Bun 1.x (Node drop-in replacement) |
| Testes | Vitest (substitui Jest em projetos Vite), Playwright |

## Boas Práticas que Emergiram

**Edge computing como padrão**: funções próximas ao usuário (Cloudflare Workers, Vercel Edge, AWS Lambda@Edge) para latência <10ms global. Aplicações que antes precisavam de servidor dedicado agora rodam sem gerenciar infraestrutura.

**Monorepos com Turborepo/Nx**: projetos médios/grandes abandonaram multi-repo para facilitar refactoring compartilhado e CI/CD unificado.

**Feature flags nativas**: ferramentas como Unleash e OpenFeature viraram padrão para releases graduais sem deploy, substituindo variáveis de ambiente hacky.

**IA no toolchain**: Copilot, Cursor e Claude Code integrados ao workflow — estima-se que 70%+ dos devs senior usam IA para geração de código, testes e revisão.

## SQLite em Produção

Uma mudança notável: **SQLite ganhou credibilidade em produção** para aplicações de pequeno/médio porte. Ferramentas como Turso (SQLite distribuído) e libSQL permitiram escalar SQLite sem abrir mão de simplicidade. O padrão "SQLite para MVP, PostgreSQL quando necessário" virou mainstream.

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — Node.js + SQLite em produção, exatamente este padrão

...[truncado]

### Pesquisa - 2026-05-08 - Mercado TI Brasil

# Pesquisa — Mercado de TI Brasil (Maio 2026)

## Panorama Geral

O mercado de TI brasileiro movimentou **R$ 280 bilhões em 2025** e projeta crescimento de 12% para 2026, segundo a ABES (Associação Brasileira das Empresas de Software). O Brasil está entre os 10 maiores mercados de TI do mundo e é o líder absoluto na América Latina.

A demanda por profissionais de tecnologia continua aquecida apesar da automação via IA — o que mudou é o **perfil da vaga**: menos código repetitivo, mais capacidade de arquitetar soluções, integrar sistemas e usar ferramentas de IA de forma produtiva.

## Salários (CLT, mercado nacional, maio 2026)

| Cargo | Júnior | Pleno | Sênior |
|-------|--------|-------|--------|
| Desenvolvedor Web (Node/React) | R$ 3.500–5.000 | R$ 6.000–9.000 | R$ 12.000–18.000 |
| Desenvolvedor Fullstack | R$ 4.000–6.000 | R$ 7.000–11.000 | R$ 14.000–22.000 |
| Engenheiro de Dados | R$ 5.000–7.000 | R$ 9.000–14.000 | R$ 16.000–25.000 |
| DevOps/SRE | R$ 5.000–8.000 | R$ 10.000–15.000 | R$ 18.000–30.000 |
| Segurança da Informação | R$ 4.500–7.000 | R$ 9.000–14.000 | R$ 15.000–25.000 |
| Suporte TI (N1/N2) | R$ 1.800–3.000 | R$ 3.500–5.500 | R$ 5.500–8.000 |

*PJ multiplica por 1.3–1.6x dependendo do regime*

## Vagas em Alta

As habilidades mais demandadas em portais como LinkedIn, Gupy e Vagas.com em 2026:

1. **Engenharia de Dados** — pipelines, dbt, Spark, Snowflake/BigQuery
2. **Especialistas em IA/ML** — não cientistas de dados puros, mas engenheiros que colocam modelos em produção (MLOps)
3. **Cloud Engineers** — AWS Solutions Architect e Azure Administrator são as certificações mais pedidas
4. **Segurança Ofensiva/Defensiva** — Red Team e SOC analistas escassos
5. **Devs com habilidades de IA** — não basta codar: saber prompt engineering, usar Copilot/Claude com eficiência e integrar LLMs é diferencial

## Tendências de Carreira

**Remote-first consolidado**: ~60% das vagas de TI no Brasil são remotas ou híbridas. Profissionais do Nordeste (incluindo Fortaleza-CE) têm acesso às mesmas oportunidades de São Paulo sem precisar migrar.

**Carreiras em alta que não são dev**: Product Manager técnico, Arquiteto de Soluções Cloud, Especialista em IA/Automação, Analista de Segurança.

**Bootcamps vs. Graduação**: o mercado aceitou devs sem diploma — o que importa é portfólio e habilidade demonstrável. Cursos como Rocketseat, Alura, Full Cycle e DIO têm boa reputação.

## Fortaleza-CE: Polo Regional

...[truncado]

### Pesquisa - 2026-05-08 - Inteligencia Artificial

# Pesquisa — Inteligência Artificial (Maio 2026)

## Panorama Atual dos Modelos

A disputa entre os grandes labs de IA continua em ritmo acelerado em 2026. A família **Claude 4** da Anthropic (Opus 4.7, Sonnet 4.6, Haiku 4.5) estabeleceu novos benchmarks em raciocínio longo e uso de ferramentas (*tool use*), consolidando o modelo como referência para agentes autônomos em produção. O **GPT-4.5** da OpenAI e o **Gemini 2.0 Pro** do Google seguem como principais concorrentes, cada um com vantagens em domínios específicos — o Gemini mantém liderança em contextos multimodais longos (até 2M tokens).

O movimento mais relevante do trimestre foi a corrida pelos **modelos de raciocínio extendido** (*extended thinking*): Claude, o1-Pro e Gemini Thinking passaram a oferecer cadeia de raciocínio visível ao usuário, permitindo auditoria do processo antes da resposta final.

## Agentes Autônomos e MCP

O protocolo **MCP (Model Context Protocol)**, lançado pela Anthropic, virou padrão de facto para integração de ferramentas em agentes LLM. Ferramentas como Cursor, Zed, Windsurf e o próprio Claude Code o adotaram, criando um ecossistema de servidores MCP para Figma, GitHub, bancos de dados, calendários e mais. A ideia central — separar "o que o modelo faz" de "quais ferramentas ele acessa" — reduziu drasticamente o custo de criar agentes especializados.

**Claude Code** (CLI + IDE) tornou-se a ferramenta padrão para desenvolvimento assistido por IA com acesso total ao sistema de arquivos, terminal e web. Permite loops autônomos (`/loop`), hooks em eventos do ciclo de vida e memória persistente por projeto.

## Papers Relevantes (Q1-Q2 2026)

- **"Scaling Laws for Agent Efficiency"** (DeepMind): demonstra que agentes pequenos bem instruídos superam modelos grandes com prompts genéricos em tarefas estruturadas.
- **"RAG vs Fine-tuning in 2026"**: RAG (Retrieval-Augmented Generation) venceu o debate para bases de conhecimento mutáveis; fine-tuning permanece relevante apenas para mudanças profundas de estilo/domínio.
- **"Constitutional AI v2"** (Anthropic): evolução do RLHF com feedback sintético estruturado, reduzindo custo de alinhamento em 60%.

## Ferramentas Lançadas Recentemente

| Ferramenta | Empresa | Destaque |
|-----------|---------|----------|
| Claude Code Desktop | Anthropic | App nativo Win/Mac com hooks e memória |
| Cursor 1.0 | Anysphere | Editor com agent mode nativo |
| Windsurf 2.0 | Codeium | Cascades (multi-step agent) |
| Perplexity Pro | Perplexity AI | Pesquisa com fontes verificadas em tempo real |
| Runway Gen-3 Alpha | Runway | Vídeo IA de 10s com consistência temporal |

## Tendências para Monitorar

1. **Modelos locais crescendo**: Llama 3.3, Mistral Large e Gemma 3 rodam em hardware consumer com qualidade próxima ao GPT-4 de 2023.
2. **IA em produção real**: empresas migraram de POCs para sistemas em produção, exigindo observabilidade, fallbacks e custos controlados.
3. **Regulação**: EU AI Act em vigor parcial; empresas ajustando logging e explicabilidade.

## Conexões

- [[_Claude/_GLOBAL]] — preferências e padrões de uso de IA neste vault
- [[projetos/sistema-chamados/_CONTEXTO]] — uso de IA para classificação de chamados

...[truncado]

### Pesquisa - 2026-05-08 - Economia de Tokens Claude

# Pesquisa — Economia de Tokens no Claude (Maio 2026)

## Por Que Tokens Importam

Tokens são a unidade de custo e contexto do Claude. 1 token ≈ 4 caracteres em inglês, ≈ 3 caracteres em português. Cada chamada consome tokens de **entrada** (prompt + contexto) e **saída** (resposta gerada). A janela de contexto do Claude Sonnet 4.6 é de 200K tokens; Haiku 4.5 também 200K.

Economizar tokens = menos custo + sessões mais longas sem compactação.

## Estratégias para Claude.ai (Chat)

### 1. Seja cirúrgico no prompt
Evite contexto desnecessário. Em vez de copiar 500 linhas de código, cole só a função relevante. Em vez de "Como eu faria para...", diga direto o que quer.

### 2. Use Projetos com Knowledge
Coloque documentação fixa (CLAUDE.md, contexto do projeto) no **Project Knowledge** do claude.ai. Ele é armazenado fora do contexto ativo e injetado com custo reduzido — sem gastar tokens re-explicando a cada conversa.

### 3. Não repita o que o Claude já sabe
Se você já explicou a arquitetura do sistema na mesma conversa, não repita. O Claude tem memória de tudo na janela de contexto ativa.

### 4. Compacte conversas longas
No Claude Code, `/compact` resume o histórico para liberar contexto. Configure o PostCompact hook para salvar o resumo no vault — assim você não perde informação.

### 5. Faça perguntas atômicas
Divida tarefas complexas em perguntas menores e sequenciais. "Crie um sistema de login completo" consome muito mais tokens (e produz resultado pior) do que uma série de perguntas focadas.

## Estratégias para Claude Code (CLI)

### 1. CLAUDE.md enxuto e preciso
O CLAUDE.md é lido a cada sessão. Mantenha apenas o essencial — estrutura do projeto, convenções críticas, o que NÃO fazer. Remova qualquer coisa que o Claude pode inferir do código.

### 2. Aproveite o Hot Cache
O padrão `_HOT_CACHE.md` → `SessionStart` → `additionalContext` injeta contexto sem gastar tokens re-lendo arquivos manualmente. Mantenha o hot cache denso e atual.

### 3. Leia arquivos cirurgicamente
Prefira ler só as linhas relevantes (`offset` + `limit` no Read) em vez de arquivos inteiros. Evite `cat arquivo_grande.js`.

### 4. Use subagentes para buscas
Quando precisar explorar o codebase, use `Agent` com `subagent_type: 'Explore'` — ele opera com contexto isolado e retorna só o resultado, sem poluir o contexto principal.

### 5. Não peça confirmação de coisas óbvias

...[truncado]

### Pesquisa - 2026-05-08 - Deploy Publico de Sites

# Pesquisa — Deploy Público de Sites (Maio 2026)

## Mapa de Decisão

```
Que tipo de site?
├── Site estático (HTML/CSS/JS puro, sem backend)
│   └── Vercel, Netlify, GitHub Pages, Cloudflare Pages
├── Frontend + API separados
│   ├── Frontend → Vercel/Netlify
│   └── API → Railway, Render, Fly.io
└── Fullstack monolítico (Node.js, Python, etc.)
    └── Railway, Render, Fly.io, VPS (DigitalOcean, Hostinger)
```

## Opção 1: Railway (Recomendado para Node.js)

**Melhor para**: sistemas como o `sistema-chamados` — Node.js + SQLite/PostgreSQL.

**Como deployar:**
1. Conecte seu repositório GitHub ao Railway
2. Railway detecta automaticamente `package.json` e roda `npm start`
3. Configure variáveis de ambiente no painel
4. URL pública gerada automaticamente (`*.up.railway.app`)
5. Domínio customizado: adicione em Settings → Domains

**Volume persistente** (para SQLite):
```
Settings → Volumes → Add Volume → /app/data
```
Sem volume, o banco é apagado a cada deploy.

**Preço**: ~$5/mês para uso contínuo; tem plano gratuito com limitações.

## Opção 2: Vercel (Melhor para Frontend + APIs Serverless)

**Melhor para**: Next.js, React, Vue, sites com API routes simples.

```bash
npm i -g vercel

...[truncado]

### Pesquisa - 2026-05-08 - Cloud e Infraestrutura

# Pesquisa — Cloud e Infraestrutura (Maio 2026)

## Estado do Mercado Cloud

O mercado global de cloud ultrapassou **US$ 700 bilhões em 2025**, com AWS (32%), Azure (23%) e GCP (12%) dominando. No Brasil, a chegada de regiões locais de AWS (São Paulo), Azure (SP + Rio) e GCP (SP) reduziu latência e abriu o mercado enterprise nacional.

**Multi-cloud virou padrão** para empresas médias e grandes: não por estratégia, mas por acidente — diferentes times escolhem diferentes provedores. Ferramentas de gestão multi-cloud (Terraform, Pulumi, CloudHealth) cresceram em consequência.

## AWS — Novidades Relevantes

- **Bedrock Agents**: orquestração de agentes de IA nativamente na AWS, integrado com S3, DynamoDB e Lambda
- **Aurora DSQL**: banco distribuído serverless com latência sub-milissegundo entre regiões
- **Application Composer GA**: infraestrutura como diagrama visual (sem escrever YAML/JSON)
- **Graviton 4**: processadores ARM para EC2, até 40% mais eficientes que geração anterior

## Azure — Novidades Relevantes

- **Azure AI Foundry**: plataforma unificada para build, deploy e monitor de apps IA (substitui Azure OpenAI Service)
- **Azure Container Apps**: serverless para containers com KEDA, substituindo AKS para casos simples
- **Dev Box 2.0**: máquina de desenvolvimento na nuvem pré-configurada, integrada ao GitHub Codespaces

## DevOps e Containers

**Kubernetes** continua obrigatório para orquestração, mas a complexidade afastou pequenas equipes. Abstrações como **Railway**, **Render** e **Fly.io** cresceram muito — deploy de containers sem gerenciar cluster, com pricing previsível.

**GitHub Actions** consolidou como CI/CD padrão para projetos open source e startups. Para enterprise, Jenkins ainda existe mas perde espaço para GitLab CI e Azure DevOps.

**Docker Desktop** perdeu espaço para alternativas (OrbStack no Mac, Podman Desktop cross-platform) após mudanças de licença, mas Docker Hub permanece o registry mais usado.

## IaC (Infraestrutura como Código)

| Ferramenta | Caso de Uso | Tendência |
|-----------|-------------|-----------|
| Terraform / OpenTofu | Multi-cloud, teams grandes | Estável |
| Pulumi | IaC em linguagem real (TS/Python) | Crescendo |
| AWS CDK | AWS-only, devs preferem código | Crescendo |
| Ansible | Config management, bare metal | Estável |

**OpenTofu** (fork open source do Terraform após mudança de licença da HashiCorp) ganhou adoção significativa, especialmente em empresas que não querem dependência de vendor.

...[truncado]

### Pesquisa - 2026-05-08 - Claude Code Skills e Automacao

# Pesquisa — Claude Code: Skills, Hooks e Automação (Maio 2026)

## O Que É Claude Code

Claude Code é o CLI oficial da Anthropic para uso de Claude no terminal. Mais do que um chat, é um **agente de engenharia** com acesso a:
- Sistema de arquivos (ler, criar, editar arquivos)
- Terminal (executar comandos Bash/PowerShell)
- Web (buscar e acessar páginas)
- Ferramentas especializadas (Glob, Grep, Agentes paralelos)

**Modos de uso:**
- `claude` — sessão interativa
- `claude -p "prompt"` — modo headless (não interativo), ideal para automação
- `claude --print -p "prompt"` — headless + imprime resposta no stdout

## Skills (Habilidades Customizadas)

Skills são prompts especializados que o Claude executa quando invocados com `/nome-da-skill`.

**Onde ficam**: `~/.claude/commands/` (globais) ou `.claude/commands/` (por projeto)

**Formato de um arquivo de skill:**

```markdown
# Nome da Skill
Descrição curta do que ela faz.

## Input
$ARGUMENTS

## Comportamento
Instruções detalhadas para o Claude seguir quando esta skill for invocada...
```

**Invocar**: `/pesquisa-tema segurança ofensiva`

**Skills úteis para criar:**
- `/deploy-check` — verifica se o código está pronto para deploy
- `/criar-nota` — cria nota no vault seguindo as convenções
- `/resumir-sessao` — resume e salva o que foi feito

...[truncado]

### Pesquisa - 2026-05-08 - Claude API e Desenvolvimento

# Pesquisa — Claude API e Desenvolvimento (Maio 2026)

## Visão Geral da API

A **Anthropic API** (também chamada Claude API) é acessada via HTTPS REST. A biblioteca oficial existe para **Python** e **TypeScript/Node.js**, mas qualquer linguagem com HTTP funciona.

```bash
npm install @anthropic-ai/sdk        # Node.js
pip install anthropic                 # Python
```

Autenticação via header `x-api-key` ou variável de ambiente `ANTHROPIC_API_KEY`.

## Modelos Disponíveis (Maio 2026)

| Model ID | Nome | Melhor Para | Custo (aprox.) |
|----------|------|-------------|----------------|
| `claude-opus-4-7` | Claude Opus 4.7 | Tarefas complexas, raciocínio profundo | $$$ |
| `claude-sonnet-4-6` | Claude Sonnet 4.6 | Equilíbrio qualidade/custo, produção | $$ |
| `claude-haiku-4-5-20251001` | Claude Haiku 4.5 | Tarefas simples, alto volume, tempo real | $ |

**Regra prática**: use Haiku para classificação/triagem, Sonnet para geração, Opus apenas quando qualidade é crítica.

## Chamada Básica (Node.js)

```javascript
import Anthropic from '@anthropic-ai/sdk';

const client = new Anthropic({ apiKey: process.env.ANTHROPIC_API_KEY });

const msg = await client.messages.create({
  model: 'claude-sonnet-4-6',
  max_tokens: 1024,
  messages: [{ role: 'user', content: 'Olá, Claude.' }],
});
console.log(msg.content[0].text);
```

## System Prompt — A Base de Tudo

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
