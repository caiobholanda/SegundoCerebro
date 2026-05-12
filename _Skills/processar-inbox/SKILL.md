---
name: processar-inbox
description: Processa todas as notas em "00 - Inbox/" — classifica por tipo, renomeia conforme convenção, atualiza frontmatter e move para a pasta correta. Use quando o usuário disser "processar inbox", "limpar inbox", "organizar inbox".
---

# Skill — Processar Inbox

## Quando disparar
- "processar inbox"
- "limpar inbox"
- "organizar capturas"
- "tem coisa demais na inbox"

## Passos
1. **Listar** todas as notas em `00 - Inbox/` (exceto `_MOC - Inbox.md`).
2. **Para cada nota**:
   - Ler conteúdo + frontmatter.
   - **Classificar** o `tipo`:
     - É um esforço com prazo? → `projeto` (vai para `01 - Projetos/`).
     - É algo contínuo (saúde, finanças, hábitos)? → `area` (vai para `02 - Áreas/`).
     - Tem pergunta a responder? → `pesquisa` (`03 - Pesquisa/`).
     - Vai virar conteúdo? → `roteiro` (`04 - Roteiros/`).
     - É consultivo/citação? → `referencia` (`05 - Referências/`).
     - Pode ser descartado? → confirmar com usuário antes.
   - **Renomear** conforme convenção (`Tipo - Título.md`).
   - **Atualizar frontmatter**: completar `tipo`, `status`, `tags`, `atualizado: hoje`.
   - **Adicionar wikilinks** para notas relacionadas existentes.
   - **Mover** o arquivo.
   - **Atualizar** o MOC da pasta de destino (adicionar wikilink).
3. **Relatar** ao usuário: quantas notas processadas, para onde foram, quais ficaram com dúvida.

## Casos especiais
- Se a nota tem mais de 1 destino possível, perguntar ao usuário.
- Se a nota está vazia ou é só um link bruto, oferecer aplicar `defuddle` (skill do Kepano) para extrair conteúdo limpo.

## O que NÃO fazer
- Nunca apagar — em dúvida, mover para `07 - Arquivo/` com tag `#revisar`.
- Não inventar tags novas — usar as do CLAUDE.md.
