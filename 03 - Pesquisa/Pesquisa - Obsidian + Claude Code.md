---
tipo: pesquisa
criado: 2026-04-29
atualizado: 2026-04-29
pergunta-central: Como combinar Obsidian e Claude Code para criar um segundo cérebro funcional?
relacionado-a: [[Projeto - Setup Segundo Cérebro]]
tags: [pesquisa, obsidian, ia, claude-code]
---

# Pesquisa - Obsidian + Claude Code

## ❓ Pergunta central
Como combinar Obsidian e Claude Code para criar um segundo cérebro funcional sem depender de plugins comunitários?

## 🎯 Síntese
Obsidian é o frontend (markdown local, navegação, graph view) e Claude Code é o agente que opera o vault. A integração se sustenta em três pilares: **skills oficiais do Kepano** (regras de formato), **CLAUDE.md** (regras do vault) e **skills customizadas** (automação do loop diário). Resultado: um sistema onde o usuário escreve o essencial e o agente cuida da estrutura, conexões e manutenção.

## 🔬 Detalhes
- **Markdown local** elimina dependência de servidor e formato proprietário — LLMs leem `.md` nativamente.
- **Skills do Kepano** (`obsidian-markdown`, `obsidian-bases`, `json-canvas`, `obsidian-cli`, `defuddle`) garantem que arquivos gerados pelo Claude não quebrem no Obsidian.
- **CLAUDE.md** funciona como manual estilístico do vault — Claude lê antes de cada operação.
- **Skills customizadas** automatizam capturas, processamento e revisão.
- **JSON Canvas** permite criar mapas visuais inteiros via prompt.
- Loop: nota diária → pesquisa → inbox → roteiro → manutenção semanal.

## 🔗 Conexões
- [[Projeto - Setup Segundo Cérebro]]
- [[Referência - Skills do Kepano]]
- [[Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro]]

## 📚 Fontes
- [[Referência - Vídeo - Claude Code Transformou Obsidian em Segundo Cérebro]]
- [[Referência - Skills do Kepano]]

## 🚧 Lacunas
- Como integrar com Claude Sync (oficial) sem quebrar o setup local?
- Vale incluir Bases (`.base`) já no setup inicial ou só quando aparecer demanda?
- Como gerenciar múltiplos vaults (pessoal + cliente)?
