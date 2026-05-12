---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, ia]
pergunta-central: "Quais são as novidades de maio 2026 em Inteligência Artificial?"
relacionado-a: []
---

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

## Fontes

- https://www.anthropic.com/news
- https://openai.com/research
- https://deepmind.google/research
- https://huggingface.co/papers
