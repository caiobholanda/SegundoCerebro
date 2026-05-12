---
name: revisao-mensal
description: Roda no dia 1 de cada mês. Consolida MOCs, detecta zettels órfãos, arquiva projetos concluídos, gera narrativa do mês.
---

# Skill — Revisão Mensal

## Passos
1. **Projetos**: listar todos em `01 - Projetos/`. Para cada `status: concluido`, mover para `07 - Arquivo/Projetos/YYYY-MM/`.
2. **Áreas**: listar `02 - Áreas/`. Para cada uma sem nota nova no último mês, sinalizar como "negligenciada".
3. **Zettels órfãos**: rodar `conectar-notas` Modo 2.
4. **MOCs**: para cada MOC, recontar links — se algum ficou abaixo de 3, sugerir merge/arquivamento.
5. **Pesquisas**: arquivar tudo que estiver com `status: destilado` há mais de 30 dias.
6. **Narrativa**: gerar arquivo `06 - Diário/Revisao - YYYY-MM.md` com:
   - Top 5 zettels mais linkados criados no mês
   - Projetos concluídos
   - Padrões aprendidos (puxar de `_Claude/_GLOBAL.md` adicionados no mês)
   - Lacunas: temas com poucos zettels, perguntas sem resposta acumuladas
7. Atualizar `_MOC - Diário` e `_Claude/_HOT_CACHE.md`.
