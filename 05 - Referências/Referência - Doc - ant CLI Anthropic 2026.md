---
tipo: referencia
fonte: doc
autor: Anthropic
url: https://github.com/anthropics/anthropic-cli
criado: 2026-05-14
atualizado: 2026-05-14
tags: [referencia, claude, api, cli, ant, ferramentas]
---

# Referência — ant CLI (Anthropic CLI)

Repositório oficial do `ant`, a CLI de linha de comando para a Claude API, lançada junto com Claude Managed Agents em 08/04/2026.

## O que é

- CLI escrita em Go para interagir com a Claude API via terminal
- Permite gerenciar recursos da API (agentes, sessões, memory stores) versionados em arquivos YAML
- Integração nativa com Claude Code
- Substitui fluxos de curl manual para Managed Agents

## Instalação

### macOS / Linux (Homebrew) — recomendado
```bash
brew install anthropics/tap/ant
```

### Qualquer plataforma com Go instalado
```bash
go install 'github.com/anthropics/anthropic-cli/cmd/ant@latest'
```
Requer Go 1.22+. Binário em `$HOME/go/bin` (ou `$GOPATH/bin`).

### Windows
**Sem suporte nativo no momento.** Opções para Windows:
1. **Go install** (se Go estiver instalado): `go install 'github.com/anthropics/anthropic-cli/cmd/ant@latest'`
2. **WSL** (Windows Subsystem for Linux) + Homebrew
3. Build from source (clonar repositório + compilar)

**Não há pacotes npm ou pip.** A ferramenta é compilada em Go.

## Exemplos de uso

```bash
# Criar memory store
ant beta:memory-stores create --name "Preferences" --description "..."

# Criar sessão
ant beta:sessions create <<YAML
agent: $agent_id
environment_id: $environment_id
resources:
  - type: memory_store
    memory_store_id: $store_id
YAML
```

## Fontes relacionadas

- [[Referência - Doc - Claude Managed Agents Memory 2026]]
- [[Referência - Doc - Claude Agent SDK Overview]]
- [[Referência - Doc - Anthropic Release Notes 2026]]
