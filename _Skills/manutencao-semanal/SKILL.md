---
name: manutencao-semanal
description: Roda manutenção do vault — encontra notas órfãs, tags inconsistentes, conexões faltando, frontmatter quebrado, status desatualizado. Use semanalmente (ex: toda sexta).
---

# Skill — Manutenção Semanal

## Quando disparar
- "manutenção semanal"
- "review semanal"
- "limpar o vault"
- toda sexta-feira (sugestão de cadência fixa)

## Passos
1. **Notas órfãs** (sem links de entrada nem saída):
   - Listar todas as `.md` (exceto MOCs e templates) sem wikilinks recebidos ou emitidos.
   - Sugerir destinos: arquivar OU conectar a algo.
2. **Tags inconsistentes**:
   - Listar todas as tags em uso.
   - Apontar variações (ex: `#produtividade` vs `#productivity` vs `#produtiv`).
   - Propor unificação.
3. **Frontmatter quebrado**:
   - Notas sem `tipo`, `criado` ou `atualizado`.
   - Notas com `status` inválido (fora de: ativo / em-andamento / concluido / arquivado / ativa / rascunho).
4. **Projetos parados**:
   - Em `01 - Projetos/` com `status: ativo` mas `atualizado:` há mais de 14 dias.
   - Sugerir mover para `em-andamento` ou arquivar.
5. **Inbox acumulada**:
   - Se `00 - Inbox/` tem mais de 10 itens não-processados → sugerir `processar-inbox`.
6. **Pesquisas sem síntese**:
   - Notas em `03 - Pesquisa/` cuja seção "🎯 Síntese" está vazia.
7. **MOCs desatualizados**:
   - Comparar arquivos de cada pasta com wikilinks no MOC dela. Apontar faltantes.
8. **Relatório final**:
   - Criar/atualizar nota `06 - Diário/Manutenção - YYYY-Www.md` com:
     - Resumo das ações.
     - Itens revisados.
     - Pendências para o usuário decidir.

## Tom do relatório
- Curto, direto, em formato de checklist.
- Itens acionáveis, nunca genéricos.

## O que NÃO fazer
- Não modificar notas sem autorização explícita do usuário (a skill **propõe**, não **executa**).
- Não unificar tags sem confirmação.
