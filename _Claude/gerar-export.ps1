# gerar-export.ps1
# Gera _EXPORT/brain-completo.md — arquivo consolidado para upload no claude.ai Projects.
# Rode manualmente ou via hook Stop para manter sincronizado.
# Resultado: um unico .md com o essencial do vault para usar em qualquer dispositivo.

$VAULT   = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$EXPORT  = Join-Path $VAULT "_Claude\_EXPORT"
$SAIDA   = Join-Path $EXPORT "brain-completo.md"
$date    = Get-Date -Format "yyyy-MM-dd"
$time    = Get-Date -Format "HH:mm"

if (-not (Test-Path $EXPORT)) { New-Item -ItemType Directory -Path $EXPORT -Force | Out-Null }

# ── Cabecalho ────────────────────────────────────────────────────────────────
$content = @"
# Segundo Cérebro — Export para Claude.ai Projects
> Gerado automaticamente em $date às $time. Não edite — será sobrescrito.
> Este arquivo deve ser carregado como Project Knowledge no claude.ai.

---

"@

# ── GLOBAL (preferencias e padroes) ─────────────────────────────────────────
$globalPath = Join-Path $VAULT "_Claude\_GLOBAL.md"
if (Test-Path $globalPath) {
    $raw = Get-Content $globalPath -Raw -Encoding UTF8
    $raw = $raw -replace '(?s)^---.*?---\s*', ''
    $content += "## Conhecimento Global`n`n$($raw.Trim())`n`n---`n`n"
}

# ── HOT CACHE (ultima sessao) ─────────────────────────────────────────────────
$hotPath = Join-Path $VAULT "_Claude\_HOT_CACHE.md"
if (Test-Path $hotPath) {
    $raw = Get-Content $hotPath -Raw -Encoding UTF8
    $raw = $raw -replace '(?s)^---.*?---\s*', ''
    $content += "## Contexto Recente (Hot Cache)`n`n$($raw.Trim())`n`n---`n`n"
}

# ── REGRAS DO VAULT (CLAUDE.md - primeiras 80 linhas) ────────────────────────
$claudeMdPath = Join-Path $VAULT "CLAUDE.md"
if (Test-Path $claudeMdPath) {
    $lines = Get-Content $claudeMdPath -Encoding UTF8 | Select-Object -First 80
    $content += "## Regras do Vault (CLAUDE.md)`n`n$($lines -join "`n")`n`n---`n`n"
}

# ── CONTEXTO DOS PROJETOS ────────────────────────────────────────────────────
$projDir = Join-Path $VAULT "_Claude\projetos"
if (Test-Path $projDir) {
    $content += "## Projetos Ativos`n`n"
    Get-ChildItem $projDir -Directory | ForEach-Object {
        $projNome = $_.Name
        $ctxPath  = Join-Path $_.FullName "_CONTEXTO.md"
        if (Test-Path $ctxPath) {
            $raw = Get-Content $ctxPath -Raw -Encoding UTF8
            $raw = $raw -replace '(?s)^---.*?---\s*', ''
            $content += "### $projNome`n`n$($raw.Trim())`n`n"
        }
    }
    $content += "---`n`n"
}

# ── PESQUISAS RECENTES (ultimas 10, ordenadas por data) ──────────────────────
$pesquisaDir = Join-Path $VAULT "03 - Pesquisa"
if (Test-Path $pesquisaDir) {
    $content += "## Pesquisas Recentes`n`n"
    $pesquisas = Get-ChildItem $pesquisaDir -Filter "Pesquisa - *.md" |
                 Sort-Object Name -Descending |
                 Select-Object -First 10

    foreach ($p in $pesquisas) {
        $raw = Get-Content $p.FullName -Raw -Encoding UTF8
        # Remover frontmatter
        $raw = $raw -replace '(?s)^---.*?---\s*', ''
        # Pegar so primeiras 40 linhas de cada pesquisa
        $linhas = ($raw -split "`n" | Select-Object -First 40) -join "`n"
        $content += "### $($p.BaseName)`n`n$($linhas.Trim())`n`n...[truncado]`n`n"
    }
    $content += "---`n`n"
}

# ── INSTRUCOES DE COMPORTAMENTO ───────────────────────────────────────────────
$content += @"
## Instruções de Comportamento para o Claude

Você é o assistente pessoal de Caio Holanda, estagiário de TI no Hotel Gran Marquise (Fortaleza-CE).

### Prioridades de Conhecimento
1. **Claude API e Claude Code** — máxima expertise: API, tool use, streaming, prompt caching, hooks, skills, economia de tokens
2. **Deploy e infraestrutura** — como colocar sites no ar (Railway, Vercel, VPS, HTTPS, CI/CD)
3. **sistema-chamados** — sistema de suporte TI do hotel, Node.js + SQLite + Railway
4. **Tecnologia geral** — IA, programação, segurança, cloud, mercado TI

### Estilo de Resposta
- Respostas curtas e diretas — sem enrolação
- Sem emojis
- Timezone: America/Fortaleza (UTC-3)
- Português brasileiro

### O Que Você Sabe Sobre o Usuário
- Stack principal: Node.js + Express + SQLite + JWT (sem frameworks frontend)
- Deploy via Railway + GitHub Actions
- Usa Windows 11 + PowerShell + Claude Code no terminal
- Prefere código funcional antes de explicações longas
"@

# ── Salvar ───────────────────────────────────────────────────────────────────
$content | Out-File -FilePath $SAIDA -Encoding UTF8

Write-Host "Export gerado: $SAIDA"
Write-Host "Tamanho: $([math]::Round((Get-Item $SAIDA).Length / 1KB, 1)) KB"
Write-Host ""
Write-Host "PROXIMOS PASSOS:"
Write-Host "1. Va em claude.ai → Projects → crie 'Segundo Cerebro'"
Write-Host "2. Em Project Knowledge, faca upload de: $SAIDA"
Write-Host "3. Use esse projeto em qualquer dispositivo (web, mobile, PC)"
