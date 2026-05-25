---
name: lacunas
description: Analisa o vault e identifica gaps de conhecimento — temas mencionados mas não pesquisados, notas sem "related:", áreas com poucas conexões, perguntas abertas não respondidas. Use quando o usuário pedir "analisar lacunas", "o que me falta aprender", "gaps no vault".
---

# Skill — Análise de Lacunas (Gap Analysis)

## Quando disparar
- "analisar lacunas do vault"
- "o que me falta aprender?"
- "gaps no meu conhecimento sobre [área]"
- "quais perguntas ainda não respondi?"
- `/lacunas`

## Passos

1. **Coletar perguntas em aberto**:
   - Ler seção `## 🚧 Lacunas` de todas as notas em `03 - Pesquisa/`.
   - Ler campo `## ❓ Pergunta central` de pesquisas com `status: em-andamento`.
   - Verificar seção `## Perguntas abertas` do `CLAUDE.md` (seção 0 — Contexto Ativo).

2. **Identificar temas mencionados mas não pesquisados**:
   - Buscar wikilinks em `01 - Projetos/` e `06 - Diário/` que apontem para notas inexistentes (links quebrados).
   - Listar tags sem notas correspondentes.

3. **Identificar notas isoladas**:
   - Notas em `05 - Referências/` com `related: []` vazio — nunca conectadas.
   - Projetos em `01 - Projetos/` sem nenhuma pesquisa ou referência linkada.

4. **Identificar áreas fracas**:
   - `02 - Áreas/` com poucas notas associadas.
   - Temas frequentemente mencionados no diário sem pesquisa correspondente.

5. **Gerar relatório de lacunas**:
   - Salvar em `03 - Pesquisa/` como `Lacunas - YYYY-MM-DD.md`:
     ```yaml
     ---
     tipo: pesquisa
     criado: YYYY-MM-DD
     atualizado: YYYY-MM-DD
     pergunta-central: Quais são os gaps do vault em [data]?
     related: []
     tags: [lacunas, meta]
     ---
     ```
   - Seções: `## 🔴 Críticas` (bloqueia projetos), `## 🟡 Importantes`, `## 🟢 Oportunidades`.
   - Para cada lacuna: descrição + por que importa + sugestão de skill para preencher (`/pesquisa`, `/zettel`, etc.).

6. **Priorizar**: recomendar as 3 lacunas mais impactantes para atacar primeiro.

## Boas práticas
- Focar em lacunas que afetam projetos ativos (`01 - Projetos/` com `status: ativo`).
- Não é auditoria de qualidade — é mapa de próximos passos.
- Atualizar `related:` das notas encontradas como isoladas.
