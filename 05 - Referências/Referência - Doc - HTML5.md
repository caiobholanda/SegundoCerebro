---
tipo: referencia
fonte: doc
autor: MDN Web Docs
url: https://developer.mozilla.org/en-US/docs/Web/HTML/Element
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, html, frontend, programacao]
---

# Referência - Doc - HTML5

## 🔗 Fonte
- **URL Principal**: https://developer.mozilla.org/en-US/docs/Web/HTML
- **Elementos**: https://developer.mozilla.org/en-US/docs/Web/HTML/Element
- **Atributos**: https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes

---

## 1. Estrutura do Documento

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Descrição da página para SEO (máx ~160 chars)">
  <meta name="author" content="Nome do Autor">
  <meta name="robots" content="index, follow">
  <title>Título da Página</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="icon" type="image/png" href="favicon.png">
</head>
<body>
  <!-- conteúdo -->
  <script src="script.js"></script>
</body>
</html>
```

**Meta tags importantes:**
| Tag | Propósito |
|---|---|
| `charset="UTF-8"` | Codificação — sempre a primeira |
| `name="viewport"` | Escalonamento responsivo no mobile |
| `name="description"` | Descrição para SEO |
| `name="og:*"` | Open Graph (preview em redes sociais) |

---

## 2. Elementos Semânticos

| Elemento | Propósito |
|---|---|
| `<header>` | Cabeçalho, logo, navegação |
| `<nav>` | Navegação principal/secundária |
| `<main>` | Conteúdo principal (único por página) |
| `<section>` | Agrupamento temático — deve ter título |
| `<article>` | Conteúdo autocontido (post, notícia, card) |
| `<aside>` | Conteúdo tangencial, sidebars |
| `<footer>` | Rodapé: copyright, links, contato |
| `<figure>` | Mídia autocontida com legenda opcional |
| `<figcaption>` | Legenda para `<figure>` |
| `<address>` | Informações de contato |

```html
<body>
  <header>
    <nav>
      <ul>
        <li><a href="/">Início</a></li>
        <li><a href="/sobre">Sobre</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section>
      <h1>Título da Seção</h1>
      <article>
        <h2>Título do Artigo</h2>
        <p>Conteúdo...</p>
        <figure>
          <img src="foto.jpg" alt="Descrição da foto">
          <figcaption>Legenda da foto</figcaption>
        </figure>
      </article>
    </section>
    <aside>
      <p>Links relacionados ou barra lateral</p>
    </aside>
  </main>

  <footer>
    <address>contato@exemplo.com</address>
    <p>&copy; 2026 Empresa</p>
  </footer>
</body>
```

---

## 3. Elementos de Texto

**Headings:**
```html
<h1>Título Principal (um por página)</h1>
<h2>Título de Seção</h2>
<h3>Subseção</h3>
<h4>Sub-subseção</h4>
<h5>Título menor</h5>
<h6>Menor título</h6>
```

**Bloco:**
```html
<p>Parágrafo de texto.</p>
<blockquote cite="https://fonte.com">Citação longa.</blockquote>
<pre><code>Texto pré-formatado — espaços preservados</code></pre>
<hr> <!-- Quebra temática -->
```

**Inline:**
```html
<strong>Importância forte (negrito)</strong>
<em>Ênfase (itálico)</em>
<code>trecho de código inline</code>
<span class="highlight">Container inline genérico</span>
<br> <!-- Quebra de linha -->
<small>Letras miúdas, texto legal</small>
<mark>Texto destacado/marcado</mark>
<del>Texto deletado</del>
<ins>Texto inserido</ins>
<abbr title="HyperText Markup Language">HTML</abbr>
<time datetime="2026-05-11">11 de maio de 2026</time>
<sub>subscrito</sub> e <sup>sobrescrito</sup>
<kbd>Ctrl</kbd> + <kbd>C</kbd>
```

---

## 4. Links e Mídia

**Links:**
```html
<!-- Link externo, abre nova aba -->
<a href="https://exemplo.com" target="_blank" rel="noopener noreferrer">Visitar</a>

<!-- Link interno -->
<a href="/sobre">Sobre Nós</a>

<!-- Âncora (mesma página) -->
<a href="#secao1">Ir para Seção</a>
<h2 id="secao1">Seção 1</h2>

<!-- Link de email -->
<a href="mailto:usuario@exemplo.com">Enviar email</a>

<!-- Download -->
<a href="/arquivos/relatorio.pdf" download>Baixar PDF</a>
```

**Imagens:**
```html
<!-- Imagem básica -->
<img src="foto.jpg" alt="Texto descritivo" width="800" height="600" loading="lazy">

<!-- Imagem responsiva com srcset -->
<img
  src="foto-800.jpg"
  srcset="foto-400.jpg 400w, foto-800.jpg 800w, foto-1200.jpg 1200w"
  sizes="(max-width: 768px) 100vw, 50vw"
  alt="Descrição"
  loading="lazy">

<!-- Art direction com picture -->
<picture>
  <source media="(max-width: 768px)" srcset="foto-mobile.webp" type="image/webp">
  <source media="(max-width: 768px)" srcset="foto-mobile.jpg">
  <img src="foto-desktop.jpg" alt="Descrição">
</picture>
```

**Vídeo:**
```html
<video controls autoplay muted loop poster="thumbnail.jpg" preload="metadata">
  <source src="video.webm" type="video/webm">
  <source src="video.mp4" type="video/mp4">
  <track kind="subtitles" src="legendas.vtt" srclang="pt" label="Português">
  Seu navegador não suporta vídeo.
</video>
```

**Áudio:**
```html
<audio controls preload="metadata">
  <source src="audio.ogg" type="audio/ogg">
  <source src="audio.mp3" type="audio/mpeg">
  Seu navegador não suporta áudio.
</audio>
```

---

## 5. Formulários

```html
<form action="/enviar" method="POST" enctype="multipart/form-data">

  <fieldset>
    <legend>Dados Pessoais</legend>

    <label for="nome">Nome Completo *</label>
    <input type="text" id="nome" name="nome"
           placeholder="João Silva" required
           minlength="2" maxlength="100" autocomplete="name">

    <label for="email">Email *</label>
    <input type="email" id="email" name="email"
           placeholder="usuario@exemplo.com" required autocomplete="email">

    <label for="senha">Senha *</label>
    <input type="password" id="senha" name="senha"
           minlength="8" required autocomplete="new-password">

    <label for="idade">Idade</label>
    <input type="number" id="idade" name="idade" min="0" max="120" step="1">

    <label for="nascimento">Data de Nascimento</label>
    <input type="date" id="nascimento" name="nascimento">

    <label for="avatar">Foto de Perfil</label>
    <input type="file" id="avatar" name="avatar" accept="image/*">
  </fieldset>

  <fieldset>
    <legend>Preferências</legend>

    <!-- Checkbox -->
    <input type="checkbox" id="newsletter" name="newsletter" value="sim" checked>
    <label for="newsletter">Assinar newsletter</label>

    <!-- Radio buttons -->
    <input type="radio" id="contato-email" name="contato" value="email" checked>
    <label for="contato-email">Email</label>
    <input type="radio" id="contato-tel" name="contato" value="telefone">
    <label for="contato-tel">Telefone</label>

    <!-- Select -->
    <label for="pais">País</label>
    <select id="pais" name="pais" required>
      <option value="" disabled selected>Selecione seu país</option>
      <option value="br">Brasil</option>
      <option value="pt">Portugal</option>
    </select>

    <!-- Textarea -->
    <label for="mensagem">Mensagem</label>
    <textarea id="mensagem" name="mensagem" rows="5"
              placeholder="Sua mensagem..." maxlength="500"></textarea>
  </fieldset>

  <button type="submit">Enviar</button>
  <button type="reset">Limpar</button>
  <button type="button" onclick="acao()">Ação</button>
</form>
```

**Todos os tipos de `<input>`:**
| Tipo | Propósito |
|---|---|
| `text` | Texto simples |
| `email` | Email com validação |
| `password` | Senha mascarada |
| `number` | Numérico (min/max/step) |
| `date` | Seletor de data |
| `datetime-local` | Data e hora |
| `time` | Seletor de hora |
| `range` | Controle deslizante |
| `checkbox` | Toggle booleano |
| `radio` | Seleção única de um grupo |
| `file` | Upload de arquivo |
| `color` | Seletor de cor |
| `search` | Campo de busca |
| `tel` | Número de telefone |
| `url` | URL com validação |
| `hidden` | Campo oculto (não mostrado ao usuário) |
| `submit` | Botão enviar formulário |
| `reset` | Botão limpar formulário |
| `button` | Botão genérico |

---

## 6. Tabelas

```html
<table>
  <caption>Relatório Mensal de Vendas</caption>
  <thead>
    <tr>
      <th scope="col">Mês</th>
      <th scope="col">Receita</th>
      <th scope="col">Unidades</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Janeiro</td>
      <td>R$ 12.000</td>
      <td>240</td>
    </tr>
    <tr>
      <td>Fevereiro</td>
      <td colspan="2">Dados indisponíveis</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th scope="row">Total</th>
      <td>R$ 12.000</td>
      <td>240</td>
    </tr>
  </tfoot>
</table>
```

---

## 7. Listas

```html
<!-- Lista não ordenada -->
<ul>
  <li>Item um</li>
  <li>Item dois</li>
  <li>Aninhado:
    <ul><li>Item aninhado</li></ul>
  </li>
</ul>

<!-- Lista ordenada -->
<ol type="1" start="1">
  <li>Primeiro passo</li>
  <li>Segundo passo</li>
</ol>

<!-- Lista de descrição (glossário) -->
<dl>
  <dt>HTML</dt>
  <dd>HyperText Markup Language — estrutura da web</dd>
  <dt>CSS</dt>
  <dd>Cascading Style Sheets — apresentação da web</dd>
</dl>
```

---

## 8. Atributos Importantes

```html
<!-- class e id -->
<div class="card card--destaque" id="hero-card">...</div>

<!-- data-* atributos customizados -->
<button data-user-id="42" data-acao="deletar">Deletar</button>
<!-- Acessar em JS: element.dataset.userId, element.dataset.acao -->

<!-- ARIA para acessibilidade -->
<button aria-label="Fechar diálogo" aria-expanded="false">×</button>
<nav aria-label="Navegação principal">...</nav>
<div role="alert" aria-live="polite">Formulário enviado!</div>
<input aria-describedby="email-dica" type="email">
<span id="email-dica">Digite seu email corporativo</span>

<!-- role -->
<div role="button" tabindex="0">Botão customizado</div>
<div role="dialog" aria-modal="true" aria-labelledby="titulo-dialog">...</div>

<!-- tabindex -->
<div tabindex="0">Focusável na ordem natural</div>
<div tabindex="-1">Focusável programaticamente (fora da ordem Tab)</div>
```

---

## 9. Entidades HTML Comuns

| Entidade | Símbolo | Descrição |
|---|---|---|
| `&amp;` | & | Ampersand |
| `&lt;` | < | Menor que |
| `&gt;` | > | Maior que |
| `&quot;` | " | Aspas duplas |
| `&apos;` | ' | Aspas simples |
| `&nbsp;` | (espaço) | Espaço não quebrável |
| `&copy;` | © | Copyright |
| `&reg;` | ® | Marca registrada |
| `&trade;` | ™ | Trademark |
| `&mdash;` | — | Travessão |
| `&ndash;` | – | Meia-risca |
| `&hellip;` | … | Reticências |

---

## 🔗 Conecta com
- [[Referência - Doc - CSS3]]
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - React]]
