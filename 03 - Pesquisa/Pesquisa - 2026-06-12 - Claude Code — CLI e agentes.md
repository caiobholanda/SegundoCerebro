---
tipo: pesquisa
status: ativo
criado: 2026-06-12
atualizado: 2026-06-12
tags: [dev, claude, cli, agentes]
pergunta-central: Quais são as novidades do Claude Code CLI e sistema de agentes em 12/06/2026?
relacionado-a: Claude API
related: ["[[Pesquisa - 2026-06-11 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e agentes — 2026-06-12

## Sub-agentes aninhados (novidade chave)

Sub-agentes agora podem criar seus próprios sub-agentes, com até **5 níveis de profundidade**. Habilita workflows multi-nível complexos sem intervenção manual:

```
orchestrator
  └─ sub-agent nivel 1
       └─ sub-agent nivel 2
            └─ sub-agent nivel 3 (...)
```

## Agent View

Painel unificado para gerenciar todas as sessões Claude Code simultâneas:
- Inicia novos agentes, manda para background, retoma quando necessário
- Visão clara: quais aguardam input | quais ainda processam | quais finalizaram

## Plugins

- `/plugin list` — lista plugins instalados
- `/plugin list --enabled` / `--disabled` — filtros por estado
- Barra de busca ao navegar plugins no marketplace
- Autocomplete de slash commands **preenche** no prompt em vez de executar imediatamente

## Managed Settings — controle de versão

```json
{
  "requiredMinimumVersion": "2.1.170",
  "requiredMaximumVersion": "2.1.180"
}
```
Claude Code recusa start se a versão estiver fora do range e direciona para versão aprovada.

## UX

- `c to copy` no `/btw` — copia o markdown bruto para o clipboard com formatação preservada
- Amazon Bedrock lê a região AWS de `~/.aws` config quando `AWS_REGION` não está definido (paridade com AWS SDK)

## Fable 5 no CLI

- Disponível via `/model fable` após `claude update` (versão mínima: v2.1.170)
- Combinado com sub-agentes aninhados: primeira vez que capacidade Mythos está acessível em workflows multi-agente

## Contexto externo

- **Microsoft**: plano anunciado de migrar de Claude Code para Copilot CLI em **30/06/2026** para licenças corporativas
- Movimento de push interno — não afeta usuários individuais ou contas não-enterprise Microsoft

## Links

- [[Pesquisa - 2026-06-11 - Claude Code — CLI e agentes]]
- [[Pesquisa - 2026-06-12 - Claude API e Anthropic SDK]]
