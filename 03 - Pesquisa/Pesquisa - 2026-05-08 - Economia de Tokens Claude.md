---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, ia, claude, tokens]
pergunta-central: "Como economizar tokens no Claude, Claude Code e Claude API?"
relacionado-a: []
---

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
"Quer que eu salve o arquivo?" é desperdício. Configure permissões de auto-aprovação (`defaultMode: "acceptEdits"`) para operações seguras.

## Estratégias para Claude API

### 1. Prompt Caching (Maior Impacto)

Marque blocos de contexto longos e repetidos como cacheáveis. Economia de ~90% nos tokens de entrada em chamadas repetidas:

```javascript
const msg = await client.messages.create({
  model: 'claude-sonnet-4-6',
  max_tokens: 512,
  system: [
    {
      type: 'text',
      text: 'Você é assistente de TI. Regras: [... 2000 tokens de contexto ...]',
      cache_control: { type: 'ephemeral' }  // Cache por 5 minutos
    }
  ],
  messages: [{ role: 'user', content: pergunta }],
});
```

**Pré-requisito**: o bloco cacheado deve ter pelo menos 1024 tokens (Sonnet/Opus) ou 2048 (Haiku).

### 2. Escolha o Modelo Certo

| Tarefa | Modelo Ideal | Motivo |
|--------|-------------|--------|
| Classificação de texto | Haiku | Rápido, barato, suficiente |
| Geração de código simples | Haiku ou Sonnet | Haiku para boilerplate |
| Análise complexa / debugging | Sonnet | Equilíbrio |
| Arquitetura / decisões críticas | Opus | Vale o custo |

### 3. `max_tokens` Ajustado

Defina `max_tokens` apenas o necessário. Se a resposta esperada é sempre < 200 tokens, não coloque 4096. Tokens alocados mas não usados não são cobrados, mas uma estimativa errada aumenta latência.

### 4. Batches API para Alto Volume

Para processar muitos itens de uma vez (ex.: classificar 500 chamados históricos), use a **Batches API**:
- 50% de desconto no preço
- Processamento assíncrono (resultados em horas)
- Ideal para tarefas que não precisam de resposta em tempo real

### 5. Minimize o Output

Claude cobra por token de saída também (geralmente mais caro que entrada). Instrua o modelo a ser conciso:
- "Responda em JSON apenas, sem explicações"
- "Use no máximo 3 frases"
- "Dê apenas o código, sem comentários"

## Monitoramento de Custo

Sempre logar uso de tokens em produção:

```javascript
console.log({
  input: msg.usage.input_tokens,
  output: msg.usage.output_tokens,
  cache_creation: msg.usage.cache_creation_input_tokens,
  cache_read: msg.usage.cache_read_input_tokens,
});
```

Configure alertas no console da Anthropic (console.anthropic.com) para limites de gasto mensais.

## Referência Rápida de Preços (Maio 2026, por 1M tokens)

| Modelo | Input | Output | Cache Read |
|--------|-------|--------|------------|
| Opus 4.7 | $15 | $75 | $1.50 |
| Sonnet 4.6 | $3 | $15 | $0.30 |
| Haiku 4.5 | $0.80 | $4 | $0.08 |

## Conexões

- [[Pesquisa - 2026-05-08 - Claude API e Desenvolvimento]] — detalhes técnicos da API
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]] — uso eficiente do Claude Code
- [[projetos/sistema-chamados/_CONTEXTO]] — uso atual da API no sistema

## Fontes

- https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching
- https://docs.anthropic.com/en/api/messages-batches
- https://console.anthropic.com/settings/cost
- https://docs.anthropic.com/en/docs/about-claude/models
