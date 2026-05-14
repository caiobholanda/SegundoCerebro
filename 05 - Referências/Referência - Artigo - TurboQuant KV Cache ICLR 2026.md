---
tipo: referencia
status: ativo
criado: 2026-05-14
atualizado: 2026-05-14
tags: [ia, quantizacao, kv-cache, eficiencia, google, llm, open-source]
fonte: arXiv / GitHub
autor: Google Research
url: https://arxiv.org/html/2504.19874v1
---

# Referência — TurboQuant: KV Cache Compression (ICLR 2026)

## Dados do Paper

- **Título**: TurboQuant: Online Vector Quantization with Near-optimal Distortion Rate
- **arXiv ID**: 2504.19874
- **Conferência**: ICLR 2026
- **URL**: https://arxiv.org/html/2504.19874v1

## Como Funciona

TurboQuant reduz o KV cache de LLMs para 3 bits (chaves) e 2 bits (valores) sem retraining ou fine-tuning, mantendo qualidade quase inalterada. O método:
1. Rotaciona aleatoriamente os vetores de entrada
2. Induz uma distribuição Beta concentrada nas coordenadas
3. Aproveita a quase-independência entre coordenadas em altas dimensões
4. Aplica quantizadores escalares ótimos por coordenada

## Resultados

- **4-bit TurboQuant**: até 8x mais rápido que 32-bit no H100
- **3-bit keys / 2-bit values**: sem perda de qualidade mensurável
- Testado em Gemma e Mistral com runtime superior ao original

## Compatibilidade com Modelos Não-Google

**Sim** — TurboQuant é agnóstico de modelo. Implementações da comunidade cobrem:
- llama.cpp (AmesianX/TurboQuant — Walsh-Hadamard Transform + Lloyd-Max + QJL)
- vLLM (0xSero/turboquant — Triton kernels)
- SGLang (issue #21618 — feature request com implementação em progresso)

## Status do Código Oficial

Google Research **não publicou implementação oficial** até abril/2026. Mas o paper é público e há múltiplas implementações da comunidade funcionais.

## Fontes

- https://arxiv.org/html/2504.19874v1
- https://github.com/0xSero/turboquant
- https://github.com/AmesianX/TurboQuant
- https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/
- https://www.spheron.network/blog/google-turboquant-llm-compression-gpu-cloud/
