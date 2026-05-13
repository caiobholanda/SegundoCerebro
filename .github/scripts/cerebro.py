"""
Segundo Cérebro — Automação com GitHub Models (gratuito via GITHUB_TOKEN).
Executa as rotinas: manha, pesquisa, noite, semana.
"""

import os
import json
import re
import shutil
from datetime import datetime, timedelta
from pathlib import Path
from openai import OpenAI

# ── Config ──────────────────────────────────────────────────────────────────
TZ_OFFSET = -3  # BRT = UTC-3
now_brt = datetime.utcnow() + timedelta(hours=TZ_OFFSET)

ROTINA    = os.environ.get("ROTINA", "manha")
VAULT     = Path(".")
DATA_HOJE = now_brt.strftime("%Y-%m-%d")
HORA_HOJE = now_brt.strftime("%H:%M")
DIA_SEMANA_PT = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
DIA_SEMANA    = DIA_SEMANA_PT[now_brt.weekday()]

client = OpenAI(
    base_url="https://models.inference.ai.azure.com",
    api_key=os.environ["GITHUB_TOKEN"],
)

# ── Helpers ──────────────────────────────────────────────────────────────────
def ler(path: str | Path) -> str:
    try:
        return Path(path).read_text(encoding="utf-8", errors="ignore")
    except Exception:
        return ""

def escrever(path: str | Path, conteudo: str):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(conteudo, encoding="utf-8")
    print(f"  [ok] {p}")

def listar_md(pasta: str, max_chars: int = 400) -> list[dict]:
    """Retorna lista de {nome, trecho} de arquivos .md em uma pasta."""
    p = VAULT / pasta
    if not p.exists():
        return []
    resultado = []
    for f in sorted(p.glob("*.md")):
        conteudo = ler(f)
        resultado.append({"nome": f.name, "trecho": conteudo[:max_chars]})
    return resultado

def llm(sistema: str, usuario: str, modelo: str = "gpt-4o-mini", max_tokens: int = 3000) -> str:
    resp = client.chat.completions.create(
        model=modelo,
        messages=[
            {"role": "system", "content": sistema},
            {"role": "user",   "content": usuario},
        ],
        max_tokens=max_tokens,
        temperature=0.7,
    )
    return resp.choices[0].message.content.strip()

# ── Contexto do vault ────────────────────────────────────────────────────────
CLAUDE_MD = ler("CLAUDE.md")[:2500]

SISTEMA_BASE = f"""Você é o assistente do Segundo Cérebro de Caio Holanda.
Crie notas em Obsidian seguindo rigorosamente as convenções abaixo.

REGRAS IMPORTANTES:
- Todo arquivo começa com frontmatter YAML entre --- e ---
- Use wikilinks [[Nota]] para referenciar outras notas
- Data de hoje: {DATA_HOJE} ({DIA_SEMANA})
- Hora BRT: {HORA_HOJE}
- Nunca use emojis fora dos títulos de seção
- Gere APENAS o conteúdo markdown, sem explicações extras

CONVENÇÕES DO VAULT:
{CLAUDE_MD}"""

# ── Rotina: Manhã ─────────────────────────────────────────────────────────────
def rotina_manha():
    print(f"\n▶ Rotina manhã — {DATA_HOJE}")

    # Contexto: projetos ativos
    projetos_raw = listar_md("01 - Projetos", max_chars=300)
    ativos = [
        p for p in projetos_raw
        if "status: ativo" in p["trecho"] or "status: em-andamento" in p["trecho"]
    ]
    projetos_txt = "\n".join(
        f"- {p['nome'].replace('.md','')}: {p['trecho'][:150].strip()}"
        for p in ativos[:6]
    ) or "Nenhum projeto ativo encontrado."

    # Contexto: pendências de ontem
    ontem = (now_brt - timedelta(days=1)).strftime("%Y-%m-%d")
    nota_ontem = ler(f"06 - Diário/{ontem}.md")
    pendencias_txt = ""
    if nota_ontem:
        # Extrair itens não marcados de ontem
        itens = re.findall(r"- \[ \] .+", nota_ontem)
        pendencias_txt = "\n".join(itens[:5]) if itens else "(sem pendências abertas)"

    template = ler("99 - Templates/Template - Diário.md")

    usuario = f"""Crie a nota diária de hoje ({DATA_HOJE} — {DIA_SEMANA}) seguindo o template abaixo.

TEMPLATE:
{template}

PROJETOS ATIVOS:
{projetos_txt}

PENDÊNCIAS DE ONTEM ({ontem}):
{pendencias_txt or "(nenhuma encontrada)"}

Preencha todas as seções. Em "Foco do dia" escreva algo motivador e realista.
Em "Projetos ativos" liste os projetos com um bullet por projeto e status resumido.
Em "Tarefas" coloque 3 tarefas concretas baseadas nos projetos ativos.
Substitua os placeholders {{{{date:YYYY-MM-DD}}}} por {DATA_HOJE} e {{{{date:dddd}}}} por {DIA_SEMANA}."""

    conteudo = llm(SISTEMA_BASE, usuario, max_tokens=2000)
    escrever(f"06 - Diário/{DATA_HOJE}.md", conteudo)

# ── Rotina: Pesquisa ─────────────────────────────────────────────────────────
TEMAS_PESQUISA = [
    ("Claude API e Anthropic SDK",      ["ia", "dev", "claude"]),
    ("Claude Code — CLI e agentes",     ["ia", "dev", "claude"]),
    ("Economia de Tokens em LLMs",      ["ia", "produtividade"]),
    ("Deploy e Infraestrutura Cloud",   ["dev", "infra"]),
    ("Inteligência Artificial — avanços", ["ia"]),
    ("Programação e Desenvolvimento",   ["dev", "produtividade"]),
    ("Mercado de TI no Brasil",         ["mercado", "carreira"]),
]

def rotina_pesquisa():
    print(f"\n▶ Rotina pesquisa — {DATA_HOJE}")
    template = ler("99 - Templates/Template - Pesquisa.md")

    for tema, tags in TEMAS_PESQUISA:
        print(f"  Pesquisando: {tema}")
        tags_yaml = json.dumps(["pesquisa"] + tags, ensure_ascii=False)

        usuario = f"""Crie uma nota de pesquisa detalhada sobre: **{tema}**

TEMPLATE A SEGUIR:
{template}

INSTRUÇÕES:
- Substitua <Tema> por "{tema}"
- criado e atualizado: {DATA_HOJE}
- tags: {tags_yaml}
- pergunta-central: escreva uma pergunta instigante sobre o tema
- Síntese: 3-5 linhas com o que é mais importante saber hoje sobre o tema
- Detalhes: pelo menos 6 bullets com insights, conceitos ou fatos relevantes
- Conexões: wikilinks para temas relacionados (ex: [[Claude API e Anthropic SDK]])
- Lacunas: 2-3 pontos que ainda merecem investigação
- Use seu conhecimento mais atualizado possível sobre o tema

Gere APENAS o conteúdo markdown começando com ---"""

        conteudo = llm(SISTEMA_BASE, usuario, modelo="gpt-4o", max_tokens=2500)
        nome_arquivo = f"03 - Pesquisa/{DATA_HOJE} - {tema}.md"
        escrever(nome_arquivo, conteudo)

# ── Rotina: Noite (processar inbox) ──────────────────────────────────────────
def rotina_noite():
    print(f"\n▶ Rotina noite — {DATA_HOJE}")
    inbox_dir = VAULT / "00 - Inbox"
    arquivos   = list(inbox_dir.glob("*.md")) if inbox_dir.exists() else []

    if not arquivos:
        print("  Inbox vazio, nada a processar.")
        return

    print(f"  {len(arquivos)} nota(s) no inbox")

    # Processar em lotes de 5
    for i in range(0, len(arquivos), 5):
        lote = arquivos[i:i+5]
        itens_txt = []
        for f in lote:
            conteudo = ler(f)
            itens_txt.append(f"=== ARQUIVO: {f.name} ===\n{conteudo[:600]}")

        usuario = f"""Processe estas notas do Inbox e classifique cada uma.

{chr(10).join(itens_txt)}

Para cada arquivo, decida:
- destino: pasta correta no vault (ex: "03 - Pesquisa/nome.md", "01 - Projetos/nome.md")
- tipo: projeto | pesquisa | referencia | area | permanente
- tags: lista de tags relevantes (kebab-case, em português)
- resumo: uma frase descrevendo o conteúdo

Retorne SOMENTE um JSON válido (sem markdown, sem explicações) neste formato:
{{
  "acoes": [
    {{
      "arquivo_origem": "nome-do-arquivo.md",
      "destino": "03 - Pesquisa/Pesquisa - Nome Descritivo.md",
      "tipo": "pesquisa",
      "tags": ["tag1", "tag2"],
      "resumo": "Descreve o que a nota contém"
    }}
  ]
}}"""

        try:
            resp = llm(SISTEMA_BASE, usuario, modelo="gpt-4o-mini", max_tokens=1500)
            # Extrair JSON mesmo que o modelo coloque markdown ao redor
            match = re.search(r'\{[\s\S]+\}', resp)
            if not match:
                print(f"  [aviso] Resposta sem JSON válido no lote {i//5+1}")
                continue

            dados = json.loads(match.group())
            for acao in dados.get("acoes", []):
                origem = inbox_dir / acao["arquivo_origem"]
                if not origem.exists():
                    continue

                destino = VAULT / acao["destino"]
                conteudo_orig = ler(origem)

                # Atualizar/adicionar frontmatter
                tags_yaml = json.dumps(acao.get("tags", []), ensure_ascii=False)
                if conteudo_orig.startswith("---"):
                    # Substituir tags existentes
                    conteudo_novo = re.sub(
                        r"tags:.*",
                        f"tags: {tags_yaml}",
                        conteudo_orig, count=1
                    )
                    conteudo_novo = re.sub(
                        r"tipo:.*",
                        f"tipo: {acao.get('tipo', 'permanente')}",
                        conteudo_novo, count=1
                    )
                else:
                    # Adicionar frontmatter do zero
                    frontmatter = (
                        f"---\n"
                        f"tipo: {acao.get('tipo', 'permanente')}\n"
                        f"criado: {DATA_HOJE}\n"
                        f"atualizado: {DATA_HOJE}\n"
                        f"tags: {tags_yaml}\n"
                        f"---\n\n"
                    )
                    conteudo_novo = frontmatter + conteudo_orig

                escrever(destino, conteudo_novo)
                origem.unlink()
                print(f"  Movido: {acao['arquivo_origem']} → {acao['destino']}")

        except json.JSONDecodeError as e:
            print(f"  [erro] JSON inválido no lote {i//5+1}: {e}")
        except Exception as e:
            print(f"  [erro] Lote {i//5+1}: {e}")

    # Processar pesquisas do dia com destilação
    pesquisas_hoje = list((VAULT / "03 - Pesquisa").glob(f"{DATA_HOJE}*.md"))
    if pesquisas_hoje:
        print(f"\n  Destilando {len(pesquisas_hoje)} pesquisas do dia...")
        resumos = []
        for f in pesquisas_hoje:
            conteudo = ler(f)
            resumos.append(f"**{f.name}**\n{conteudo[:500]}")

        nota_diaria = VAULT / f"06 - Diário/{DATA_HOJE}.md"
        conteudo_diario = ler(nota_diaria)

        usuario = f"""As seguintes pesquisas foram criadas hoje:

{chr(10).join(resumos[:7])}

Escreva uma seção markdown "## 📚 Pesquisas do dia" com:
- Um bullet por tema com síntese de 1 linha
- Wikilinks para cada nota de pesquisa

Retorne APENAS essa seção markdown, sem texto extra."""

        secao = llm(SISTEMA_BASE, usuario, max_tokens=500)

        if conteudo_diario and "## 📥 Capturas" in conteudo_diario:
            novo = conteudo_diario.replace(
                "## 📥 Capturas",
                secao + "\n\n## 📥 Capturas"
            )
            escrever(nota_diaria, novo)

# ── Rotina: Semana ────────────────────────────────────────────────────────────
def rotina_semana():
    print(f"\n▶ Rotina semanal — {DATA_HOJE}")

    # Estatísticas do vault
    stats = {}
    for pasta in ["01 - Projetos", "02 - Áreas", "03 - Pesquisa",
                  "00 - Inbox", "06 - Diário", "05 - Referências"]:
        p = VAULT / pasta
        stats[pasta] = len(list(p.glob("*.md"))) if p.exists() else 0

    stats_txt = "\n".join(f"- {k}: {v} notas" for k, v in stats.items())

    # Notas da semana (últimos 7 dias)
    notas_semana = []
    for d in range(7):
        data = (now_brt - timedelta(days=d)).strftime("%Y-%m-%d")
        f = VAULT / f"06 - Diário/{data}.md"
        if f.exists():
            notas_semana.append(f"**{data}**\n{ler(f)[:400]}")

    # Projetos ativos
    projetos = listar_md("01 - Projetos", max_chars=250)
    ativos_txt = "\n".join(
        f"- {p['nome']}" for p in projetos
        if "ativo" in p["trecho"] or "em-andamento" in p["trecho"]
    ) or "Nenhum projeto ativo"

    usuario = f"""Faça a manutenção semanal do vault e crie o relatório da semana.

ESTATÍSTICAS DO VAULT:
{stats_txt}

NOTAS DESTA SEMANA:
{chr(10).join(notas_semana) if notas_semana else "Nenhuma nota diária encontrada."}

PROJETOS ATIVOS:
{ativos_txt}

Crie uma nota de revisão semanal em markdown com:

---
tipo: diario
criado: {DATA_HOJE}
atualizado: {DATA_HOJE}
tags: ["diario", "revisao-semanal"]
---

# Revisão Semanal — {DATA_HOJE}

## 📊 Números da semana
(total de notas por pasta)

## 🚀 Progresso nos projetos
(análise dos projetos ativos — o que avançou?)

## 📚 Pesquisas feitas
(lista de temas pesquisados esta semana)

## 🔎 Pontos de atenção
(possíveis notas órfãs, tags inconsistentes, áreas negligenciadas)

## 🎯 Foco da próxima semana
(3 prioridades)

## 💡 Insights da semana
(1-3 aprendizados marcantes)

Preencha todas as seções com base nos dados fornecidos. Seja específico."""

    conteudo = llm(SISTEMA_BASE, usuario, modelo="gpt-4o", max_tokens=2500)
    escrever(f"06 - Diário/Semana - {DATA_HOJE}.md", conteudo)

# ── Main ──────────────────────────────────────────────────────────────────────
ROTINAS = {
    "manha":    rotina_manha,
    "pesquisa": rotina_pesquisa,
    "noite":    rotina_noite,
    "semana":   rotina_semana,
}

if ROTINA not in ROTINAS:
    print(f"[erro] Rotina desconhecida: {ROTINA}. Opções: {list(ROTINAS)}")
    exit(1)

print(f"Segundo Cérebro — rotina '{ROTINA}' | {DATA_HOJE} {HORA_HOJE} BRT")
ROTINAS[ROTINA]()
print("\nConcluído.")
