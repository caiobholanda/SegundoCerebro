---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://code.claude.com/docs/en/routines
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude-code, rotinas, automacao, agendamento, cloud]
---

# Referência - Doc - Claude Code Routines 2026

## 🔗 Fonte
- **URL**: https://code.claude.com/docs/en/routines
- **Autor**: Anthropic
- **Data publicação**: Lançado 14/04/2026 (Research Preview)

## 📝 Resumo (suas palavras)
Routines são automações salvas que rodam em infraestrutura cloud gerenciada pela Anthropic — sem precisar manter o computador ligado. Cada routine combina um prompt, um ou mais repositórios e conectores. Podem ser disparadas por schedule, API ou eventos GitHub.

## 💡 Trechos-chave
> A routine is a saved Claude Code configuration: a prompt, one or more repositories, and a set of connectors, packaged once and run automatically.

### Tipos de trigger
1. **Scheduled** — cadência recorrente (horária, noturna, semanal) ou data/hora específica
2. **API** — HTTP POST para endpoint por routine com bearer token
3. **GitHub** — dispara automaticamente ao detectar evento no repositório conectado

### Limites por plano (diário)
- Pro: 5 runs/dia
- Max: 15 runs/dia
- Team / Enterprise: 25 runs/dia

### Criação
- Via claude.ai/code/routines (web)
- Via Desktop app
- Via CLI
- Todas as superfícies sincronizam com a mesma conta cloud

### Status
- Research Preview desde 14/04/2026
- Executa em infraestrutura Anthropic-managed

## 🪞 Reflexão
Routines resolvem exatamente o que o `automacao-cerebro.ps1` do segundo cérebro faz localmente — mas de forma cloud-native. A diferença: Routines rodam mesmo com o laptop fechado. Limite de 5 runs/dia no Pro pode ser restritivo para o loop diário (manhã + noite + semana = 3 runs mínimos).

## 🔗 Conecta com
- [[Pesquisa - 2026-05-14 - Claude Code]]
- [[Pesquisa - 2026-05-13 - Claude Code]]
