---
tipo: referencia
fonte: doc
autor: MDN Web Docs
url: https://developer.mozilla.org/en-US/docs/Web/CSS
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, css, frontend, programacao]
---

# Referência - Doc - CSS3

## 🔗 Fonte
- **URL Principal**: https://developer.mozilla.org/en-US/docs/Web/CSS
- **Seletores**: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors
- **Flexbox**: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_flexible_box_layout
- **Grid**: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_grid_layout

---

## 1. Seletores

```css
/* Elemento */
p { color: #333; }

/* Classe */
.card { border-radius: 8px; }

/* ID */
#hero { min-height: 100vh; }

/* Universal */
* { box-sizing: border-box; }

/* Descendente */
.card p { font-size: 0.9rem; }

/* Filho direto */
.nav > li { display: inline-block; }

/* Irmão adjacente */
h2 + p { margin-top: 0; }

/* Atributo */
input[type="email"] { border-color: blue; }
a[href^="https"] { color: green; }   /* começa com */
a[href$=".pdf"] { color: red; }      /* termina com */
a[href*="docs"] { color: orange; }   /* contém */

/* Pseudo-classes */
a:hover { text-decoration: underline; }
input:focus { outline: 2px solid #0066cc; }
button:focus-visible { outline: 3px solid orange; }
li:nth-child(odd) { background: #f9f9f9; }
li:nth-child(3n) { color: red; }       /* a cada 3 */
li:first-child, li:last-child { ... }
p:not(:first-child) { margin-top: 1em; }
:is(h1, h2, h3) { font-family: Georgia, serif; }
article:has(img) { border: 2px solid gold; }  /* seletor de pai */
input:required { border-left: 3px solid red; }
input:valid { border-color: green; }
input:invalid { border-color: red; }
input:disabled { opacity: 0.5; }
input:checked + label { font-weight: bold; }

/* Pseudo-elementos */
.tooltip::before { content: "ℹ️ "; }
.required::after { content: " *"; color: red; }
p::first-letter { font-size: 2em; float: left; }
::selection { background: #ffff00; color: #000; }
input::placeholder { color: #999; font-style: italic; }
```

---

## 2. Box Model

```css
*, *::before, *::after { box-sizing: border-box; } /* sempre aplicar globalmente */

.box {
  width: 300px;
  min-width: 100px; max-width: 600px;
  height: 200px;
  min-height: 50px; max-height: 400px;

  /* Padding (interno) — não pode ser negativo */
  padding: 20px;                     /* todos os lados */
  padding: 10px 20px;                /* top/bottom | left/right */
  padding: 10px 20px 15px 25px;      /* top | right | bottom | left */

  /* Margin (externo) — pode ser negativo */
  margin: 20px;
  margin: 0 auto;                    /* centralizar horizontalmente */

  /* Borda */
  border: 2px solid #333;
  border-radius: 8px;
  border-radius: 50%;                /* círculo */
}

/* Colapso de margem: margens verticais adjacentes colapsam para a maior */
.sibling-1 { margin-bottom: 30px; }
.sibling-2 { margin-top: 20px; }
/* Resultado: gap de 30px, não 50px */
```

---

## 3. Flexbox

```css
/* === CONTAINER === */
.flex {
  display: flex;

  /* Direção do eixo principal */
  flex-direction: row;             /* → padrão */
  flex-direction: row-reverse;     /* ← */
  flex-direction: column;          /* ↓ */
  flex-direction: column-reverse;  /* ↑ */

  /* Alinhamento no eixo principal */
  justify-content: flex-start;    /* início (padrão) */
  justify-content: flex-end;      /* fim */
  justify-content: center;        /* centro */
  justify-content: space-between; /* espaços iguais, bordas coladas */
  justify-content: space-around;  /* espaço ao redor de cada item */
  justify-content: space-evenly;  /* espaço igual entre e ao redor */

  /* Alinhamento no eixo cruzado */
  align-items: stretch;   /* preenche altura (padrão) */
  align-items: flex-start;
  align-items: flex-end;
  align-items: center;
  align-items: baseline;

  /* Quebra de linha */
  flex-wrap: nowrap;    /* linha única (padrão) */
  flex-wrap: wrap;      /* quebra para próxima linha */

  /* Espaço entre itens */
  gap: 1rem;
  gap: 1rem 2rem;  /* row-gap | column-gap */
}

/* === ITEM === */
.flex-item {
  flex-grow: 0;       /* não cresce (padrão) */
  flex-grow: 1;       /* cresce igualmente */
  flex-shrink: 1;     /* encolhe igualmente (padrão) */
  flex-shrink: 0;     /* nunca encolhe */
  flex-basis: auto;   /* tamanho base */
  flex-basis: 200px;

  /* Atalho: grow shrink basis */
  flex: 1;            /* 1 1 0 — distribui espaço igualmente */
  flex: none;         /* 0 0 auto — tamanho rígido */
  flex: 0 0 200px;    /* fixo em 200px */

  align-self: center;   /* override do align-items do container */
  order: -1;            /* visual: vai para o início */
}
```

**Padrões práticos:**
```css
/* Centralizar qualquer coisa */
.center { display: flex; justify-content: center; align-items: center; }

/* Navbar */
.navbar { display: flex; justify-content: space-between; align-items: center; gap: 1rem; }

/* Grid de cards com quebra */
.cards { display: flex; flex-wrap: wrap; gap: 1.5rem; }
.cards > .card { flex: 1 1 280px; } /* min 280px, cresce e encolhe */
```

---

## 4. CSS Grid

```css
/* === CONTAINER === */
.grid {
  display: grid;

  /* Definir colunas */
  grid-template-columns: 200px 1fr 200px;
  grid-template-columns: repeat(3, 1fr);
  grid-template-columns: repeat(4, minmax(200px, 1fr));
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));  /* responsivo */
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));

  /* Linhas implícitas */
  grid-auto-rows: minmax(100px, auto);

  /* Áreas nomeadas */
  grid-template-areas:
    "header  header  header"
    "sidebar main    main"
    "footer  footer  footer";

  gap: 1rem;
  place-items: center; /* align-items + justify-items */
}

/* === ITEM === */
.item {
  grid-column: 1 / 3;     /* da linha 1 à 3 (ocupa 2) */
  grid-column: 1 / -1;    /* ocupa linha inteira */
  grid-column: span 2;    /* ocupa 2 colunas */
  grid-row: span 2;       /* ocupa 2 linhas */

  /* Por área nomeada */
  grid-area: header;
  grid-area: sidebar;

  place-self: center;
}

/* Exemplo layout completo */
.layout {
  display: grid;
  grid-template-areas:
    "header  header"
    "sidebar main"
    "footer  footer";
  grid-template-columns: 250px 1fr;
  grid-template-rows: 80px 1fr 60px;
  min-height: 100vh;
  gap: 1rem;
}
.header  { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main    { grid-area: main; }
.footer  { grid-area: footer; }
```

**Unidade `fr`** — distribui espaço livre: `1fr 2fr 1fr` = 25% | 50% | 25%.

---

## 5. Posicionamento

```css
/* static — padrão, top/left/z-index não têm efeito */

/* relative — deslocado da posição normal, mantém espaço */
.nudge { position: relative; top: 10px; left: 20px; }

/* absolute — removido do fluxo, posicionado em relação ao ancestral posicionado */
.parent { position: relative; }
.overlay {
  position: absolute;
  top: 0; left: 0; right: 0; bottom: 0; /* preenche o pai */
}
.badge { position: absolute; top: -8px; right: -8px; }

/* fixed — removido do fluxo, em relação ao viewport, fica ao rolar */
.sticky-header { position: fixed; top: 0; width: 100%; z-index: 1000; }
.fab { position: fixed; bottom: 2rem; right: 2rem; }

/* sticky — relative até o threshold, depois age como fixed dentro do pai */
.sticky-nav { position: sticky; top: 0; z-index: 100; }

/* z-index — empilhamento (só funciona em elementos posicionados) */
.modal         { z-index: 1000; }
.modal-overlay { z-index: 999; }
.dropdown      { z-index: 500; }
.header        { z-index: 100; }
```

---

## 6. Tipografia

```css
body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI',
               Roboto, Oxygen, Ubuntu, sans-serif;
  font-size: 1rem;
  line-height: 1.6;
}
code { font-family: 'Fira Code', 'Cascadia Code', 'Courier New', monospace; }

/* Tamanho responsivo sem media queries */
h1 { font-size: clamp(1.8rem, 5vw, 3.5rem); }

/* Pesos */
.light  { font-weight: 300; }
.normal { font-weight: 400; }
.medium { font-weight: 500; }
.bold   { font-weight: 700; }

/* Texto */
.truncate { white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
.break    { overflow-wrap: break-word; word-break: break-word; }

/* Font custom */
@font-face {
  font-family: 'MinhaFonte';
  src: url('/fonts/font.woff2') format('woff2');
  font-display: swap;
}
```

---

## 7. Cores e Backgrounds

```css
/* Formatos de cor */
color: #FF5733;                    /* hex */
color: rgb(255, 87, 51);           /* rgb */
color: rgba(255, 87, 51, 0.8);     /* com alpha */
color: hsl(14, 100%, 60%);         /* HSL */
color: hsl(14deg 100% 60% / 80%); /* moderno */
color: oklch(60% 0.2 30);          /* perceptual (moderno) */

/* Gradientes */
background: linear-gradient(to right, #667eea, #764ba2);
background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
background: radial-gradient(circle at center, #ff6b6b, #4ecdc4);

/* Background shorthand */
background: #fff url('/img/bg.png') no-repeat center / cover;

/* Múltiplos backgrounds */
background:
  url('/img/top.png') top center no-repeat,
  url('/img/bottom.png') bottom center no-repeat,
  #1a1a2e;
```

---

## 8. Variáveis CSS (Custom Properties)

```css
:root {
  /* Cores */
  --color-primary: #0066cc;
  --color-primary-hover: #0052a3;
  --color-accent: #ff6b35;
  --color-danger: #dc3545;
  --color-success: #28a745;
  --color-text: #333333;
  --color-background: #ffffff;
  --color-surface: #f8f9fa;

  /* Espaçamento */
  --space-xs: 0.25rem;
  --space-sm: 0.5rem;
  --space-md: 1rem;
  --space-lg: 2rem;
  --space-xl: 4rem;

  /* Tipografia */
  --font-sans: 'Inter', system-ui, sans-serif;
  --font-mono: 'Fira Code', monospace;

  /* Bordas */
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-full: 9999px;
  --border-color: #dee2e6;

  /* Sombras */
  --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
  --shadow-md: 0 4px 6px rgba(0,0,0,0.07);
  --shadow-lg: 0 10px 15px rgba(0,0,0,0.1);

  /* Transições */
  --transition: 200ms ease;
}

/* Usar variáveis */
.button {
  background-color: var(--color-primary);
  padding: var(--space-sm) var(--space-md);
  border-radius: var(--radius-md);
  transition: background-color var(--transition);
}
.button:hover { background-color: var(--color-primary-hover); }

/* Fallback */
.card { background: var(--color-card-bg, var(--color-surface, #f8f9fa)); }

/* Dark mode */
@media (prefers-color-scheme: dark) {
  :root {
    --color-text: #f0f0f0;
    --color-background: #121212;
    --color-surface: #1e1e1e;
    --color-primary: #4d9fff;
    --border-color: #333;
  }
}

/* Com calc() */
.layout { padding: calc(var(--space-md) * 1.5); }
```

---

## 9. Transições e Animações

```css
/* Transição */
.button {
  transition: background-color 0.2s ease;
  transition:
    background-color 0.2s ease,
    transform        0.2s ease,
    box-shadow       0.3s ease;
  /* propriedade | duração | timing | delay */
  transition: opacity 0.3s ease-in-out 0.1s;
}
.button:hover { transform: scale(1.03); }

/* Timing functions */
.custom { transition-timing-function: cubic-bezier(0.34, 1.56, 0.64, 1); }

/* Transforms */
.transforms {
  transform: translateX(50px);
  transform: translateY(-20px);
  transform: translate(-50%, -50%); /* centralizar com absolute */
  transform: rotate(45deg);
  transform: scale(1.5);
  transform: skewX(20deg);
  /* Combinar */
  transform: translateY(-5px) scale(1.02);
}

/* @keyframes */
@keyframes fadeIn {
  from { opacity: 0; }
  to   { opacity: 1; }
}
@keyframes slideUp {
  from { opacity: 0; transform: translateY(30px); }
  to   { opacity: 1; transform: translateY(0); }
}
@keyframes spin {
  from { transform: rotate(0deg); }
  to   { transform: rotate(360deg); }
}
@keyframes pulse {
  0%, 100% { transform: scale(1); }
  50%       { transform: scale(1.05); }
}

/* Aplicar animação */
.card-enter { animation: slideUp 0.4s ease-out forwards; }
.loader     { animation: spin 1s linear infinite; }
/* name | duration | timing | delay | iterations | direction | fill-mode */
.full       { animation: bounce 0.6s ease-in-out 0.2s 3 alternate forwards; }

/* Respeitar preferência de movimento reduzido */
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

---

## 10. Media Queries

```css
/* Mobile-first (sem query = mobile base) */
@media (min-width: 576px)  { } /* sm */
@media (min-width: 768px)  { } /* md — tablets */
@media (min-width: 992px)  { } /* lg — laptops */
@media (min-width: 1200px) { } /* xl — desktops */
@media (min-width: 1400px) { } /* xxl */

/* Apenas mobile */
@media (max-width: 767px) { .sidebar { display: none; } }

/* Preferências do usuário */
@media (prefers-color-scheme: dark)     { /* tema escuro */ }
@media (prefers-reduced-motion: reduce) { /* menos movimento */ }
@media (prefers-contrast: more)         { /* alto contraste */ }
@media (hover: none) and (pointer: coarse) {
  .button { min-height: 44px; } /* botões maiores em touch */
}

/* Print */
@media print { .no-print { display: none; } }
```

---

## 11. CSS Moderno — clamp(), min(), max()

```css
/* clamp(mínimo, ideal, máximo) */
h1   { font-size: clamp(1.8rem, 5vw, 3.5rem); }
.section { padding: clamp(2rem, 8vw, 6rem); }

/* min() — limite superior */
.container { width: min(90%, 1200px); margin: 0 auto; }

/* max() — limite inferior */
p { font-size: max(1rem, 1.5vw); }

/* aspect-ratio */
.video { width: 100%; aspect-ratio: 16 / 9; }
.avatar { width: 80px; aspect-ratio: 1; border-radius: 50%; object-fit: cover; }
```

---

## 12. Utilitários Essenciais

```css
/* CSS Reset moderno */
*, *::before, *::after { box-sizing: border-box; }
* { margin: 0; }
body { line-height: 1.5; -webkit-font-smoothing: antialiased; }
img, picture, video, canvas, svg { display: block; max-width: 100%; }
input, button, textarea, select { font: inherit; }

/* Visualmente oculto (acessível para leitores de tela) */
.visually-hidden {
  position: absolute;
  width: 1px; height: 1px;
  padding: 0; margin: -1px;
  overflow: hidden; clip: rect(0,0,0,0);
  white-space: nowrap; border: 0;
}

/* Truncar texto */
.truncate { white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }

/* Focus acessível */
:focus-visible { outline: 2px solid var(--color-primary); outline-offset: 3px; }

/* Imagem responsiva */
img { display: block; max-width: 100%; height: auto; }

/* Padrões de centralização */
.flex-center { display: flex; justify-content: center; align-items: center; }
.grid-center { display: grid; place-items: center; }
.abs-center  { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }
```

## 🔗 Conecta com
- [[Referência - Doc - HTML5]]
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - React]]
