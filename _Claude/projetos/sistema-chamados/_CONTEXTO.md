---
tipo: meta
criado: 2026-05-08
atualizado: 2026-05-12
projeto: sistema-chamados
---

# sistema-chamados — Contexto do Projeto

## O que é

Sistema interno de suporte TI do Hotel Gran Marquise (Fortaleza-CE). Usuários do hotel abrem chamados pelo portal web; admins de TI gerenciam tudo pelo painel administrativo. Existe também um app mobile (PWA) para técnicos em campo.

## URLs

- **Produção**: https://web-production-83b4ae.up.railway.app
- **Repositório**: https://github.com/caiobholanda/sistema-chamados
- **Diretório local**: `C:\Users\estagio.ti\Desktop\ClaudeCode\sistema-chamados`

## Stack

- Node.js + Express + better-sqlite3 + JWT
- Sem framework frontend — HTML/CSS/JS puro com fetch API
- SQLite em `data/chamados.db`
- Web Push Notifications (VAPID via `web-push`) com Service Worker
- Deploy: Railway via GitHub Actions (push em main → deploy automático)

## Estrutura de arquivos

```
server.js                      — entry point, monta rotas, checarPrazos (a cada 2min)
src/
  db.js                        — todas as queries SQLite + migrations inline
  auth.js                      — middleware JWT (requireAdmin, requireMaster)
  push.js                      — envio de push notifications (enviarParaAdmin, enviarParaTodos)
  rotas/
    admins.js                  — /api/admin/* (login, usuários, push, etc.)
    chamados.js                — abertura pública de chamados
    usuarios.js                — portal do usuário comum
    relatorios.js              — exportação de relatórios
    itens.js                   — suprimentos e toneres
    inventario.js              — inventário de equipamentos
    estoque.js                 — estoque + movimentações (setor_origem incluído)
public/
  admin-painel.html + js/      — painel principal de chamados
  admin-usuarios.html + js/    — gerenciamento de admins e usuários do portal
  admin-relatorios.html        — relatórios e gráficos
  admin-itens.html + js/       — gerenciamento de suprimentos/toneres
  admin-estoque.html + js/     — estoque completo
  admin-inventario.html + js/  — inventário
  admin-login.html + js/       — login admin (por e-mail)
  index.html + js/usuario.js   — portal do usuário comum
  mobile.html + js/mobile.js   — app mobile PWA para técnicos
  manifest.json                — PWA manifest (iOS home screen)
  sw.js                        — Service Worker (push + pushsubscriptionchange)
  css/style.css                — único arquivo de estilos
```

## Regras de negócio importantes

- **Domínio obrigatório**: `@granmarquise.com.br` para admins e usuários
- **Hierarquia**: `is_master = 1` tem acesso total; admin comum só gerencia chamados
- **Status dos chamados**: `aberto → em_andamento → concluido` ou `encerrado`; reabrir volta para `aberto`
- **Timezone**: America/Fortaleza (UTC-3) em todas as exibições; prazos armazenados em UTC
- **Prazo impressora**: 2 dias úteis, pula fins de semana + feriados Fortaleza (nacionais + CE + municipais)
- **Push subscriptions**: `is_mobile` flag distingue app mobile (técnico) de desktop (admin)

## Funcionalidades principais

### Chamados
- Usuários comuns abrem chamados com nome, setor, tipo, descrição e arquivos
- Admins assumem, adicionam anotações, definem prazo, concluem ou encerram
- Chat interno por chamado (admin ↔ usuário, atualização por polling)
- Reabrir chamado zera alertas de prazo (`DELETE FROM prazo_alertas`)
- Filtro por ID (client-side, debounce 150ms) no painel do admin

### Prazo e Alertas
- Alertas automáticos via push em 3 janelas: <10min, 10-60min, 1-24h
- `checarPrazos()` roda a cada 2 minutos no servidor
- `prazo_alertas (chamado_id, tipo)` evita duplicatas; resetado ao atualizar/reabrir
- Admin responsável recebe alerta individual; sem responsável → todos os admins

### Estoque / Toneres
- Movimentações rastreadas com `setor_origem` (toner vindo de algum setor)
- Cálculo de saldo via UNION ALL (saídas positivas + entradas negativas)
- Wizard mobile ao concluir chamado pergunta sobre movimentação de equipamentos

### Notificações Push
- VAPID keys geradas em `push.js`; chave pública exposta em `/api/admin/push/vapid-public-key`
- `pushsubscriptionchange` no SW re-inscreve automaticamente e avisa backend via `/push/resubscribe`
- Subscriptions com `is_mobile=1` recebem URL `/mobile`; demais recebem URL do admin
- Só deleta subscription em erro 404/410 (não 401/403)
- Reconecta automaticamente em `focus` e `online` events

### App Mobile (PWA)
- URL: `/mobile`
- Instalável no iOS via "Adicionar à Tela de Início" (manifest.json + apple meta tags)
- Push só funciona no iOS quando instalado como PWA (não no Safari browser)
- Detecta iOS + standalone: se browser → mostra banner de instalação

### Portal do Usuário
- Usuários veem seus chamados com badge `#ID`
- Não tem acesso ao chat ou dados internos

### Gerenciamento de Usuários (admin-usuarios)
- Botões de ação como ícones SVG em toolbar agrupada
- Histórico de chamados por usuário (modal z-index 3000)
- Clicar no ID do chamado no histórico abre popup do chamado (z-index 3100)
- Senha visível ao editar (campo `type="text"` + botão olho)

## Deploy automático

Hook Stop em `ClaudeCode/.claude/settings.json` faz commit+push automático após cada sessão. GitHub Actions executa `railway up` automaticamente.

## Padrões de código

- CSS em variáveis: `--gold`, `--navy`, `--border`
- `sanitizarTexto()` em todos os inputs de texto antes de salvar
- Migrations inline no `initDb()` com try/catch (`ALTER TABLE ... ADD COLUMN`)
- Rotas admin exigem cookie JWT via `requireAdmin` ou `requireMaster`
