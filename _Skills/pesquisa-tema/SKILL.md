---
name: pesquisa-tema
description: Pesquisa um tema na web, sintetiza e salva como nota em "03 - Pesquisa/" com links cruzados para o que já existe no vault. Use quando o usuário disser "pesquisar X", "estudar X", "investigar X".
---

# Skill — Pesquisa de Tema

## Quando disparar
- "pesquisar [tema]"
- "estudar [tema]"
- "investigar [tema]"
- "preciso aprender sobre [tema]"

## Passos
1. **Definir pergunta central** com o usuário (1 frase).
2. **Buscar na web** (3-5 fontes diversas — preferir docs oficiais, papers, blogs especializados).
3. **Para cada fonte importante**: criar nota `Referência - Tipo - Título.md` em `05 - Referências/` usando `Template - Referência`.
4. **Criar a nota de pesquisa** em `03 - Pesquisa/` usando `Template - Pesquisa`:
   - Pergunta central no topo.
   - Síntese de 3-5 linhas (suas palavras, não cópia).
   - Detalhes em bullets/parágrafos.
   - Links wiki para todas as referências criadas.
5. **Cruzar com vault existente**:
   - Buscar notas em `03 - Pesquisa/`, `01 - Projetos/`, `05 - Referências/` que tratem de temas relacionados.
   - Adicionar wikilinks bidirecionais (em "🔗 Conexões" da pesquisa nova).
   - Preencher `relacionado-a:` no frontmatter.
6. **Atualizar** `_MOC - Pesquisa` adicionando wikilink.

## Boas práticas
- Citar fontes — não inventar.
- Marcar `🚧 Lacunas` no fim da nota (o que ainda não sabe).
- Se a pesquisa fizer mais sentido como roteiro, sugerir converter (`esqueleto-roteiro`).

## O que NÃO fazer
- Não copiar parágrafos de fontes — sempre sintetizar.
- Não criar referência sem URL e autor.
