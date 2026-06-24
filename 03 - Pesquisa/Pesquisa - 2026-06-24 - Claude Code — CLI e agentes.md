---
tipo: pesquisa
status: ativo
criado: 2026-06-24
atualizado: 2026-06-24
tags: [claude-code, cli, agentes, ia]
pergunta-central: Quais são as novidades do Claude Code e Claude.ai em 24 de junho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-23 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-06-24

## Features Cloud — Estado Atual

### Ultraplan
- Offloads o planejamento de implementação do terminal para uma sessão cloud
- Você anota, revisa e aprova o plano antes da execução
- Custo descontado da cota de sessão da assinatura (não billed separadamente)

### /ultrareview
- Lançado em 16/04/2026 (v2.1.111), hoje parte padrão do toolchain
- Envia o diff para sandbox cloud + frota de agentes independentes
- Cada finding passa por verificação independente antes de surfaçar
- Custo: ~$5–$20 por diff dependendo do tamanho

### Routines
- Agentes cloud que disparam automaticamente por schedule ou GitHub event
- Configurado na web: prompt + repos autorizados + connectors
- Gatilhos: PR aberto, release publicada, webhook customizado
- Não exige máquina local rodando

### Managed Agents
- Infraestrutura de trabalho Claude hospedado na cloud
- Inclui vault de env vars, webhooks ricos, scheduled deployments
- Junto com Ultrareview e Routines forma a infra de agentes cloud de 2026

## Features CLI Recentes

- **Dynamic Workflows**: dezenas a centenas de subagentes paralelos por sessão com verificação embutida (research preview)
- **Computer Use no CLI**: Claude abre apps nativos, clica na UI e verifica mudanças (research preview)
- **Fable 5 no CLI**: disponível via `/model fable` (desde v2.1.170)
- **Opus 4.8 como default**: com `/effort xhigh` e thinking ativo por padrão
- **--safe-mode**: sessão limpa sem nenhuma customização (troubleshooting)
- **/cd**: muda diretório sem quebrar o prompt cache
- **fallbackModel**: cadeia de até 3 modelos backup quando o primário está sobrecarregado
- **MAX_THINKING_TOKENS=0**: desativa thinking em modelos que ativam por padrão
- **Sub-agentes aninhados**: confirmados até 5 níveis

## Contexto de Produto

- Shift conceitual consolidado: software como trabalhador semi-autônomo
- Desktop redesenhado: sessões paralelas + Routines + workspace unificado
- Microsoft migrou licenças corporativas para Copilot CLI em 30/06/2026

## Links

- [What's new — Claude Code Docs](https://code.claude.com/docs/en/whats-new)
- [Claude Code Updates junho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
- [Ultraplan Guide 2026 — claudefa.st](https://claudefa.st/blog/guide/mechanics/ultraplan)
- [/ultrareview Guide — Claude Directory](https://www.claudedirectory.org/blog/ultrareview-claude-code-guide)
- [Desktop Redesign: Routines & Workspace — Miraflow](https://miraflow.ai/blog/claude-code-desktop-redesign-parallel-sessions-routines-workspace-guide)
- [Opus 4.7 + /ultrareview + Routines — minssam](https://minssam.com/en/blog/2026-claude-code-opus47-ultrareview-routines/)
