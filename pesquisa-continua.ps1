# pesquisa-continua.ps1
# Executa a cada 2 horas enquanto a maquina estiver ligada.
# A cada ciclo sorteia:
#   70% -> pesquisa 1 tema aleatorio escolhido pelo Claude
#   30% -> aprofunda 1 dos 7 temas fixos (escolhido aleatoriamente)

$VAULT = "C:\Users\estagio.ti\Desktop\ClaudeCode\SegundoCerebroOficial"
$LOG   = Join-Path $VAULT "_Claude\sessoes\pesquisa-continua.log"

$date    = Get-Date -Format "yyyy-MM-dd"
$time    = Get-Date -Format "HH:mm"
$timeId  = Get-Date -Format "HHmm"
$hora    = (Get-Date).Hour

if (-not (Test-Path (Split-Path $LOG))) {
    New-Item -ItemType Directory -Path (Split-Path $LOG) -Force | Out-Null
}

# Se a pesquisa-diaria estiver rodando (10h), aguarda o proximo ciclo
if ($hora -eq 10) {
    $estado = (Get-ScheduledTask "cerebro-pesquisa" -ErrorAction SilentlyContinue).State
    if ($estado -eq 'Running') {
        Add-Content $LOG "[$date $time] pesquisa-diaria em execucao — ciclo pulado."
        exit 0
    }
}

Add-Content $LOG "[$date $time] === Iniciando ciclo ==="

# ---- 7 temas fixos (com descricao detalhada para o Claude) ----
$temas7 = @(
    @{ nome = "Claude API";             desc = "novidades na API da Anthropic: modelos, precos, features (prompt caching, tool use, batches, files API, extended thinking)" }
    @{ nome = "Claude Code";            desc = "atualizacoes do CLI Claude Code, skills, hooks, MCP servers, subagentes, Agent View, novas features e melhorias" }
    @{ nome = "Economia de Tokens";     desc = "tecnicas para reduzir custo e consumo em LLMs: prompt compression, semantic caching, context management, batching" }
    @{ nome = "Deploy e Infraestrutura";desc = "novidades em Railway, Vercel, Fly.io, CI/CD, containers, edge computing, cloud providers, serverless" }
    @{ nome = "Inteligencia Artificial";desc = "novos modelos de outros labs (OpenAI, Google, Meta), papers relevantes, benchmarks, agentes autonomos, multimodal" }
    @{ nome = "Programacao e Dev";      desc = "linguagens em alta, frameworks, ferramentas, boas praticas, tendencias de engenharia de software" }
    @{ nome = "Mercado de TI Brasil";   desc = "vagas em alta, faixas salariais, tendencias de carreira, stacks mais demandados, mercado de trabalho tech no Brasil" }
)

# ---- Categorias para pesquisa aleatoria ----
$categoriasAleatorias = @(
    "biohacking, performance cognitiva e longevidade"
    "financas pessoais, investimentos e liberdade financeira"
    "criatividade, design thinking e inovacao"
    "lideranca, gestao de equipes e cultura organizacional"
    "marketing digital, growth e aquisicao de usuarios"
    "psicologia comportamental e tomada de decisao"
    "educacao online, aprendizado acelerado e retencao de conhecimento"
    "empreendedorismo, startups e validacao de produto"
    "sustentabilidade, energia limpa e impacto ambiental"
    "futurismo, computacao quantica e tecnologias de 2030"
    "economia criativa, monetizacao de conteudo e creator economy"
    "seguranca digital, privacidade e ciberameacas recentes"
    "automacao, RPA e ferramentas no-code/low-code"
    "comunicacao assertiva, storytelling e escrita persuasiva"
    "ciencia aplicada: descobertas recentes em fisica, biologia ou neurociencia"
    "geopolitica tecnologica e corrida global por IA"
    "fotografia, video e producao de conteudo visual"
    "saude mental, mindfulness e gestao de estresse para profissionais de TI"
    "historia da tecnologia e licoes dos grandes fracassos e sucessos de startups"
    "tendencias de consumo, comportamento digital e geracao Z"
)

# ---- Sorteio: 30% temas fixos / 70% aleatorio ----
$chance = Get-Random -Minimum 1 -Maximum 101

if ($chance -le 30) {
    # --- MODO TEMA FIXO ---
    $tema = $temas7 | Get-Random
    Add-Content $LOG "[$date $time] Modo: TEMA FIXO — $($tema.nome)"

    $prompt = @"
Voce e o segundo cerebro do usuario. Hoje e $date, sao $time.

TAREFA: Pesquisa aprofundada sobre um dos temas fixos do vault.

TEMA: $($tema.nome)
FOCO: $($tema.desc)

INSTRUCOES:
1. Use WebSearch para buscar novidades e atualizacoes das ULTIMAS 48-72 HORAS sobre este tema.
2. Antes de criar qualquer arquivo, verifique se ja existe "03 - Pesquisa/Pesquisa - $date - $($tema.nome).md":
   - Se JA EXISTIR: adicione uma nova secao "## Atualizacao $time" ao arquivo com as novidades encontradas. NAO crie arquivo duplicado.
   - Se NAO EXISTIR: crie o arquivo com frontmatter completo (tipo: pesquisa, status: ativo, criado: $date, atualizado: $date, tags, pergunta-central).
3. Priorize: numeros concretos, versoes, datas, exemplos praticos, impacto real.
4. Adicione secao "## Conexoes" com wikilinks para notas existentes relevantes no vault.
5. Mantenha o CLAUDE.md como referencia para convencoes de nomenclatura e estrutura.

Objetivo: informacao densa e acionavel, nao resumo superficial.
"@

} else {
    # --- MODO ALEATORIO ---
    $cat = $categoriasAleatorias | Get-Random
    Add-Content $LOG "[$date $time] Modo: ALEATORIO — categoria: $cat"

    $prompt = @"
Voce e o segundo cerebro do usuario. Hoje e $date, sao $time.

TAREFA: Pesquisa autonoma — escolha e explore 1 tema especifico agora.

CATEGORIA SUGERIDA: $cat

INSTRUCOES:
1. Com base na categoria, escolha 1 assunto especifico que seja:
   - Atual (novidades dos ultimos 7 dias preferencialmente)
   - Util e aplicavel ao dia a dia ou a projetos futuros
   - Surpreendente ou nao-obvio (algo que o usuario provavelmente nao buscaria por conta propria)
2. Verifique em "03 - Pesquisa/" o que ja foi pesquisado hoje — nao repita assuntos identicos.
3. Use WebSearch para pesquisar com profundidade.
4. Crie o arquivo: "03 - Pesquisa/Pesquisa - $date $timeId - [Titulo Descritivo Curto].md"
   - Frontmatter completo: tipo: pesquisa, status: ativo, criado: $date, atualizado: $date, tags adequadas, pergunta-central
   - Conteudo denso: conceitos, dados concretos, exemplos, implicacoes praticas
   - Secao "## Conexoes" com wikilinks para notas existentes relacionadas
5. Mantenha o CLAUDE.md como referencia para convencoes do vault.

Objetivo: cada pesquisa deve gerar uma nota que valha a pena reler em 6 meses.
"@
}

$env:PATH += ";C:\Users\estagio.ti\AppData\Roaming\npm;C:\Users\estagio.ti\.local\bin"
Set-Location $VAULT

$result = claude -p $prompt --dangerously-skip-permissions 2>&1

if ($LASTEXITCODE -eq 0) {
    Add-Content $LOG "[$date $time] Concluido com sucesso."
    Add-Content $LOG "[$date $time] Resumo: $($result | Select-Object -Last 3 | Out-String)"
} else {
    Add-Content $LOG "[$date $time] ERRO (exit $LASTEXITCODE): $($result | Select-Object -Last 5 | Out-String)"
}

Add-Content $LOG "[$date $time] === Fim do ciclo ==="
Add-Content $LOG ""
