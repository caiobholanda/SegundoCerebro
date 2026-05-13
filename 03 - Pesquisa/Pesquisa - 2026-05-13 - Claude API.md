---
tipo: pesquisa
status: ativo
criado: 2026-05-13
atualizado: 2026-05-13
tags: [pesquisa, ia, claude, api, agente]
pergunta-central: "Quais são as novidades da Claude API em maio 2026 e o que muda na prática para desenvolvedores?"
relacionado-a: [Pesquisa - 2026-05-08 - Claude API e Desenvolvimento, Pesquisa - 2026-05-08 - Economia de Tokens Claude]
---

# Pesquisa — Claude API (13/05/2026)

## ❓ Pergunta central
Quais são as novidades da Claude API em maio 2026 e o que muda na prática para desenvolvedores?

## 🎯 Síntese (3-5 linhas)
A semana de 13/05/2026 trouxe expansões significativas à API Claude: lançamento do Opus 4.7 (87,6% no SWE-Bench), dobramento dos rate limits para planos pagos, e o Claude Platform on AWS que leva a API para infraestrutura gerenciada com billing AWS. O Agent SDK (ex-Claude Code SDK) se consolida como plataforma para agentes autônomos com suporte a MCP. Managed Agents ganhou Memory em public beta e Multi-Agent Orchestration, onde um agente líder delega a sub-agentes paralelos. Extended Thinking ganhou campo `display: "omitted"` para streaming mais rápido.

## 🔬 Detalhes

### Novos modelos
- **Claude Opus 4.7**: lançado com 87,6% no SWE-Bench Verified (+13 pontos vs Opus 4.6), imagem 3× mais resolução, mesmo preço ($5/$25 por MTok). Melhor modelo para raciocínio profundo e coding agentic.
- Stack atual: Opus 4.7 → Sonnet 4.6 → Haiku 4.5

### Claude Platform on AWS
- API Claude acessível via infraestrutura Anthropic gerenciada na AWS
- Autenticação via IAM nativo, billing via AWS
- Inclui: Messages API, Files API, Message Batches API, Managed Agents, Agent Skills, code execution, tool use
- Novos modelos disponíveis assim que lançam

### Rate Limits expandidos
- Pro/Max/Team/Enterprise: limites dobrados
- Picos de hora removidos para Pro e Max
- Limites Opus API elevados (nova capacidade de compute da SpaceX)

### Extended Output — Message Batches API
- `max_tokens` elevado para **300.000** no Message Batches API
- Requer beta header: `output-300k-2026-03-24`
- Casos de uso: long-form content, structured data, geração de código extenso

### Claude Agent SDK (ex-Claude Code SDK)
- Renomeado para refletir uso além de coding
- Agentes autônomos: leem arquivos, executam comandos, buscam na web, editam código
- Integração MCP: bancos de dados, browsers, APIs externas, centenas de sistemas

### Managed Agents — novidades em beta
- **Memory** (public beta): agentes mantêm estado entre sessões
- **Multiagent sessions** (public beta): sessões com múltiplos agentes coordenados
- **Multi-Agent Orchestration**: agente líder delega a sub-agentes especialistas em paralelo num filesystem compartilhado
- **Dreaming** (research preview): agentes revisam sessões passadas e se auto-melhoram

### Extended Thinking — atualização
- Novo campo `thinking.display: "omitted"`: omite blocos de thinking da resposta para streaming mais rápido
- Útil quando você precisa do resultado final, não do raciocínio intermediário

### ant CLI
- Nova ferramenta de linha de comando para a Claude API
- Interação mais rápida com a API diretamente pelo terminal
- Integração nativa com Claude Code
- Versionamento de recursos de API em arquivos YAML

## 🔗 Conexões
- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — base anterior, fundamentos da API
- [[Pesquisa - 2026-05-08 - Economia de Tokens Claude]] — rate limits e pricing impactam estratégia de tokens
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]] — Agent SDK é a evolução do Claude Code SDK
- [[Pesquisa - 2026-05-13 - Deploy e Infraestrutura]] — Claude Platform on AWS conecta com infra

## 📚 Fontes
- [[Referência - Doc - Anthropic Release Notes 2026]]
- [[Referência - Doc - Claude Agent SDK Overview]]

## 🚧 Lacunas
- Preços detalhados do Claude Platform on AWS (diferente do pricing padrão?)
- Limites de memória dos Managed Agents em beta (tamanho, TTL)
- Dreaming: quando sai de research preview para GA?
- ant CLI: disponível para Windows? Instalação via npm/pip?
- Detalhes do filesystem compartilhado na Multi-Agent Orchestration
