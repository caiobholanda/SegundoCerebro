---
tipo: pesquisa
status: em-andamento
criado: 2026-07-08
atualizado: 2026-07-08
<<<<<<< HEAD
tags: [ia, claude, dev, cli, agentes]
pergunta-central: Quais são as atualizações do Claude Code CLI e do sistema de agentes em julho de 2026?
=======
pergunta-central: Como o Claude Code pode ser integrado via CLI para orquestrar agentes de forma eficiente em fluxos de trabalho automatizados?
>>>>>>> d79cf5a24b461c17338c2294a2ee3c5c7ed5def0
relacionado-a: []
related: []
---

# Claude Code — CLI e Agentes — 2026-07-08

<<<<<<< HEAD
## Workflows Dinâmicos

Adicionada configuração **"Dynamic workflow size"** em `/config` para controlar o número de agentes em workflows dinâmicos (small / medium / large). Permite calibrar custo × paralelismo em tarefas com múltiplos subagentes.

## OpenTelemetry — Novos Atributos

Atributos OTel adicionados: `workflow.run_id` e `workflow.name` — rastreamento completo de atividade de agentes por sessão/workflow em plataformas de observabilidade.

## Modo de Permissão Manual como Padrão

Permission mode **"Manual"** agora é o padrão em CLI, VS Code e JetBrains. Significa que cada ação de escrita/execução requer aprovação explícita — mais seguro para sessões não supervisionadas.

## Correções de Confiabilidade (Julho)

**Background agents**:
- Agentes mostravam apenas "exit_with_message" ao falhar na inicialização → corrigido
- Sessões de background ignoravam `effortLevel` nas configurações → corrigido
- Agentes não reconheciam flag `disableMouse` em background → corrigido
- Erro ao abrir chats de agentes em modo background → corrigido

**Edição de arquivos**:
- Falha ao editar arquivos em diretórios não-git com WorktreeCreate hooks → corrigido

**AskUserQuestion**: não mais auto-continua sem interação do usuário.

## Correções de Interface e Terminal

- Conteúdo saltando ao rolar histórico → corrigido
- Terminal piscando durante digitação em modo bash → corrigido
- Problema com histórico de shell suggestions → corrigido
- Melhorias no modo fullscreen

## Links

- [Claude Code Changelog — gradually.ai](https://www.gradually.ai/en/changelogs/claude-code/)
- [Releases — GitHub anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Claude Code Updates Julho 2026 — Releasebot](https://releasebot.io/updates/anthropic/claude-code)
=======
## ❓ Pergunta central
Como o Claude Code pode ser integrado via CLI para orquestrar agentes de forma eficiente em fluxos de trabalho automatizados?

## 🎯 Síntese (3-5 linhas)
O Claude Code oferece capacidades de automação avançadas via CLI, permitindo a execução de comandos e scripts que ativam agentes em fluxos de trabalho específicos. Sua integração com APIs e SDKs (como o Anthropic SDK) amplia a funcionalidade, permitindo personalização profunda e interoperabilidade entre sistemas. O desafio principal é garantir segurança e consistência na execução de tarefas complexas.

## 🔬 Detalhes
- O Claude Code é projetado para funcionar como um hub de automação, permitindo que agentes sejam ativados e coordenados via CLI.
- CLI (Command Line Interface) permite execução direta de comandos sem depender de interfaces gráficas, ideal para automação e integração com sistemas existentes.
- Agentes podem ser configurados para executar tarefas específicas, como processamento de dados ou geração de conteúdo, com base em prompts detalhados.
- O Anthropic SDK complementa o Claude Code, fornecendo acesso programático às APIs de Claude e ampliando sua capacidade de adaptação.
- Segurança é uma preocupação central ao integrar agentes via CLI, especialmente quando há necessidade de manipular dados sensíveis.
- Fluxos de trabalho podem ser configurados para serem desencadeados por eventos, como entrada de novos dados ou execução de scripts cron.

## 🔗 Conexões
- [[Claude API e Anthropic SDK]]
- [[Projeto - Sistema Chamados]]

## 📚 Fontes
- [[Referência - Documentação Anthropic SDK]]
- [[Referência - Segurança em IA e Automação]] 

## 🚧 Lacunas
- Como garantir que os agentes executados via CLI tenham alta resiliência contra falhas inesperadas?
- Quais são as melhores práticas para testar fluxos automatizados com Claude Code antes de implementá-los em produção?
- Exploração de casos de uso específicos para Claude Code em diferentes domínios (ex.: finanças, saúde, suporte técnico).
```
>>>>>>> d79cf5a24b461c17338c2294a2ee3c5c7ed5def0
