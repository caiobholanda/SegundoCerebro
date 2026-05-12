---
tipo: meta
criado: 2026-05-08
atualizado: 2026-05-08
---

# Conhecimento Global

> Preferências, padrões e fatos aprendidos em todas as sessões.
> Claude atualiza este arquivo quando aprende algo relevante e duradouro.

## Sobre o Usuário

- Estagiário de TI no Hotel Gran Marquise, Fortaleza-CE
- Trabalha com suporte TI interno e desenvolvimento do sistema de chamados
- Prefere respostas curtas e diretas, sem enrolação
- Usa Windows 11 + PowerShell + Claude Code no terminal
- Email: caiobholanda2007@gmail.com

## Preferências de Trabalho

- Deploy automático via Stop hook — nunca fazer commit/push manual
- Sempre aguardar confirmação de deploy antes de reportar conclusão
- Respostas sem emojis
- Timezone: America/Fortaleza (UTC-3)
- Prefere código funcional antes de explicações longas

## Stack Principal

- **sistema-chamados**: Node.js + Express + better-sqlite3 + JWT, sem framework frontend, HTML/CSS/JS puro
- **Deploy**: Railway via GitHub Actions (`railway up`)
- **Banco**: SQLite em `data/chamados.db`

## Prioridades de Pesquisa do Vault

1. **Claude API** — novidades, modelos, preços, tool use, prompt caching, batches, files API
2. **Claude Code e Claude.ai** — CLI, skills, hooks, MCP, Projects, Canvas, features novas
3. **Economia de Tokens** — técnicas para reduzir custo/consumo em Claude e LLMs
4. **Deploy e Infraestrutura** — Railway, Vercel, VPS, CI/CD, HTTPS, containers
5. **Inteligência Artificial** — outros modelos e avanços do campo
6. **Programação e Dev** — linguagens, frameworks, boas práticas
7. **Mercado TI Brasil** — vagas, salários, carreira

## Loop Autônomo

- Loop autônomo completo a partir de 2026-05-11: 4 ciclos diários via Task Scheduler (manhã, noite, sexta, dia 1)
- 6 skills novas: nota-permanente, conectar-notas, buscar-vault, sintetizar-moc, processar-inbox-pesquisa, revisao-mensal
- 3 sub-agentes em `.claude/agents/`: curador, conector, historiador
- 11 slash commands em `.claude/commands/`

## Cross-Device (claude.ai Projects)

- Export consolidado: `_Claude/_EXPORT/brain-completo.md` — gerado por `_Claude/gerar-export.ps1`
- Para usar em mobile/web: fazer upload do export no Project "Segundo Cérebro" no claude.ai
- SessionStart hook injeta `_HOT_CACHE.md` no Claude Code automaticamente

## Padrões Técnicos Aprendidos

- Migrações SQLite com `ALTER TABLE` dentro de `try/catch` para idempotência
- Prazo de chamados de impressora = 2 dias úteis (sem fins de semana + feriados Fortaleza)
- Feriados Fortaleza: ver `_Claude/projetos/sistema-chamados/_DECISOES.md`
- Timezone sempre convertida: UTC armazenado, Fortaleza exibido
- `cor: 'usado'` para `qtd_usado` no estoque de nobreaks
