---
name: nota-permanente
description: Cria zettel atômico em "05 - Referências/" a partir de um trecho/ideia. Use quando o usuário disser "criar zettel", "nota permanente", "transformar em atômica", "atomizar essa ideia", "salvar como permanente".
---

# Skill — Nota Permanente (Zettel Atômico)

## Quando disparar
- "criar zettel"
- "nota permanente"
- "atomizar essa ideia"
- "salvar como permanente"

## Passos
1. Receber trecho/ideia do usuário.
2. Resumir em UMA frase declarativa (ideia central).
3. Gerar título curto e descritivo (max 80 chars).
4. Gerar ID `YYYYMMDDHHmm` da hora atual.
5. Criar arquivo `05 - Referências/{ID} - {Título}.md` usando `99 - Templates/Template - Nota Permanente.md`.
6. **Buscar conexões**:
   - Grep palavras-chave da ideia em toda a vault.
   - Ler top 5 notas mais relevantes.
   - Escolher 2-5 que realmente se conectam (não apenas mencionam termos).
7. **Aplicar links bidirecionais**:
   - Adicionar `[[link]]` na seção "## Conexões" da nota nova.
   - Editar cada nota relacionada adicionando link de volta numa seção "## Notas relacionadas".
8. Sugerir 1-2 perguntas em aberto na seção "## Perguntas".
9. Atualizar `_MOC - Referências` adicionando wikilink.
10. Logar em `_Claude/_HOT_CACHE.md` na seção "Última Sessão".

## Regras
- Frontmatter: `tipo: permanente`, `tags: [permanente]` + tags temáticas.
- Uma ideia por nota — se vier mais de uma, dividir em N zettels.
- Mínimo 2 links bidirecionais — se não houver, criar stub de MOC primeiro.

## O que NÃO fazer
- Não criar zettel duplicado (checar similaridade ≥ 70% antes).
- Não linkar para si mesma.
- Não esquecer o link de volta nas notas relacionadas.
