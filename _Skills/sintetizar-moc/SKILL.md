---
name: sintetizar-moc
description: Gera ou atualiza um Map of Content (MOC) sobre um tópico. Use quando o usuário disser "criar MOC de X", "atualizar mapa de Y", "consolidar tópico Z".
---

# Skill — Sintetizar MOC

## Passos
1. Receber tópico.
2. Buscar notas relacionadas em toda a vault (grep + ranking).
3. Agrupar por subtema.
4. Gerar/atualizar arquivo na pasta apropriada com nome `_MOC - {Tópico}.md`.
5. Estrutura:

```markdown
---
tipo: moc
criado: YYYY-MM-DD
atualizado: YYYY-MM-DD
tags: [moc]
---

# {Tópico}

## Definição

## Subtemas
### Subtema 1
- [[Nota A]]
- [[Nota B]]
### Subtema 2
- [[Nota C]]

## Perguntas em aberto
-

## Próximos zettels sugeridos
-
```

6. Atualizar `🏠 Home.md` se o MOC for de alto nível.
