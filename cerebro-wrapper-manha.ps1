$hora = (Get-Date).Hour
if ($hora -lt 9) {
    & "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\automacao-cerebro.ps1" -Rotina manha
} else {
    & "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial\automacao-cerebro.ps1" -Rotina pesquisa
}
