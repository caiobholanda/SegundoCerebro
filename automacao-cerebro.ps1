param(
    [Parameter(Mandatory)]
    [ValidateSet('manha','pesquisa','noite','semana','mes')]
    [string]$Rotina
)

$vault = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
Set-Location $vault

$date = Get-Date -Format "yyyy-MM-dd"

$prompts = @{
    'manha'   = "Use a skill nota-diaria. Depois liste os 3 projetos com tarefas mais urgentes."
    'pesquisa' = "Execute a pesquisa diaria autonoma. Use a skill pesquisa-tema para cada um dos 7 temas: Claude API, Claude Code, Economia de Tokens, Deploy e Infraestrutura, Inteligencia Artificial, Programacao e Dev, Mercado TI Brasil. Salve cada pesquisa em 03 - Pesquisa/ com o nome no formato exato: Pesquisa - $date - [Nome do Tema].md (exemplo: Pesquisa - $date - Claude API.md). Nunca omita o prefixo 'Pesquisa - ' nem a data."
    'noite'   = "Use a skill processar-inbox. Em seguida use a skill processar-inbox-pesquisa para o dia de hoje. Por último use a skill conectar-notas modo 'vassoura' nas notas criadas hoje."
    'semana'  = "Use a skill manutencao-semanal."
    'mes'     = "Use a skill revisao-mensal."
}

$log = "$vault\_Claude\sessoes\automacao.log"
if (-not (Test-Path (Split-Path $log))) { New-Item -ItemType Directory -Path (Split-Path $log) -Force | Out-Null }

$env:PATH += ";C:\Users\estagio.ti\AppData\Roaming\npm;C:\Users\estagio.ti\.local\bin;C:\Program Files\Git\bin"
$ts = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Commitar alterações locais antes do pull para evitar conflito com remote
$localChanges = git status --porcelain 2>&1
if ($localChanges) {
    git add -A 2>&1 | Out-Null
    git commit -m "auto: local antes do pull $ts" 2>&1 | Out-Null
    Add-Content $log "[$ts] git commit: alteracoes locais antes do pull"
}

# Sincronizar notas do GitHub Actions antes de rodar
$pullResult = git pull --no-rebase -X ours --no-edit origin main 2>&1
Add-Content $log "[$ts] git pull: $pullResult"

Add-Content $log "[$ts] Iniciando rotina: $Rotina"

$output = claude -p $prompts[$Rotina] --dangerously-skip-permissions 2>&1
$exit = $LASTEXITCODE

Add-Content $log "[$ts] Exit code: $exit"
Add-Content $log "[$ts] Output: $output"
