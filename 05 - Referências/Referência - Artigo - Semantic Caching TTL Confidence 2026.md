---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, ia, semantic-caching, ttl, cache, tokens]
fonte: PyImageSearch — Semantic Caching for LLMs TTLs, Confidence, and Cache Safety
autor: PyImageSearch
url: https://pyimagesearch.com/2026/05/04/semantic-caching-for-llms-ttls-confidence-and-cache-safety/
---

# Referência — Semantic Caching: TTL, Confiança e Segurança (2026)

## O problema com respostas dinâmicas

Semantic caching sem estratégia de invalidação retorna respostas velhas verbatim — crítico para conteúdo sensível ao tempo.

## Solução: TTL + Confidence Score

### TTL (Time-to-Live)

- Validação em nível de aplicação (não confia só no Redis auto-expire)
- Entradas expiradas ficam no cache para debug — são rejeitadas na leitura
- Seleção de TTL baseada na volatilidade do conteúdo:
  - Dados muito dinâmicos: TTL de minutos
  - Dados relativamente estáticos: TTL de dias

### Confidence Score (ponderação)

```
confiança = 0,7 × similaridade_semântica + 0,3 × frescor
```

- Respostas antigas perdem confiança gradualmente mesmo com alta similaridade
- Threshold mínimo de confiança para reuso (ex.: > 0,75)
- Abaixo do threshold: força nova chamada ao LLM

## Camadas de proteção contra cache stale

1. **Poison detection**: rejeita respostas com erros ou conteúdo vazio antes de cachear
2. **Opportunistic cleanup**: remove entradas expiradas durante buscas semânticas
3. **Fail-safe expiration**: trata entradas malformadas como expiradas por padrão

## Regra prática

Use semantic caching apenas para queries que:
- Não dependem de data/hora atual
- Não requerem dados em tempo real (preços, clima, notícias)
- Têm respostas que envelhecem devagar (documentação, FAQ, explicações)

## Conexões

- [[Pesquisa - 2026-05-14 - Economia de Tokens]]
- [[Pesquisa - 2026-05-13 - Economia de Tokens]]
