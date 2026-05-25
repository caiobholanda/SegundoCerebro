---
name: reuniao
description: Prepara contexto completo para uma reunião a partir de notas do vault. Use quando o usuário disser "preparar reunião sobre X", "reunião com Y amanhã", "briefing para X".
---

# Skill — Preparação de Reunião

## Quando disparar
- "preparar reunião sobre [tema]"
- "tenho reunião com [pessoa/área] [quando]"
- "briefing para [evento]"
- "o que tenho no vault sobre [tema]?"

## Passos

1. **Identificar escopo**: perguntar (ou inferir) tema, participantes, objetivo e data.
2. **Buscar no vault**:
   - `01 - Projetos/` — projetos relacionados ao tema/área
   - `03 - Pesquisa/` — pesquisas sobre o tema
   - `05 - Referências/` — materiais consultivos relevantes
   - `06 - Diário/` — entradas recentes que mencionam o tema ou participantes
   - `_Claude/projetos/` — decisões e contexto de projetos ativos
3. **Sintetizar** um briefing com:
   - **Contexto**: o que já foi decidido/discutido antes
   - **Pendências em aberto**: perguntas não resolvidas, próximos passos do diário
   - **Pontos-chave**: 3-5 bullets do que levar para a reunião
   - **Materiais**: links para notas relevantes do vault
4. **Salvar em `00 - Inbox/`** como `Reuniao - YYYY-MM-DD - Tema.md` com frontmatter:
   ```yaml
   ---
   tipo: inbox
   criado: YYYY-MM-DD
   atualizado: YYYY-MM-DD
   tags: [reuniao, processar]
   related: []
   ---
   ```
5. **Opcional**: após a reunião, processar com `/inbox` para extrair decisões e próximos passos.

## Boas práticas
- Buscar menções nos últimos 30 dias de diário primeiro.
- Se não houver nada no vault, dizer explicitamente e sugerir criar uma pesquisa.
- Não inventar contexto que não está no vault.
