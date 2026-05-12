---
name: buscar-vault
description: Busca semântica em linguagem natural na vault inteira. Use quando o usuário fizer perguntas tipo "o que eu já escrevi sobre X", "achar nota sobre Y", "tenho algo sobre Z".
---

# Skill — Buscar Vault

## Passos
1. Receber pergunta em linguagem natural.
2. Decompor em 3-5 palavras-chave + sinônimos (em pt-BR).
3. Grep em toda a vault, ignorando `.obsidian/`, `obsidian-skills/`, `_Claude/_EXPORT/`.
4. Ler top 10 arquivos mais relevantes.
5. Sintetizar resposta em 3-7 frases citando `[[notas]]` de origem.
6. Se nenhuma nota responde — sugerir criar zettel novo via `nota-permanente`.
7. Se a busca pede algo do dia → consultar também último diário em `06 - Diário/`.

## Saída padrão
```
**Resposta**: ...

**Notas consultadas**:
- [[Nota A]] — relevância
- [[Nota B]] — relevância

**Lacuna detectada**: [se houver — sugerir próxima ação]
```
