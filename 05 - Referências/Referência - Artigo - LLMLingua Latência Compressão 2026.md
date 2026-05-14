---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, ia, llmlingua, tokens, compressao, latencia]
fonte: arXiv — Prompt Compression in the Wild (2026)
autor: Pesquisadores independentes
url: https://arxiv.org/html/2604.02985v1
---

# Referência — LLMLingua: Latência Real em Produção (2026)

## Medições de latência (dados do paper arXiv 2604.02985)

| Variante | Tokens de entrada | Latência de compressão |
|----------|-------------------|----------------------|
| LLMLingua (original) | 48.000 tokens | ~21 segundos total (13s overhead) |
| LLMLingua-2 | 48.000 tokens | < 3 segundos |
| LLMLingua-2 (inferência) | qualquer | 0,01–0,03 segundos |

> Hardware de referência: GPU high-end. Em GTX 1080 Ti (consumer), latência ~3× maior.

## Taxas de compressão testadas

- 1,5×, 2×, 3× e 5× (maioria dos testes a ~3,7×)
- Prompts de 100 a 50.000 tokens
- Retenção de qualidade: 95–98% com LLMLingua-2

## Adequação para tempo real

**Conclusão do estudo**: compressão overhead supera benefícios quando usando frameworks otimizados (vLLM, APIs comerciais como Anthropic).

Speedups > 1,3× ocorrem apenas com:
1. Frameworks não otimizados (Hugging Face Transformers vanilla)
2. Prompts > 10.000 tokens

## Caso de uso real (produção)

- SaaS de suporte ao cliente: corte de $42.000/mês para $2.100 usando LLMLingua em pipeline RAG
- Compressão 4–10× é o range mais comum em produção

## Quando usar LLMLingua

| Cenário | Recomendação |
|---------|-------------|
| RAG com contextos longos (> 10k tokens) | Sim — LLMLingua-2 |
| Tempo real / chat interativo | Não — latência proibitiva |
| Batch offline / processamento assíncrono | Sim — grande economia |
| APIs comerciais otimizadas (Claude, GPT) | Avaliar com cuidado |

## Conexões

- [[Pesquisa - 2026-05-14 - Economia de Tokens]]
- [[Pesquisa - 2026-05-13 - Economia de Tokens]]
