---
name: esqueleto-roteiro
description: Gera o esqueleto de um roteiro em "04 - Roteiros/" a partir das pesquisas linkadas a um projeto. Use quando o usuário disser "esqueleto de roteiro", "estruturar roteiro", "começar roteiro".
---

# Skill — Esqueleto de Roteiro

## Quando disparar
- "esqueleto de roteiro sobre X"
- "estruturar roteiro de [projeto]"
- "começar roteiro"
- "quero produzir conteúdo sobre [tema]"

## Entrada
- Tema OU projeto OU lista de pesquisas a usar como base.

## Passos
1. **Definir promessa** com o usuário (1 frase: o que o público leva?).
2. **Coletar material**:
   - Buscar notas em `03 - Pesquisa/` com `relacionado-a:` apontando para o projeto/tema.
   - Listar referências em `05 - Referências/` linkadas.
3. **Criar arquivo** em `04 - Roteiros/` com nome `Roteiro - YYYY-MM-DD - Título.md` (data = hoje).
4. **Aplicar** `Template - Roteiro`.
5. **Preencher**:
   - Promessa (do passo 1).
   - Hook (sugerir 2-3 opções de abertura).
   - Estrutura (3-5 seções derivadas do material).
   - Desenvolvimento (bullets do conteúdo principal por seção).
   - CTA (deixar em branco para usuário escolher).
   - Pesquisas-base (wikilinks).
   - Referências (wikilinks).
6. **Atualizar** `_MOC - Roteiros`.

## Boas práticas
- Sugerir 2-3 hooks possíveis, não só 1.
- Estrutura precisa ter progressão lógica (problema → causa → solução → ação).
- Se faltar pesquisa, sinalizar ao usuário com `🚧 Lacuna: pesquisar X antes de gravar`.

## O que NÃO fazer
- Não escrever o roteiro completo — só o esqueleto. Voz é do usuário.
- Não inventar dados/citações sem fonte no vault.
