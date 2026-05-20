---
tipo: pesquisa
status: ativo
criado: 2026-05-17
atualizado: 2026-05-17
tags: [ia, dev, claude, anthropic, api]
pergunta-central: O que mudou na Claude API esta semana — Agent View, Advisor Tool e impacto do novo tokenizador?
relacionado-a: [Claude Code, Economia de Tokens, Inteligencia Artificial]
---

# Pesquisa — Claude API (maio 2026)

## Modelos disponíveis e preços

| Modelo | Input ($/MTok) | Output ($/MTok) | Notas |
|---|---|---|---|
| Haiku 4.5 | $1 | $5 | Mais barato, tarefas simples |
| Sonnet 4.6 | $3 | $15 | Equilíbrio custo/qualidade |
| Opus 4.7 | $5 | $25 | Topo de linha (lançado 16/04/2026) |

**Opus 4.7 — tokenizador novo**: pode consumir até **35% mais tokens** para o mesmo texto em relação a modelos anteriores. Importante considerar ao migrar de Sonnet 4.6 para Opus 4.7.

**Fast Mode Opus 4.7**: 2,5× tokens/s de output, mas 6× o preço padrão ($30 input / $150 output). Uso justificado só em cenários de latência crítica.

## Prompt Caching

Cache reads custam **0,1× o preço base de input** — desconto de 90%. Maior alavanca de economia disponível na API.

```python
# Exemplo de bloco cacheável (SDK Python)
messages = [
    {
        "role": "user",
        "content": [
            {
                "type": "text",
                "text": sistema_grande,
                "cache_control": {"type": "ephemeral"}
            },
            {"type": "text", "text": pergunta_curta}
        ]
    }
]
```

Cache TTL: 5 minutos. Para prompts de sistema fixos (docs, instruções longas), o retorno é imediato a partir da 2ª chamada.

## Batch Processing

Batch API: 50% de desconto no preço padrão. Resultados entregues em até 24h. Indicado para: avaliações em lote, geração offline, pipelines de processamento assíncrono.

## Novas integrações (maio 2026)

- **Microsoft 365 Add-ins** (GA): Excel, PowerPoint e Word disponíveis para planos pagos. Outlook em beta público. Contexto de conversa preservado entre aplicativos.
- **MCP Connectors legais**: 20+ novos conectores + 12 plugins de área de prática (pesquisa, contratos, discovery, gestão de casos).

## Managed Agents (beta)

Preço: **$0,08/hora** por agente ativo. Permite agents long-running com estado persistente entre sessões. Disponível via API com `claude-agents-sdk`.

## Compaction API

Disponível para: Opus 4.7, Opus 4.6, Sonnet 4.6, Mythos Preview. **Haiku não suportado.** Compacta contexto de conversas longas preservando informação essencial — reduz custo em sessões multi-turn longas.

## Fontes

- [Claude Updates - May 2026 (Releasebot)](https://releasebot.io/updates/anthropic/claude)
- [Anthropic API Pricing 2026 (CloudZero)](https://www.cloudzero.com/blog/anthropic-claude-api-pricing/)
- [Claude API Pricing (platform.claude.com)](https://platform.claude.com/docs/pt-BR/about-claude/pricing)
- [Anthropic API Pricing Complete Guide (Finout)](https://www.finout.io/blog/anthropic-api-pricing)

## Novidades da semana (17/05/2026)

### Agent View (Research Preview)
- Dashboard CLI unificado que agrega todas as sessões de agentes ativas em uma única interface
- Disponível com um único comando para planos Pro, Max, Team, Enterprise e API
- Resolve o problema de gerenciar múltiplos terminais em pipelines multiagente

### Advisor Tool (Beta — Claude Platform)
- Ferramenta nativa que combina num único loop: pesquisa web em tempo real + execução de código + consulta ao Opus
- Elimina necessidade de montar infraestrutura separada para cada capability
- Disponível nativamente via Claude Platform (sem configuração adicional)

### Message Batches API — 300k Output Tokens
- Opus 4.7, Opus 4.6 e Sonnet 4.6 suportam até **300k tokens de output** em lote
- Header necessário: `output-300k-2026-03-24` (beta)
- Uso: documentos extensos, análise de corpora grandes — com desconto de 50% do Batch

### Rate Limits Duplicados
- Claude Code teve rate limits **dobrados** em todos os planos pagos
- API do Opus também com limites aumentados para suportar enterprise em escala
- Picos em horário de ponta eliminados para contas Pro e Max

## 🚧 Lacunas
- Como o Advisor Tool se compara em custo ao montar infraestrutura própria com web search + code execution?
- O Agent View suporta sessões de agentes via SDK direto (não Claude Code)?
- Quando o billing split (15/06/2026) afeta projetos que usam Agent SDK diretamente?

## Conexões

- [[Pesquisa - 2026-05-16 - Claude API]]
- [[Pesquisa - 2026-05-17 - Claude Code e Claude.ai]]
- [[Pesquisa - 2026-05-17 - Economia de Tokens]]
- [[Pesquisa - 2026-05-16 - Economia de Tokens]]
- [[Pesquisa - 2026-05-17 - Inteligencia Artificial]]
