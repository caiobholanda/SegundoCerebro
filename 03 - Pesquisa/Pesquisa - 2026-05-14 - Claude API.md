---
tipo: pesquisa
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [pesquisa, ia, claude, api, agente]
pergunta-central: "Quais são os detalhes técnicos e de preço das lacunas abertas da pesquisa de 13/05 — Claude Platform on AWS (CCU), memória dos Managed Agents (limites, TTL), Dreaming (GA timeline), ant CLI no Windows, filesystem compartilhado na Multi-Agent Orchestration, e novos endpoints pós-13/05?"
relacionado-a: [Pesquisa - 2026-05-13 - Claude API, Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]
---

# Pesquisa — Claude API (14/05/2026)

## Pergunta central

Quais são os detalhes técnicos e de preço das lacunas abertas da pesquisa de 13/05: modelo de cobrança CCU do Claude Platform on AWS, limites e TTL da memória dos Managed Agents, timeline de GA do Dreaming, instalação do ant CLI no Windows, funcionamento técnico do filesystem compartilhado na Multi-Agent Orchestration, e novos endpoints adicionados à API após 13/05?

## Sintese

O Claude Platform on AWS usa uma camada de conversão CCU ($0,01/CCU = $1/100 CCUs) sobre os preços padrão por token — sem markup adicional, mas sem suporte a Fast Mode ou Batch. A memória dos Managed Agents impõe limite de 100 kB por arquivo individual, máximo de 8 stores por sessão e TTL de 30 dias para versões históricas, sem limite documentado de total de stores ou tamanho do workspace. O Dreaming permanece em research preview sem data de GA anunciada. O ant CLI não tem suporte nativo para Windows — apenas via Go install ou WSL. O filesystem compartilhado em Multi-Agent Orchestration funciona literalmente como um container único onde todos os agentes do mesmo grupo têm acesso ao mesmo diretório de trabalho. O único endpoint novo após 13/05 confirmado foi o suporte a Fast Mode para Opus 4.7 (12/05/2026).

## Detalhes

### 1. Claude Platform on AWS — Precificação CCU

- **Unidade de faturamento**: Claude Consumption Unit (CCU), exclusiva para AWS Marketplace
- **Conversão**: 1 CCU = $0,01 USD; 100 CCU = $1,00 USD
- Tokens são tarifados em USD pelas taxas padrão por modelo (mesma tabela da API direta), depois convertidos para CCUs
- Descontos negociados (private offers) reduzem CCUs cobrados — não alteram o preço do CCU em si
- **Faturamento**: medição horária ao AWS Marketplace, fatura mensal, somente pós-pago
- `inference_geo: "us"` aplica multiplicador 1.1x (igual à API direta)
- **Não disponível** no Platform on AWS: Fast mode, Batch API discount
- **Visibilidade de custos**: Claude Console (acessado via AWS Console) + AWS Cost Explorer (linha CCU agregada)
- Resumo: **preço igual à API direta convertido para CCU** — a diferença está em billing unificado com AWS, IAM auth, e ausência de Fast Mode

### 2. Managed Agents Memory — Limites e Persistência

- **Tamanho máximo por arquivo (memória individual)**: 100 kB ≈ 25k tokens
- **Máximo de stores por sessão**: 8 simultâneos
- **TTL de memory versions**: 30 dias (versões recentes preservadas mesmo além de 30 dias se a memória muda raramente)
- **Limite total de stores ou tamanho do workspace**: não documentado na beta pública
- **Persistência**: stores são workspace-scoped — sobrevivem entre sessões indefinidamente até arquivamento/exclusão manual
- Stores montados em `/mnt/memory/` no container da sessão
- Cada escrita cria uma `memory version` imutável (`memver_...`) — audit trail completo
- `access`: `read_write` (padrão) ou `read_only` (enforcement a nível de filesystem)
- Múltiplas sessões podem compartilhar o mesmo store com diferentes níveis de acesso
- Stores não podem ser adicionados/removidos de sessões em andamento
- `instructions` por store attachment: máx. 4.096 caracteres (passado ao agente no system prompt)
- Arquivamento de store é irreversível (one-way); `delete` remove store + todas as versões

### 3. Dreaming — Timeline de GA

- Lançado em 07/05/2026 como **research preview** (acesso restrito, necessário solicitar)
- Demais features de Managed Agents (Memory, Multiagent, Outcomes) estão em public beta
- **Nenhuma data de GA anunciada** — sem previsão pública de quando sai do research preview
- Função: processo agendado que revisa sessões e memory stores, extrai padrões, consolida memórias
- Identifica: erros recorrentes, workflows convergentes, preferências compartilhadas entre equipe
- Reestrutura memória para manter alto sinal à medida que cresce

### 4. ant CLI — Instalação no Windows

- **Não há suporte nativo para Windows** (sem Chocolatey, Scoop, ou binário .exe pré-compilado na documentação)
- **Opção 1 — Go install** (requer Go 1.22+ instalado no Windows):
  ```
  go install 'github.com/anthropics/anthropic-cli/cmd/ant@latest'
  ```
  Binário ficará em `%GOPATH%\bin` ou `%USERPROFILE%\go\bin`
- **Opção 2 — WSL** (Windows Subsystem for Linux) + Homebrew dentro do WSL:
  ```
  brew install anthropics/tap/ant
  ```
- **Não disponível via npm ou pip** — ferramenta é compilada em Go
- Homebrew funciona apenas em macOS/Linux nativos

### 5. Filesystem Compartilhado — Multi-Agent Orchestration

- Todos os agentes de uma sessão multiagente compartilham **o mesmo container e filesystem** (não é uma montagem de rede ou volume compartilhado separado)
- Cada agente tem sua própria **session thread** (context e histórico de conversa isolados)
- O filesystem do container é o espaço de trabalho comum — agentes especialistas trabalham nele em paralelo
- Memory stores também são montados no container (`/mnt/memory/`) e são acessíveis a todos os agentes que os tiverem attachados
- **File locking** disponível no Agent Teams (Claude Code) para evitar conflitos de escrita concorrente
- Eventos são persistentes: o agente líder pode verificar progresso mid-workflow
- Rastreabilidade completa no Claude Console: qual agente fez o quê, em que ordem e por quê

### 6. Novos Endpoints/Recursos após 13/05/2026

Conforme os release notes oficiais (`platform.claude.com/docs/en/release-notes/api`):

- **12/05/2026**: Fast mode (research preview) agora suporta **Claude Opus 4.7** (`speed: "fast"` + `model: "claude-opus-4-7"` + header `fast-mode-2026-02-01`). Pricing, rate limits e acesso iguais ao Opus 4.6 fast mode.
- **11/05/2026**: Lançamento do **Claude Platform on AWS** (GA) — já coberto em 13/05 como anúncio
- Nenhum endpoint de API radicalmente novo além do Fast Mode para Opus 4.7 foi adicionado após 13/05

#### Para referência: recursos recentes relevantes ainda ativos (adicionados antes de 13/05 mas ainda novos)
- `managed-agents-2026-04-01`: header para toda a API de Managed Agents (sessões, memory stores, multiagent, outcomes, webhooks)
- `advisor-tool-2026-03-01`: advisor tool (GA desde 09/04)
- Rate Limits API: programaticamente consultar rate limits da organização (24/04)
- Webhooks para Managed Agents: eventos de ciclo de vida de sessão e vault (06/05)
- Filtros adicionais para sessões (por status) e eventos (por tipo, por creation time) (06/05)
- Vault credential background refresh para `mcp_oauth` (06/05)

## Conexoes

- [[Pesquisa - 2026-05-13 - Claude API]] — continuação direta, cobre lacunas abertas
- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — contexto base
- [[Referência - Doc - Claude Platform on AWS Pricing 2026]]
- [[Referência - Doc - Claude Managed Agents Memory 2026]]
- [[Referência - Doc - ant CLI Anthropic 2026]]
- [[Referência - Doc - Claude Multi-Agent Orchestration 2026]]
- [[Referência - Doc - Anthropic Release Notes 2026]]
- [[Referência - Doc - Claude Agent SDK Overview]]

## Fontes

- [[Referência - Doc - Claude Platform on AWS Pricing 2026]] — https://platform.claude.com/docs/en/about-claude/pricing
- [[Referência - Doc - Claude Managed Agents Memory 2026]] — https://platform.claude.com/docs/en/managed-agents/memory
- [[Referência - Doc - ant CLI Anthropic 2026]] — https://github.com/anthropics/anthropic-cli
- [[Referência - Doc - Claude Multi-Agent Orchestration 2026]] — https://platform.claude.com/docs/en/managed-agents/multi-agent
- [Anthropic Release Notes API](https://platform.claude.com/docs/en/release-notes/api) — release notes oficiais
- [Claude Platform on AWS GA (AWS)](https://aws.amazon.com/about-aws/whats-new/2026/05/claude-platform-aws/) — anúncio de GA
- [Claude Managed Agents Dreaming — VentureBeat](https://venturebeat.com/technology/anthropic-introduces-dreaming-a-system-that-lets-ai-agents-learn-from-their-own-mistakes)
- [Dreams — Claude API Docs](https://platform.claude.com/docs/en/managed-agents/dreams)

## Lacunas

- **Dreaming GA**: sem data anunciada — permanece em research preview com acesso por solicitação
- **ant CLI no Windows**: sem binário oficial nativo; workarounds via Go ou WSL. Não há plano público de release nativo para Windows
- **Limites totais de memory store no workspace** (quantos stores por workspace, tamanho total): não documentados na beta pública — contato com suporte necessário para limites maiores
- **Preços do Dreaming**: não há pricing documentado para a feature de Dreaming em si (pesquisa preview, sem cobrança separada presumida além de tokens + session runtime)
- **Fast mode para modelos além de Opus 4.6/4.7**: waitlist ainda ativa, sem expansão anunciada a Sonnet ou Haiku
