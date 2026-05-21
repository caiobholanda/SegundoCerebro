$VAULT = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$LOG   = "$VAULT\_Claude\sessoes\sync-obsidian.log"
$GIT   = "C:\Program Files\Git\bin\git.exe"

$ts = Get-Date -Format "yyyy-MM-dd HH:mm"

if (-not (Test-Path (Split-Path $LOG))) {
    New-Item -ItemType Directory -Path (Split-Path $LOG) -Force | Out-Null
}

Set-Location $VAULT

$resultado = & $GIT pull --no-rebase --no-edit origin main 2>&1
$linhas    = $resultado | Where-Object { $_ -match "^\s*\d+ file" -or $_ -match "Already up to date" }

if ($linhas -match "Already up to date") {
    Add-Content $LOG "[$ts] Já sincronizado."
} else {
    Add-Content $LOG "[$ts] Sincronizado: $linhas"
}
