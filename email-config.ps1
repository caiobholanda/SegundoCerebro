# email-config.ps1
# Configuracoes de email para relatorios do Segundo Cerebro
# PREENCHA a EMAIL_SENHA_APP com sua App Password do Gmail (veja instrucoes abaixo)
#
# Como gerar a App Password:
#   1. Acesse: https://myaccount.google.com/apppasswords
#   2. Faca login com caiobholanda2007@gmail.com
#   3. Em "Selecionar app" escolha "Outro (nome personalizado)" → digite "CerebroTI"
#   4. Clique em "Gerar" → copie a senha de 16 caracteres (ex: abcd efgh ijkl mnop)
#   5. Cole abaixo substituindo os X

$EMAIL_REMETENTE    = "caiobholanda2007@gmail.com"
$EMAIL_DESTINATARIO = "caiobholanda2007@gmail.com"
$EMAIL_SMTP         = "smtp.gmail.com"
$EMAIL_PORTA        = 587
$EMAIL_SENHA_APP    = "XXXX XXXX XXXX XXXX"   # <-- SUBSTITUIR AQUI

function Enviar-Relatorio {
    param(
        [string]$Assunto,
        [string]$Corpo
    )
    if ($EMAIL_SENHA_APP -like "XXXX*") { return $false }
    try {
        $msg  = New-Object Net.Mail.MailMessage
        $msg.From = $EMAIL_REMETENTE
        $msg.To.Add($EMAIL_DESTINATARIO)
        $msg.Subject          = $Assunto
        $msg.Body             = $Corpo
        $msg.IsBodyHtml       = $false
        $msg.BodyEncoding     = [System.Text.Encoding]::UTF8
        $msg.SubjectEncoding  = [System.Text.Encoding]::UTF8

        $smtp             = New-Object Net.Mail.SmtpClient($EMAIL_SMTP, $EMAIL_PORTA)
        $smtp.EnableSsl   = $true
        $smtp.Credentials = New-Object System.Net.NetworkCredential($EMAIL_REMETENTE, $EMAIL_SENHA_APP)
        $smtp.Send($msg)
        $msg.Dispose()
        return $true
    } catch {
        try { $msg.Dispose() } catch {}
        return $false
    }
}
