---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, ia, claude, api, compaction, tokens]
fonte: Documentação oficial Anthropic
autor: Anthropic
url: https://platform.claude.com/docs/en/build-with-claude/compaction
---

# Referência — Claude Compaction API: Modelos Suportados (2026)

## Modelos compatíveis com Compaction API

Conforme documentação oficial (plataforma claude.com), a Compaction API suporta:

| Modelo | Suportado |
|--------|-----------|
| Claude Mythos Preview | Sim |
| Claude Opus 4.7 | Sim |
| Claude Opus 4.6 | Sim |
| Claude Sonnet 4.6 | Sim |
| Claude Haiku 4.5 | **Não** |

> Nota importante: a Compaction API **não está limitada ao Opus 4.6** — estende-se ao Opus 4.7 e Sonnet 4.6.

## Parâmetros principais

| Parâmetro | Tipo | Padrão | Descrição |
|-----------|------|--------|-----------|
| `type` | string | obrigatório | Deve ser `"compact_20260112"` |
| `trigger` | object | 150.000 tokens | Limiar para acionar compactação (mínimo 50.000) |
| `pause_after_compaction` | boolean | false | Pausar após gerar o sumário |
| `instructions` | string | null | Prompt customizado de sumarização |

## Uso (beta header obrigatório)

```python
response = client.beta.messages.create(
    betas=["compact-2026-01-12"],
    model="claude-opus-4-7",
    max_tokens=4096,
    messages=[...],
    context_management={
        "edits": [{"type": "compact_20260112"}]
    },
)
```

## Notas de custo

- O custo total inclui tokens consumidos na iteração de compactação
- Somar todos os valores em `usage.iterations` para custo real
- Funciona bem em conjunto com Prompt Caching

## Conexões

- [[Pesquisa - 2026-05-14 - Economia de Tokens]]
- [[Pesquisa - 2026-05-13 - Economia de Tokens]]
- [[Pesquisa - 2026-05-13 - Claude API]]
