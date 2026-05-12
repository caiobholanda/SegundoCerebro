---
tipo: meta
criado: 2026-05-08
atualizado: 2026-05-12
---

# Decisões — sistema-chamados

> Log append-only. Nunca deletar entradas.

## 2026-05-08

- **Prazo impressora**: 2 dias úteis a partir da hora atual (arredondada: ≤20min → hora atual, >20min → próxima hora). Pula fins de semana + feriados Fortaleza (nacionais + estaduais CE + municipais).
- **Feriados Fortaleza fixos (MM-DD)**: 01-01, 03-19, 03-25, 04-21, 05-01, 08-15, 09-07, 10-12, 11-02, 11-15, 11-20, 12-25
- **Feriados móveis 2026**: 02-16, 02-17, 04-03, 04-13, 06-04
- **Feriados móveis 2027**: 02-08, 02-09, 03-26, 05-27
- **Timezone**: prazo armazenado em UTC, exibido em Fortaleza (UTC-3). Input do admin converte Fortaleza→UTC antes de salvar.
- **qtd_usado**: coluna adicionada em `estoque_itens` para rastrear nobreaks usados retornando ao estoque. Wizard não pede seleção — usa o mesmo item da saída com `cor: 'usado'`.
- **Wizard wizard**: perguntas de conclusão por categoria (mouse, teclado, monitor, nobreak). Hardware removido. Nobreak sem bateria.
- **Deploy**: Stop hook em `ClaudeCode/.claude/settings.json` faz commit+push automático após cada resposta.
- **z-index**: histórico de movimentações (z=150 temporário) cede espaço para modal de chamado (z=200) quando admin clica "Ver chamado".

## 2026-05-11

- **setor_origem**: coluna adicionada em `estoque_movimentacoes`. Ao dar entrada de toner, pergunta se veio de algum setor. Permite rastrear redistribuição interna de suprimentos.
- **Push mobile (is_mobile)**: coluna `is_mobile` adicionada em `push_subscriptions`. App `/mobile` envia `is_mobile: true`; desktop envia `false`. Subscriptions mobile recebem URL `/mobile` nas notificações (em vez de `/admin-painel.html`).
- **pushsubscriptionchange**: SW agora envia `oldEndpoint` + nova subscription para `/api/admin/push/resubscribe`. Backend deleta registro antigo e salva o novo atomicamente. Corrige notificações que paravam do nada após rotação de subscription pelo browser.
- **Reconexão automática de push**: eventos `focus` e `online` disparam `_subscribePush()` tanto no desktop quanto no mobile. Garante re-inscrição após o browser invalidar silenciosamente a subscription.
- **Janela de 10min nos alertas**: `checarPrazos()` agora dispara alerta "🚨 Prazo encerrando agora!" para chamados com prazo em 0-10min. Intervalo reduzido para 2 minutos para capturar essa janela.
- **prazo_alertas reset**: `atualizarPrazo()`, `reabrirChamado()` e `reabrirChamadoUsuario()` agora fazem `DELETE FROM prazo_alertas WHERE chamado_id = ?` antes de salvar. Corrige bug em que alertas nunca disparavam após o primeiro prazo por causa da PRIMARY KEY `(chamado_id, tipo)`.
- **Filtro por ID no painel admin**: campo `filtro-id` com debounce 150ms (client-side). Filtros de prioridade, data-inicio e data-fim removidos por simplificação.
- **Histórico de chamados por usuário**: botão ícone na tabela de usuários abre modal (z-index 3000) com stats + cards. Clicar no `#ID` de um chamado abre popup do chamado (z-index 3100) via `chamado-modal.js` sem navegar para outra tela.
- **Botões de ação como ícones SVG**: tabela de usuários (admin-usuarios) migrou de botões de texto empilhados para toolbar de ícones SVG agrupados (editar, histórico, ativar/desativar, excluir).
- **iOS PWA**: `manifest.json` criado com ícones e `display: standalone`. Meta tags `apple-mobile-web-app-*` adicionadas em `mobile.html`. Push só funciona em modo standalone (limitação Apple) — app detecta `_isIOS && !_isStandalone` e exibe banner de instalação em vez do botão de notificação.
- **Bug chat compartilhado**: `_chatAdminIv` não era limpo ao abrir novo chamado, fazendo mensagens aparecerem em todos os chamados abertos na sessão. Fix: `clearInterval(_chatAdminIv)` no início de `abrirModal()` + guard de race condition comparando `chamadoAtual.id` com `chamadoId`.
- **Badge #ID universal**: badge com número do chamado adicionado em admin-painel (cards), mobile (cards e detalhe) e portal do usuário (cards).

## 2026-05-12

- **Integração SegundoCerebroOficial**: todo o contexto do projeto documentado no vault (CONTEXTO, DECISOES, Projeto note, MOC).

