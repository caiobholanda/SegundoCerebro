---
tipo: pesquisa
status: ativo
criado: 2026-06-26
atualizado: 2026-06-26
tags: [ia, claude, api, anthropic]
pergunta-central: Quais são as novidades da API da Anthropic e SDK em 26 de junho de 2026?
relacionado-a: Claude Code, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-24 - Claude API e Anthropic SDK]]"]
---

# Claude API e Anthropic SDK — 2026-06-26

## Fable 5 — Referência Atual

- Score AA 59.9 no AA Intelligence Index — modelo mais capaz disponível amplamente
- Preço: $10/MTok input, $50/MTok output
- Contexto 1M padrão, 128K output máximo
- Disponível: API direta, AWS Bedrock, Vertex AI, Microsoft Foundry
- **Mythos 5**: restrito a parceiros Project Glasswing

## Billing Split — D+11 (vigente desde 15/06)

- Agent SDK, `claude -p`, GitHub Actions e apps de terceiros em crédito separado
- Pro $20/mês | Max5x $100/mês | Max20x $200/mês (não acumula)
- Recusas sem output (`stop_reason: "refusal"`) não são cobradas (desde 02/06)

## Novidades Técnicas Recentes

- **WIF (Workload Identity Federation)**: compatível com qualquer provedor OIDC; cobre todos os endpoints da API incluindo SDKs de primeira linha e Claude Code — elimina chaves API estáticas
- **Server-side fallback (beta)**: parâmetro que retenta requisições recusadas em segundo modelo no mesmo round-trip (header `server-side-fallback-2026-06-01`)
- **MCP Tunnels** (research preview): acesso a redes privadas via túnel MCP
- **Rate Limits API**: novo endpoint para consultar limites de taxa programaticamente
- **Managed Agents sandboxes auto-hospedados**: orgs podem rodar sandboxes próprios com MCP privado

## Dynamic Workflows — Research Preview

- Disponível: CLI, Desktop, extensão VS Code — planos Max, Team e Enterprise
- Também disponível via API Claude, Bedrock, Vertex AI e Microsoft Foundry
- Orquestra dezenas a centenas de subagentes paralelos por sessão

## Claude Tag no Slack

- Times marcam `@Claude` em canais para delegar tarefas
- Contexto acumulado ao longo do tempo, acesso controlado a ferramentas/dados
- Beta ativo: clientes Team e Enterprise

## Permissões Administrativas em Roles Customizados — Enterprise

- Funções personalizadas agora recebem permissões de admin
- Acesso a faturamento ou privacidade sem acesso de Proprietário completo

## Preços Atuais por Modelo

| Tier | Modelo | Input / Output (MTok) |
|------|--------|-----------------------|
| Mythos-class | claude-fable-5 | $10 / $50 |
| Flagship | claude-opus-4-8 | $5 / $25 |
| Balanced | claude-sonnet-4-6 | $3 / $15 |
| Fast | claude-haiku-4-5 | $1 / $5 |

## Depreciações Ativas (desde 15/06)

- `claude-sonnet-4` e `claude-opus-4` originais **desativados** — chamadas falham
- Migração: `claude-sonnet-4` → `claude-sonnet-4-6` | `claude-opus-4` → `claude-opus-4-8`

## Links

- [Claude Updates — Releasebot](https://releasebot.io/updates/anthropic/claude)
- [Anthropic Release Notes — Releasebot](https://releasebot.io/updates/anthropic)
- [Latest API Release Notes — Fazm.ai](https://fazm.ai/t/latest-anthropic-api-release-notes-june-2026)
- [Claude Agent SDK Credits 2026 — Totalum](https://www.totalum.app/blog/claude-agent-sdk-credits-2026)
