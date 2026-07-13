---
tipo: pesquisa
status: ativo
criado: 2026-07-13
atualizado: 2026-07-13
tags: [pesquisa, tokens, llm, custo, otimizacao]
pergunta-central: Quais são as técnicas mais eficazes para reduzir consumo e custo de tokens em LLMs em 2026?
relacionado-a: [claude-api, claude-code, dev]
---

# Pesquisa - Economia de Tokens em LLMs — 2026-07-13

## ❓ Pergunta central
Quais são as técnicas mais eficazes para reduzir consumo e custo de tokens em LLMs em 2026?

## 🎯 Síntese
Redução de 40–80% de custo é alcançável sem perda de qualidade. As cinco alavancas principais: prompt caching, modelo em cascata, compressão de contexto, structured output e RAG. Para Claude Code especificamente, CLAUDE.md abaixo de 200 linhas e limpeza de histórico são os maiores ganhos.

## 🔬 Detalhes

### Preços de Referência (Julho 2026)
| Modelo | Input (1M tokens) | Output (1M tokens) |
|--------|-------------------|---------------------|
| Claude Sonnet 5 (intro) | $2 | $10 |
| Claude Sonnet 5 (após 31/08) | $3 | $15 |
| GPT-5 (sol) | ~$2,50 | ~$10 |
| Haiku / Flash | ~10× mais barato | ~10× mais barato |

### 5 Alavancas Principais

**1. Prompt Caching**
- Cacheia partes repetidas do prompt entre chamadas
- Redução de custo de até 90% nos tokens de input em chamadas subsequentes
- Essencial para contextos longos (system prompts grandes, CLAUDE.md)

**2. Modelo em Cascata**
- Usar modelo menor (Haiku/Flash) para triagem e classificação
- Escalar para modelo maior apenas quando necessário
- Economia típica: 60–70% em pipelines de alto volume

**3. Compressão de Contexto (`/compact`)**
- Manter apenas turns recentes do histórico
- Comprimir prompts removendo exemplos redundantes
- No Claude Code: `/compact` ao atingir ~60% do contexto

**4. Structured Output com JSON**
- Respostas estruturadas eliminam verborragia
- Menos tokens de output = custo menor + mais rápido para parsear

**5. RAG (Retrieval-Augmented Generation)**
- Não coloca todo o conhecimento no prompt — busca apenas o relevante
- Ideal para vaults grandes (como este Segundo Cérebro)

### Técnicas Específicas para Claude Code
- **CLAUDE.md ≤ 200 linhas** (~2.000 tokens) — maior ganho isolado
- Limpeza de histórico: 60–80% do consumo vem de leituras desnecessárias e contexto repetido
- `.claudeignore` para excluir arquivos irrelevantes do contexto
- `/clear` ao trocar de tarefa (não `/compact`)
- Skills carregam sob demanda — não adicionar conteúdo direto no CLAUDE.md

### Impacto Real
- Skill de economia de tokens: reduz **70%** do consumo
- Pipeline otimizado: **40–60%** de corte sem sacrificar qualidade
- Potencial teórico com todas as técnicas: **80%** de redução

## 🔗 Conexões
- [[Pesquisa - 2026-07-13 - Claude API e Anthropic SDK]]
- [[Pesquisa - 2026-07-13 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-30 - Economia de Tokens em LLMs]]

## 📚 Fontes
- [O Que São Tokens em IA (2026): Guia Completo - MochaLabz](https://www.mochalabz.com/artigos/o-que-sao-tokens-ia-llm/)
- [Economia de tokens: a skill que corta 70% do gasto com IA](https://chatjuridico.com.br/economia-de-tokens-skill-que-reduz-custo-ia-advocacia/)
- [Como economizar tokens com .cloudignore - Thulio Bittencourt](https://thuliobittencourt.com/economizar-tokens-cloudignore-otimizar-ia-codigo/)
- [Claude sem limite: 9 práticas para economizar tokens - Techify](https://techify.one/blog/claude-sem-limite-9-praticas-para-economizar-tokens)
- [Gerencie custos de forma eficaz - Claude Code Docs](https://code.claude.com/docs/pt/costs)

## 🚧 Lacunas
- Benchmarks de prompt caching com Claude Sonnet 5 (novo)
- Comparativo de custo RAG vs context window longo em 2026
- Técnicas específicas para agentes autônomos multi-turn
