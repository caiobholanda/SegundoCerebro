---
name: conectar-notas
description: Encontra conexões para uma nota específica ou processa todas as notas órfãs (sem links). Use quando o usuário disser "conectar notas", "achar links", "zettels órfãos", "conectar tudo", "conectar [[NotaX]]".
---

# Skill — Conectar Notas

## Modos

### Modo 1 — Conectar nota específica
Input: caminho da nota.
1. Ler conteúdo.
2. Extrair palavras-chave e conceitos.
3. Grep + leitura na vault inteira.
4. Propor 3-10 conexões com justificativa em 1 linha.
5. Pedir confirmação do usuário.
6. Aplicar bidirecional nas confirmadas.

### Modo 2 — Vassoura de órfãos
Input: nenhum.
1. Listar todas as notas em `05 - Referências/` e `03 - Pesquisa/` com 0 backlinks E 0 outlinks (excetuando MOCs).
2. Para cada uma, rodar Modo 1.
3. Reportar quantas foram conectadas.

## Atalho
Usuário diz "conectar tudo" → Modo 2.
Usuário diz "conectar [[NotaX]]" → Modo 1 com NotaX.
