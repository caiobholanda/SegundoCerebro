---
tipo: meta
criado: 2026-04-29
---

# `_Skills/` — Skills customizadas do Segundo Cérebro

Cinco skills que sustentam o loop diário do vault. Cada uma tem um `SKILL.md` com `name`, `description` e instruções passo-a-passo.

## Skills
- [[nota-diaria/SKILL|nota-diaria]]
- [[processar-inbox/SKILL|processar-inbox]]
- [[pesquisa-tema/SKILL|pesquisa-tema]]
- [[esqueleto-roteiro/SKILL|esqueleto-roteiro]]
- [[manutencao-semanal/SKILL|manutencao-semanal]]

## Como o Claude Code descobre essas skills

O caminho convencional é `.claude/skills/`. No ambiente atual essa pasta foi bloqueada, então as skills moram em `_Skills/`. Para o Claude Code reconhecer automaticamente, faça **uma** das opções abaixo (escolha a que preferir):

### Opção 1 — Symlink (recomendado, sem duplicar)
No PowerShell, dentro do vault:
```powershell
New-Item -ItemType SymbolicLink -Path ".claude\skills" -Target "..\_Skills"
```

### Opção 2 — Copiar
```powershell
robocopy _Skills .claude\skills /E
```

### Opção 3 — Apontar via CLAUDE.md (já feito)
O `CLAUDE.md` já instrui o agente a ler skills de `_Skills/`. Funciona se você invocar a skill por nome no prompt: "use a skill `nota-diaria`".

## Adicionar uma nova skill
1. Criar pasta `_Skills/<nome-da-skill>/`.
2. Criar `SKILL.md` com frontmatter `name` e `description` claros.
3. Atualizar [[CLAUDE]] mencionando-a na seção 7.
