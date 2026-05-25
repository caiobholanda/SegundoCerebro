---
name: expandir
description: Expande uma nota curta, rascunho ou bullet list em uma nota completa, bem estruturada e conectada ao vault. Use quando o usuário disser "expandir [nota]", "desenvolver esse rascunho", "completar essa nota".
---

# Skill — Expansão de Nota

## Quando disparar
- "expandir [[Nota X]]"
- "desenvolver esse rascunho"
- "completar essa nota"
- "transformar em nota permanente"
- `/expandir [nome da nota]`

## Passos

1. **Ler a nota alvo** — identificar tipo atual (inbox, fleeting, rascunho), conteúdo, tags.
2. **Identificar intenção**: é para virar permanente (zettel)? Pesquisa? Referência? Roteiro? Perguntar se não for claro.
3. **Buscar contexto no vault**:
   - Notas em `related:` ou `Conecta com`.
   - Pesquisas e referências sobre o mesmo tema.
   - Menções no diário.
4. **Expandir a nota**:
   - Aplicar o template correto (`Template - Nota Permanente`, `Template - Pesquisa`, etc.).
   - Preencher todas as seções do template com conteúdo real.
   - Usar wikilinks para conectar com notas existentes.
   - Preencher `related:` no frontmatter com as notas encontradas.
   - Marcar `🚧 Lacunas` no fim (o que ainda falta saber).
5. **Mover** para a pasta correta se ainda estiver em `00 - Inbox/`.
6. **Atualizar** `related:` das notas que mencionam este tema (bidirrecional).
7. **Atualizar** o MOC da pasta de destino.

## Boas práticas
- Não inventar conteúdo que não está na nota original nem no vault — expandir ≠ inventar.
- Preservar a voz e perspectiva do autor — só estruturar, não reescrever.
- Se a nota for muito pequena e não tiver contexto suficiente no vault, buscar na web antes de expandir (como `/pesquisa`).
- Notas de inbox que viram permanentes devem ter o original arquivado (`07 - Arquivo/`).
