$vault = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$action   = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -File `"$vault\pesquisa-diaria.ps1`""
$trigger  = New-ScheduledTaskTrigger -Daily -At "10:00"
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -ExecutionTimeLimit (New-TimeSpan -Minutes 30)
$principal = New-ScheduledTaskPrincipal -UserId "estagio.ti" -LogonType Interactive -RunLevel Highest
Register-ScheduledTask -TaskName "cerebro-pesquisa" -Action $action -Trigger $trigger -Settings $settings -Principal $principal -Description "Pesquisa diaria automatica do Segundo Cerebro" -Force
Write-Host "Task cerebro-pesquisa criada com sucesso!"
