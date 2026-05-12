---
name: nota-diaria
description: Cria a nota diária do dia em "06 - Diário/" puxando pendências do diário anterior e listando projetos ativos. Use quando o usuário disser "abrir nota do dia", "diário de hoje", "começar o dia".
---

# Skill — Nota Diária

## Quando disparar
- "abrir nota do dia"
- "diário de hoje"
- "começar o dia"
- "criar diário"
- início de manhã sem nota correspondente

## Passos
1. **Determinar a data**: usar a data atual no formato `YYYY-MM-DD`.
2. **Verificar existência**: se `06 - Diário/{data-hoje}.md` já existe, abrir ao invés de recriar.
3. **Criar a nota** a partir de `99 - Templates/Template - Diário.md`. Substituir `{{date:YYYY-MM-DD}}` e `{{date:dddd}}` pela data real e dia da semana em português.
4. **Puxar pendências do diário anterior**:
   - Encontrar o arquivo mais recente em `06 - Diário/` antes de hoje.
   - Extrair tarefas com `- [ ]` ainda não marcadas.
   - Inserir sob "## ⏪ Pendências de ontem".
5. **Listar projetos ativos**:
   - Buscar notas em `01 - Projetos/` com frontmatter `status: ativo`.
   - Inserir wikilinks sob "## 🚀 Projetos ativos".
6. **Atualizar `_MOC - Diário`**: adicionar wikilink para a nova nota.
7. **Abrir** a nota criada para o usuário.

## Convenções obrigatórias
- Frontmatter: `tipo: diario`, `criado: <hoje>`, `atualizado: <hoje>`, `tags: [diario]`.
- Nome do arquivo: `YYYY-MM-DD.md`.
- Manter exatamente os cabeçalhos do template.

## O que NÃO fazer
- Não criar duplicata se já existe.
- Não copiar tarefas já marcadas como concluídas.
- Não sobrescrever conteúdo do diário anterior.
