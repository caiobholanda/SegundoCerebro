---
tipo: projeto
status: ativo
criado: 2026-05-08
atualizado: 2026-05-12
prazo: open-ended
objetivo: Manter e evoluir o sistema interno de suporte TI do Hotel Gran Marquise
tags: [projeto, dev, node, sqlite]
---

# Projeto - Sistema Chamados

## 🎯 Objetivo

Manter operacional e evoluir o sistema de suporte TI do Hotel Gran Marquise — chamados, estoque de toneres/periféricos, notificações push e app mobile para técnicos.

## 📅 Prazo

Open-ended (sistema interno de uso contínuo)

## 📍 Status atual

Sistema em produção em https://web-production-83b4ae.up.railway.app. Todas as funcionalidades core estão estáveis: chamados, estoque com rastreio de setor de origem, alertas de prazo em 3 janelas (10min/1h/24h), push notifications no desktop e no app mobile PWA. Deploy automático via Railway + GitHub Actions.

Sessão 2026-05-11/12 adicionou: notificações push no app mobile (iOS PWA), histórico de chamados por usuário, filtro por ID no painel, badges de #ID em todos os portais, reconexão automática de subscriptions e fix do bug de chat compartilhado entre chamados.

## ✅ Próximos passos

- [ ] Avaliar migração do banco SQLite para Postgres (Railway oferece nativamente)
- [ ] Adicionar filtro por status no histórico de chamados do usuário
- [ ] Notificação push para o usuário comum quando chamado for atualizado
- [ ] Dashboard de métricas: tempo médio de resolução por técnico/setor

## 🧠 Pesquisas relacionadas

- [[Referência - Doc - Node.js]]
- [[Referência - Doc - SQL]]
- [[Referência - Doc - JavaScript]]

## 📚 Referências

- Repositório: https://github.com/caiobholanda/sistema-chamados
- Produção: https://web-production-83b4ae.up.railway.app
- Contexto técnico detalhado: `_Claude/projetos/sistema-chamados/_CONTEXTO.md`
- Decisões técnicas: `_Claude/projetos/sistema-chamados/_DECISOES.md`

## 📝 Decisões

Ver [[_DECISOES — sistema-chamados]] para log completo.

Principais: prazo por dias úteis (feriados Fortaleza), `is_mobile` flag para push, `prazo_alertas` resetado ao reabrir chamado, `setor_origem` nas movimentações de toner.

## 🗒️ Notas soltas

- O banco SQLite não é commitado — gerado na primeira execução via `initDb()`
- Admin master criado automaticamente na primeira execução (credenciais no terminal)
- Push iOS só funciona em modo PWA instalado (limitação da Apple)
