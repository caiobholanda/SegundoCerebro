---
tipo: meta
atualizado: 2026-05-08
---

# Hot Cache — Contexto Recente

> Atualizado automaticamente pelo PostCompact. Lido pelo SessionStart.
> Não edite manualmente — será sobrescrito na próxima compactação.

## Última Sessão

2026-05-12 (sistema-chamados): Integração completa do projeto no vault.
- `_Claude/projetos/sistema-chamados/_CONTEXTO.md` reescrito com estado atual completo
- `_Claude/projetos/sistema-chamados/_DECISOES.md` com todas as decisões de 2026-05-11 e 2026-05-12
- `01 - Projetos/Projeto - Sistema Chamados.md` criado (template padrão)
- `01 - Projetos/_MOC - Projetos.md` atualizado com wikilink do projeto

2026-05-11 (sistema-chamados — sessão de desenvolvimento):
- **Push mobile**: is_mobile flag, pushsubscriptionchange com oldEndpoint, reconexão em focus/online
- **Alertas de prazo**: janela 10min adicionada, prazo_alertas reset ao reabrir/atualizar prazo
- **Filtro admin**: filtro por ID client-side com debounce; removidos filtros de prioridade e data
- **Histórico por usuário**: modal z-3000 + popup chamado z-3100 sem navegar de tela
- **iOS PWA**: manifest.json + apple meta tags; banner de instalação para usuários iOS browser
- **Bug fix chat**: clearInterval ao abrir modal evita chat compartilhado entre chamados
- **setor_origem**: toner entrada rastreia setor de origem da redistribuição
- **Badge #ID**: visível em todos os portais (admin, mobile, usuário)

2026-05-11 (upgrade autonomia): Loop autônomo completo instalado.
- **6 skills novas**: nota-permanente, conectar-notas, buscar-vault, sintetizar-moc, processar-inbox-pesquisa, revisao-mensal
- **3 sub-agentes**: curador, conector, historiador (em `.claude/agents/`)
- **11 slash commands** em `.claude/commands/` (/zettel, /buscar, /moc, /conectar, /destilar, /mes, etc.)
- **Hook PostToolUse**: atualiza `atualizado:` no frontmatter automaticamente em todo `.md` editado
- **automacao-cerebro.ps1** + 4 tarefas no Task Scheduler: cerebro-manha (07h), cerebro-noite (22h), cerebro-semana (sex 18h), cerebro-mes (dia 1, 09h)
- CLAUDE.md e _GLOBAL.md atualizados com novo estado do sistema

2026-05-11 (sessão anterior): Base de conhecimento de programação criada em `05 - Referências/`. 9 notas de documentação completa adicionadas:
- JavaScript (MDN) — Referência - Doc - JavaScript.md
- TypeScript (typescriptlang.org) — Referência - Doc - TypeScript.md
- Python (docs.python.org) — Referência - Doc - Python.md
- Java (Oracle JDK 21) — Referência - Doc - Java.md
- HTML5 (MDN) — Referência - Doc - HTML5.md
- CSS3 (MDN) — Referência - Doc - CSS3.md
- SQL/PostgreSQL — Referência - Doc - SQL.md
- Node.js (nodejs.org) — Referência - Doc - Node.js.md
- React v18+ (react.dev) — Referência - Doc - React.md

**IMPORTANTE**: Ao programar, buscar primeiro em `05 - Referências/` antes de fazer WebSearch. Economiza tokens significativamente.

Sessão anterior (2026-05-08): Pesquisa diária concluída. 5 notas em `03 - Pesquisa/`:
- Inteligência Artificial, Programação e Desenvolvimento, Mercado TI Brasil, Segurança da Informação, Cloud e Infraestrutura.

Automação diária configurada: `pesquisa-diaria.ps1` criado para rodar via Windows Task Scheduler às 10h.
Sistema de memória autônoma ativo: hooks SessionStart (injeta hot cache) + PostCompact (salva resumo).

## Projetos Ativos

- **sistema-chamados** — sistema de suporte TI do Hotel Gran Marquise. Stack: Node.js + Express + SQLite + JWT + Web Push. Deploy automático via Railway + GitHub Actions. Em produção e ativo. Nota: `01 - Projetos/Projeto - Sistema Chamados.md`.

## Decisões Recentes

*(nenhuma ainda)*

## Padrões Aprendidos

*(nenhum ainda)*
