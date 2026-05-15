# criar-task-continua.ps1
# Execute este script UMA VEZ como Administrador para registrar a task.
# Clique direito no script → "Executar como administrador"
# — ou no PowerShell Admin: .\criar-task-continua.ps1

$vault  = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$script = "$vault\pesquisa-continua.ps1"

$action = New-ScheduledTaskAction `
    -Execute   "powershell.exe" `
    -Argument  "-NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$script`"" `
    -WorkingDirectory $vault

# Trigger diario das 08:00, repetindo a cada 2 horas por 14 horas (ate 22:00)
$trigger = New-ScheduledTaskTrigger -Daily -At "08:00AM"
$repClass = Get-CimClass -ClassName MSFT_TaskRepetitionPattern -Namespace Root/Microsoft/Windows/TaskScheduler
$rep = New-CimInstance -CimClass $repClass -Property @{
    Interval          = "PT2H"    # a cada 2 horas
    Duration          = "PT14H"   # duração total: 14 horas (08:00 -> 22:00)
    StopAtDurationEnd = $false
} -ClientOnly
$trigger.Repetition = $rep

$settings = New-ScheduledTaskSettingsSet `
    -StartWhenAvailable `
    -ExecutionTimeLimit  (New-TimeSpan -Minutes 45) `
    -MultipleInstances   IgnoreNew `
    -RunOnlyIfNetworkAvailable

$principal = New-ScheduledTaskPrincipal `
    -UserId    "estagio.ti" `
    -LogonType Interactive `
    -RunLevel  Highest

Register-ScheduledTask `
    -TaskName   "cerebro-continuo" `
    -Action     $action `
    -Trigger    $trigger `
    -Settings   $settings `
    -Principal  $principal `
    -Description "Pesquisa autonoma continua a cada 2h (8h-22h) — 70% aleatorio, 30% temas fixos" `
    -Force | Out-Null

# Confirmação
$t    = Get-ScheduledTask "cerebro-continuo"
$info = Get-ScheduledTaskInfo "cerebro-continuo"
Write-Host ""
Write-Host "=== Task cerebro-continuo registrada com sucesso ===" -ForegroundColor Green
Write-Host "Estado        : $($t.State)"
Write-Host "Proximo ciclo : $($info.NextRunTime)"
Write-Host "Intervalo     : $($t.Triggers[0].Repetition.Interval)"
Write-Host "Duracao       : $($t.Triggers[0].Repetition.Duration)"
Write-Host ""
Write-Host "Horarios de execucao: 08:00, 10:00, 12:00, 14:00, 16:00, 18:00, 20:00, 22:00"
