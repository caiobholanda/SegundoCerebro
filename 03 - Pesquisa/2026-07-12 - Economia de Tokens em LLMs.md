```markdown
---
tipo: pesquisa
criado: 2026-07-12
atualizado: 2026-07-12
pergunta-central: Qual é o estado da economia de tokens em LLMs em julho de 2026?
relacionado-a: []
related: []
tags: [pesquisa, ia, dev, custos, tokens]
---

# Pesquisa - Economia de Tokens em LLMs

## ❓ Pergunta central
Qual é o estado da economia de tokens em LLMs em julho de 2026?

## 🎯 Síntese (3-5 linhas)
Julho de 2026 traz sinal de alerta da Bloomberg: o Silicon Data LLM Token Expenditure Index recuou ~20% do pico de maio, indicando que alguns casos de uso "certos" não entregaram ROI na velocidade esperada. Ao mesmo tempo, a queda histórica de preços continua — GPT-4 equivalent saiu de $20 para $0,40/MTok (-98% desde 2022). Output segue sendo 4× mais caro que input (mediana), e otimização combinada pode gerar 60-80% de economia.

## 🔬 Detalhes
- **Sinal Bloomberg**: Silicon Data LLM Token Expenditure Index caiu ~20% do pico de maio/2026 (quase dobrou entre dez/2025 e mai/2026); desaceleração real na demanda — casos de uso adotados no 2H25 não entregaram ROI esperado na velocidade prometida
- **Queda histórica de preços**: GPT-4 equivalent agora $0,40/MTok vs $20 em 2022 (-98%); queda ~80% só em 2025→2026
- **Estrutura output/input**: razão mediana ~4×; modelos premium até 8× mais caros no output; billing split obrigatório para qualquer análise de custo
- **Dev com agentes full-time**: $50-200/mês em tokens (equivalente a SaaS premium); sem otimização o custo escala sem controle
- **Claude Sonnet 5 promo**: $2/$10 MTok até 31/ago → melhor custo-benefício frontier disponível agora
- **Alavancas de otimização**:
  - Prompt caching (Anthropic 90% off, OpenAI 50% automático) — maior alavanca
  - Batch API: 50% off para workloads não urgentes
  - Multi-LLM routing: 60-90% economia
  - YAML vs JSON: 50% menos tokens
  - Context engineering (ACE): +10,6% benchmarks com contexto enxuto
- **Spread total do mercado**: ~140× entre modelos mais baratos e mais caros ($0,035→$10/MTok entrada)

## 🔗 Conexões
- [[2026-07-12 - Claude API e Anthropic SDK]]
- [[2026-07-12 - Claude Code — CLI e agentes]]

## 📚 Fontes
- [IA recebe sinal de alerta vindo da economia dos tokens - Bloomberg](https://www.bloomberg.com/news/articles/2026-07-03/ia-recebe-sinal-de-alerta-vindo-da-economia-dos-tokens)
- [LLM API Pricing Comparison July 2026 - BenchLM.ai](https://benchlm.ai/llm-pricing)
- [Understanding LLM Cost Per Token 2026 - Silicon Data](https://www.silicondata.com/blog/llm-cost-per-token)

## 🚧 Lacunas
- A desaceleração do índice Bloomberg é tendência ou correção pontual?
- Qual porcentagem do recuo é demanda real vs queda de preços?
- Como o DeepSeek V4-Pro ($0,435/$0,87 MTok) afeta o mercado de modelos econômicos?
```
