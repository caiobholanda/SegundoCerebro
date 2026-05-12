$vault   = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$wrapper = "$vault\cerebro-wrapper-manha.ps1"

$action   = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -File `"$wrapper`""
$trigger1 = New-ScheduledTaskTrigger -Daily -At "07:00"
$trigger2 = New-ScheduledTaskTrigger -Daily -At "10:00"

Set-ScheduledTask -TaskName "cerebro-manha" -Action $action -Trigger @($trigger1, $trigger2)
Write-Host "OK — cerebro-manha agora roda as 07h (nota diaria) e 10h (pesquisa)"
