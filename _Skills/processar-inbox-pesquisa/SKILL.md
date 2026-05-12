---
name: processar-inbox-pesquisa
description: Processa as notas geradas pela pesquisa-diaria.ps1, extrai insights atômicos, cria zettels e arquiva o material bruto. Use após cada execução da pesquisa diária ou quando o usuário disser "destilar pesquisa de hoje".
---

# Skill — Processar Inbox de Pesquisa

## Passos
1. Listar arquivos em `03 - Pesquisa/Pesquisa - YYYY-MM-DD - *.md` da data alvo (padrão: hoje).
2. Para cada arquivo:
   - Ler conteúdo.
   - Identificar 1-3 insights atômicos (não summary do texto inteiro — apenas o que **muda** alguma decisão ou abre pergunta nova).
   - Para cada insight: rodar fluxo da skill `nota-permanente`.
3. Após destilação, mover o arquivo bruto de `03 - Pesquisa/` para `07 - Arquivo/Pesquisas/YYYY-MM/`.
4. Atualizar `_MOC - Pesquisa` removendo links movidos.
5. Atualizar `_MOC - Arquivo` adicionando.
6. Log em `_Claude/_HOT_CACHE.md`.

## Regras
- Se nenhum insight atômico for extraível, marcar arquivo com frontmatter `status: descartado` e mover pro arquivo mesmo assim.
- Nunca destilar 2x o mesmo arquivo (checar `status: destilado` no frontmatter).
