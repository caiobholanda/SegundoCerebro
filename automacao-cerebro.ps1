param(
    [Parameter(Mandatory)]
    [ValidateSet('manha','noite','semana','mes')]
    [string]$Rotina
)

$vault = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
Set-Location $vault

$prompts = @{
    'manha'   = "Use a skill nota-diaria. Depois liste os 3 projetos com tarefas mais urgentes."
    'pesquisa' = "Execute a pesquisa diaria autonoma. Use a skill pesquisa-tema para cada um dos 7 temas: Claude API, Claude Code, Economia de Tokens, Deploy e Infraestrutura, Inteligencia Artificial, Programacao e Dev, Mercado TI Brasil. Salve cada pesquisa em 03 - Pesquisa/ seguindo as convencoes do vault."
    'noite'   = "Use a skill processar-inbox. Em seguida use a skill processar-inbox-pesquisa para o dia de hoje. Por último use a skill conectar-notas modo 'vassoura' nas notas criadas hoje."
    'semana'  = "Use a skill manutencao-semanal."
    'mes'     = "Use a skill revisao-mensal."
}

$env:PATH += ";C:\Users\estagio.ti\AppData\Roaming\npm;C:\Users\estagio.ti\.local\bin"
claude -p $prompts[$Rotina] --dangerously-skip-permissions
