---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, ia, claude, api]
pergunta-central: "Como usar a API do Claude de forma profissional e eficiente?"
relacionado-a: []
---

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

O `system` prompt define o comportamento do modelo para toda a conversa. É onde vai:
- Persona e tom
- Restrições (o que não fazer)
- Formato de saída esperado
- Contexto fixo (ex.: dados da empresa)

```javascript
const msg = await client.messages.create({
  model: 'claude-sonnet-4-6',
  max_tokens: 512,
  system: 'Você é um assistente de suporte TI. Responda sempre em português. Seja conciso.',
  messages: [{ role: 'user', content: pergunta }],
});
```

**Token tip**: system prompts são cacheados automaticamente quando idênticos entre chamadas — use o mesmo system em todas as chamadas da mesma sessão para aproveitar o cache.

## Tool Use (Uso de Ferramentas)

Permite que o Claude chame funções do seu código:

```javascript
const tools = [{
  name: 'buscar_estoque',
  description: 'Busca a quantidade de um item no estoque',
  input_schema: {
    type: 'object',
    properties: {
      item: { type: 'string', description: 'Nome do item' }
    },
    required: ['item']
  }
}];

const msg = await client.messages.create({
  model: 'claude-sonnet-4-6',
  max_tokens: 512,
  tools,
  messages: [{ role: 'user', content: 'Quantos toneres pretos temos?' }],
});

// Se stop_reason === 'tool_use', o Claude quer chamar uma ferramenta
if (msg.stop_reason === 'tool_use') {
  const toolUse = msg.content.find(b => b.type === 'tool_use');
  const resultado = await buscarEstoque(toolUse.input.item);
  // Continuar a conversa com o resultado...
}
```

## Streaming

Para UX fluida (resposta aparece enquanto é gerada):

```javascript
const stream = await client.messages.stream({
  model: 'claude-sonnet-4-6',
  max_tokens: 1024,
  messages: [{ role: 'user', content: prompt }],
});

for await (const event of stream) {
  if (event.type === 'content_block_delta') {
    process.stdout.write(event.delta.text);
  }
}
```

## Structured Output (JSON)

Forçar saída JSON confiável:

```javascript
const msg = await client.messages.create({
  model: 'claude-haiku-4-5-20251001',
  max_tokens: 256,
  system: 'Responda SEMPRE em JSON válido. Sem texto fora do JSON.',
  messages: [{
    role: 'user',
    content: `Classifique este chamado de TI: "${descricao}". Retorne: {"categoria": string, "prioridade": "baixa"|"media"|"alta"}`
  }],
});
const resultado = JSON.parse(msg.content[0].text);
```

## Boas Práticas de Produção

1. **Rate limits**: Claude tem limites por minuto (tokens e requests). Implemente retry com backoff exponencial.
2. **Timeout**: defina timeout explícito nas chamadas (30-60s para geração longa).
3. **Fallback**: se Claude falhar, tenha lógica alternativa (regras fixas, fila para retry).
4. **Logs**: sempre logar `input_tokens` e `output_tokens` por chamada para monitorar custo.
5. **Cache de system prompt**: garante que o mesmo system prompt seja reutilizado.

## SDK Features Avançadas

- **Batches API**: processa até 10.000 requests em modo batch com 50% de desconto no preço.
- **Files API**: faz upload de documentos (PDF, CSV) para processar com o modelo.
- **Prompt caching**: ancore partes longas do prompt com `cache_control: { type: 'ephemeral' }` para pagar menos em chamadas repetidas.

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — usa Claude API para classificação automática de chamados
- [[Pesquisa - 2026-05-08 - Economia de Tokens Claude]] — economia de tokens na API
- [[Pesquisa - 2026-05-08 - Claude Code Skills e Automacao]] — Claude Code como ferramenta

## Fontes

- https://docs.anthropic.com/en/api
- https://docs.anthropic.com/en/docs/build-with-claude/tool-use
- https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching
- https://github.com/anthropics/anthropic-sdk-node
