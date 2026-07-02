---
tipo: pesquisa
status: ativo
criado: 2026-07-02
atualizado: 2026-07-02
tags: [claude-code, cli, agentes, dev]
pergunta-central: Quais são as novidades do Claude Code, CLI e agentes em 2 de julho de 2026?
relacionado-a: Claude API, Inteligência Artificial
related: ["[[Pesquisa - 2026-06-26 - Claude Code — CLI e agentes]]"]
---

# Claude Code — CLI e Agentes — 2026-07-02

## Claude Sonnet 5 como Modelo Padrão

- Versão **v2.1.197** traz Sonnet 5 como modelo padrão
- Contexto nativo 1M tokens — muda workflows de coding completamente
- Preço promocional até 31/ago/2026 ($2/$10 MTok)

## Stream Watchdog — Agora Padrão para Todos

- Idle watchdog **ativo por padrão** em todos os providers
- Aborta e faz retry quando o stream não produz eventos por **5 minutos**
- Melhora confiabilidade de sessões longas e remotas

## Qualidade de Vida — Atualizações Recentes

- **Nomes de sessão legíveis** (readable session names)
- **Modelos padrão de organização** configuráveis (org default models)
- **Anexos de arquivo clicáveis** no painel de agentes
- **Visualização de agentes mais fluida** (smoother agents view)

## Correções no Painel de Agentes

- Foco de teclado não trava mais ao abrir um agente
- Jobs em background não perdem seus tipos de subagente a cada abertura
- Sessões não mostram mais status incorreto enquanto em execução ativa
- Linhas "concluído" não alternam mais entre "Done" e "Needs your input"
- Agentes travados agora mostram **"Needs attention"** em vez de status ambíguo
- Resultados que mencionam PR mostram link clicável

## Managed Agents — Beta Público

- Agentes executam em **cronogramas** sem necessidade de scheduler externo
- Variáveis de ambiente armazenadas em cofre seguro
- Integrações com capacidade de navegador para trabalho recorrente
- Cada execução de cron inicia nova sessão do agente

## Dynamic Workflows — Research Preview

- Suporte end-to-end paralelo para bases de código, migrações e engenharia complexa
- Claude escreve dinamicamente scripts de orquestração com **dezenas a centenas de subagentes paralelos**
- Verificação integrada + progresso salvo
- Disponível: CLI, Desktop, VS Code, API, plataformas cloud principais

## Confiabilidade

- Melhoras em: MCP, plugins, ditado de voz, performance de terminal
- Recuperação remota aprimorada após quedas de conexão
- Background session reliability no Windows

## Sub-agentes

- Hierarquia aninhada confirmada até **5 níveis** (pai → filho → neto → ...)
