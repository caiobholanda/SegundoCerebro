# pesquisa-diaria.ps1
# Roda todo dia as 10h via Windows Task Scheduler.
# Invoca o Claude Code em modo headless para pesquisar novidades e salvar no vault.

$VAULT = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$LOG   = Join-Path $VAULT "_Claude\sessoes\pesquisa-diaria.log"

$date = Get-Date -Format "yyyy-MM-dd"
$time = Get-Date -Format "HH:mm"

# Garantir que a pasta de logs existe
if (-not (Test-Path (Split-Path $LOG))) {
    New-Item -ItemType Directory -Path (Split-Path $LOG) -Force | Out-Null
}

Add-Content $LOG "[$date $time] Iniciando pesquisa diaria..."

$prompt = @"
Voce e o segundo cerebro do usuario. Hoje e $date. Execute a pesquisa diaria autonoma.

IMPORTANTE: Leia o CLAUDE.md deste vault antes de criar qualquer nota.

Para cada um dos 7 temas abaixo, use WebSearch para buscar as ultimas noticias/novidades e crie uma nota em "03 - Pesquisa/" seguindo as convencoes do vault.

TEMAS (por ordem de prioridade):
1. Claude API — novidades na API da Anthropic, novos modelos, mudancas de preco, features como prompt caching, tool use, batches, files API
2. Claude Code e Claude.ai — atualizacoes do CLI, novas skills, hooks, MCP servers, features do claude.ai (Projects, Canvas, etc)
3. Economia de Tokens — tecnicas novas para reduzir custo e consumo de tokens em LLMs, especialmente Claude
4. Deploy e Infraestrutura — novidades em Railway, Vercel, Fly.io, CI/CD, HTTPS, VPS, containers
5. Inteligencia Artificial — novos modelos de outros labs (OpenAI, Google, Meta), papers relevantes, agentes autonomos
6. Programacao e Dev — linguagens em alta, frameworks, boas praticas, ferramentas de desenvolvimento
7. Mercado de TI Brasil — vagas em alta, salarios, tendencias de carreira em TI no Brasil

Para cada tema:
- Crie o arquivo: "03 - Pesquisa/Pesquisa - $date - [Nome do Tema].md"
- Frontmatter: tipo: pesquisa, status: ativo, criado: $date, atualizado: $date, tags adequadas, pergunta-central
- Escreva conteudo denso e util: conceitos tecnicos, exemplos de codigo quando relevante, links das fontes
- Adicione secao "## Conexoes" com wikilinks para notas existentes relacionadas

Depois de criar todas as notas:
- Execute o script "_Claude/gerar-export.ps1" para atualizar o export cross-device
- Atualize "_Claude/_HOT_CACHE.md" secao "Ultima Sessao": "Pesquisa diaria de $date concluida. 7 notas criadas."
- Se aprendeu algo sobre preferencias do usuario ou padrao novo, atualize "_Claude/_GLOBAL.md"

Priorize qualidade e densidade de informacao util. Foque especialmente nos temas 1, 2 e 3.
"@

# Mudar para o diretorio do vault e rodar claude headless
$env:PATH += ";C:\Users\estagio.ti\AppData\Roaming\npm;C:\Users\estagio.ti\.local\bin"
Set-Location $VAULT
$result = claude -p $prompt --dangerously-skip-permissions 2>&1

if ($LASTEXITCODE -eq 0) {
    Add-Content $LOG "[$date $time] Pesquisa concluida com sucesso."
} else {
    Add-Content $LOG "[$date $time] ERRO: $result"
}
