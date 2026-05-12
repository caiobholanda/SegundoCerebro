---
tipo: referencia
fonte: doc
autor: MDN Web Docs
url: https://developer.mozilla.org/en-US/docs/Web/JavaScript
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, javascript, programacao]
---

# Referência - Doc - JavaScript

## 🔗 Fonte
- **URL Principal**: https://developer.mozilla.org/en-US/docs/Web/JavaScript
- **Guia**: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide
- **Referência API**: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference

---

## 1. Variáveis

| Feature | `var` | `let` | `const` |
|---|---|---|---|
| Escopo | Function | Block | Block |
| Re-declaração | Sim | Não | Não |
| Reatribuição | Sim | Sim | Não |
| Hoisting | Sim (undefined) | Sim (TDZ) | Sim (TDZ) |

```js
var x = 1;       // evitar
let count = 0;   // use quando precisar reatribuir
const PI = 3.14; // padrão — use sempre que possível
```

---

## 2. Tipos de Dados

```js
// 7 primitivos
true / false    // Boolean
null            // null
undefined       // undefined
42 / 3.14       // Number
9007199254740991n // BigInt
"hello"         // String
Symbol("id")    // Symbol

// Referência
[1, 2, 3]       // Array
{ key: "val" }  // Object
function() {}   // Function

// Verificar tipo
typeof "str"    // "string"
typeof 42       // "number"
typeof null     // "object" ← bug histórico
typeof []       // "object" — use Array.isArray()
Array.isArray([]) // true
```

---

## 3. Funções

```js
// Declaração (hoisted)
function add(a, b) { return a + b; }

// Arrow function
const square = (n) => n * n;
const greet  = name => `Hello, ${name}`;
const getObj = () => ({ id: 1 }); // objeto: parênteses obrigatórios

// Parâmetros padrão
function greet(name = "World") { return `Hello, ${name}`; }

// Rest parameters
function sum(...nums) { return nums.reduce((a, b) => a + b, 0); }

// Spread
const nums = [1, 2, 3];
Math.max(...nums); // 3
```

---

## 4. Closures

```js
function makeAdder(x) {
  return (y) => x + y; // y captura x do escopo externo
}
const add5 = makeAdder(5);
add5(2); // 7

// Armadilha do loop — use let/const, nunca var
for (let i = 0; i < 3; i++) {
  setTimeout(() => console.log(i), 100); // 0, 1, 2 ✓
}
```

---

## 5. Promises

```js
const p = new Promise((resolve, reject) => {
  setTimeout(() => resolve("done"), 1000);
});

p.then(val => console.log(val))
 .catch(err => console.error(err))
 .finally(() => console.log("fim"));

// Combinadores estáticos
Promise.all([p1, p2, p3])       // todas resolvem → array; qualquer rejeita → rejeita
Promise.allSettled([p1, p2])    // aguarda todas → [{status, value|reason}]
Promise.race([p1, p2])          // primeira a completar (resolve ou rejeita)
Promise.any([p1, p2])           // primeira a RESOLVER; todas rejeitam → AggregateError
```

---

## 6. Async / Await

```js
async function fetchUser(id) {
  try {
    const res = await fetch(`/api/users/${id}`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    return await res.json();
  } catch (err) {
    console.error(err);
  }
}

// Paralelo vs sequencial
async function sequencial() {
  const a = await taskA(); // espera A terminar
  const b = await taskB(); // depois inicia B
}
async function paralelo() {
  const [a, b] = await Promise.all([taskA(), taskB()]); // ambos simultâneos
}
```

---

## 7. Classes

```js
class Animal {
  #name; // campo privado

  constructor(name) { this.#name = name; }
  get name() { return this.#name; }
  speak() { return `${this.#name} faz barulho.`; }
  static create(name) { return new Animal(name); }
}

class Dog extends Animal {
  constructor(name) { super(name); }
  speak() { return `${this.name} late!`; }
}

const d = new Dog("Rex");
d.speak(); // Rex late!
```

---

## 8. Módulos ES6

```js
// math.js
export const PI = 3.14159;
export function add(a, b) { return a + b; }
export default class Calculator { }

// main.js
import Calculator, { PI, add } from "./math.js";
import * as Math from "./math.js";
import { add as sum } from "./math.js";

// Import dinâmico (lazy)
const { add } = await import("./math.js");
```

---

## 9. ES6+ — Recursos Modernos

### Desestruturação
```js
// Array
const [a, , b, ...rest] = [1, 2, 3, 4, 5]; // a=1, b=3, rest=[4,5]
let x = 1, y = 2;
[x, y] = [y, x]; // swap

// Objeto
const { name, age = 25, address: { city } } = user;
const { name: fullName } = user; // renomear
```

### Spread
```js
const arr2 = [...arr1, 4, 5];
const obj2 = { ...obj1, extra: true }; // clone raso
const merged = { ...defaults, ...overrides };
```

### Template Literals
```js
const msg = `Olá, ${name}! Você tem ${age} anos.`;
const multi = `
  Linha 1
  Linha 2
`;
```

### Optional Chaining `?.`
```js
user?.address?.city       // undefined se qualquer parte for null/undefined
arr?.[0]                  // acesso seguro a índice
obj?.method?.()           // chamada segura de método
const city = user?.address?.city ?? "Desconhecida";
```

### Nullish Coalescing `??`
```js
const val = input ?? "padrão";  // só dispara em null/undefined (0 e "" são preservados)
0 || 42  // 42 — verifica falsy
0 ?? 42  // 0  — só verifica nullish
obj.value ??= "padrão"; // atribui só se null/undefined
```

---

## 10. Métodos de Array

```js
const nums = [1, 2, 3, 4, 5];

// Transformação (retornam novo array)
nums.map(n => n * 2)               // [2,4,6,8,10]
nums.filter(n => n % 2 === 0)      // [2,4]
nums.flat()                        // achata 1 nível
nums.flatMap(n => [n, n * 2])      // map + flat

// Redução
nums.reduce((acc, n) => acc + n, 0) // 15

// Busca
nums.find(n => n > 3)              // 4 (primeiro)
nums.findIndex(n => n > 3)         // 3
nums.includes(3)                   // true
nums.indexOf(3)                    // 2
nums.some(n => n > 4)              // true
nums.every(n => n > 0)             // true

// Iteração
nums.forEach((n, i) => console.log(i, n));

// Mutação
arr.push("e")          // adiciona ao final → retorna novo length
arr.pop()              // remove do final → retorna item removido
arr.unshift("z")       // adiciona ao início
arr.shift()            // remove do início
arr.splice(1, 2, "x")  // remove 2 em idx 1, insere "x"
arr.sort((a, b) => a - b) // ordenação numérica
arr.reverse()          // inverte in-place
arr.fill(0, 1, 3)      // preenche idx 1-2 com 0

// Imutáveis (ES2023)
arr.toReversed()   // novo array revertido
arr.toSorted()     // novo array ordenado
arr.with(1, "X")   // novo array com idx 1 substituído

// Outros
arr.slice(1, 3)         // ["b","c"] (não muta)
arr.concat([1, 2])      // une arrays
arr.join(" - ")         // "a - b - c"
arr.at(-1)              // último elemento
Array.from("hello")     // ["h","e","l","l","o"]
Array.from({length:3}, (_,i) => i) // [0,1,2]
```

---

## 11. Métodos de String

```js
const s = "Hello, World!";

s.includes("World")      // true
s.startsWith("Hello")    // true
s.endsWith("!")          // true
s.indexOf("o")           // 4
s.slice(7, 12)           // "World"
s.at(-1)                 // "!"
s.toLowerCase()          // "hello, world!"
s.toUpperCase()          // "HELLO, WORLD!"
s.replace("World", "JS") // "Hello, JS!" (primeira ocorrência)
s.replaceAll("l", "L")   // substitui todas
s.trim()                 // remove espaços dos dois lados
s.trimStart() / s.trimEnd()
"5".padStart(4, "0")     // "0005"
"5".padEnd(4, "-")       // "5---"
"a,b,c".split(",")       // ["a","b","c"]
["a","b","c"].join("-")  // "a-b-c"
"ha".repeat(3)           // "hahaha"
s.match(/\w+/g)          // array de matches
s.matchAll(/(\w+)/g)     // iterator de todos os matches
```

---

## 12. Métodos de Object

```js
const obj = { a: 1, b: 2, c: 3 };

Object.keys(obj)          // ["a","b","c"]
Object.values(obj)        // [1,2,3]
Object.entries(obj)       // [["a",1],["b",2],["c",3]]
Object.fromEntries([["a",1],["b",2]]) // { a:1, b:2 }

Object.assign({}, obj, { d: 4 })  // merge
const clone = { ...obj }          // spread (preferido)

Object.freeze(obj)        // imutável (raso)
Object.hasOwn(obj, "a")   // true (moderno, preferido)
Object.defineProperty(obj, "x", { value: 42, writable: false })
```

---

## 13. JSON

```js
JSON.stringify({ a: 1, b: [2, 3] })        // string
JSON.stringify(obj, null, 2)               // pretty-print
JSON.parse('{"a":1}')                      // objeto
const copy = JSON.parse(JSON.stringify(obj)) // deep clone simples
```

---

## 14. Math

```js
Math.PI, Math.E
Math.floor(4.9)   // 4
Math.ceil(4.1)    // 5
Math.round(4.5)   // 5
Math.abs(-5)      // 5
Math.max(1,5,3)   // 5
Math.min(1,5,3)   // 1
Math.pow(2,8)     // 256
Math.sqrt(16)     // 4
Math.random()     // [0, 1)
// Inteiro aleatório em [min, max]:
Math.floor(Math.random() * (max - min + 1)) + min
Math.log2(8)      // 3
Math.log10(1000)  // 3
```

---

## 15. DOM API

```js
// Seleção
document.querySelector(".class")
document.querySelectorAll("p")        // NodeList
document.getElementById("myId")

// Criação e Inserção
const el = document.createElement("div");
el.textContent = "Olá";
parent.appendChild(el);
parent.prepend(el);
el.remove();

// Atributos e Classes
el.setAttribute("data-id", "42");
el.getAttribute("data-id");
el.classList.add("active");
el.classList.remove("active");
el.classList.toggle("active");
el.classList.contains("active");

// Eventos
el.addEventListener("click", (e) => {
  e.preventDefault();
  e.stopPropagation();
  console.log(e.target);
});
el.removeEventListener("click", handler);

// Travessia
el.parentElement
el.children
el.firstElementChild / el.lastElementChild
el.nextElementSibling / el.previousElementSibling
```

---

## 16. Fetch API

```js
// GET
async function getData(url) {
  const res = await fetch(url);
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return res.json();
}

// POST com JSON
async function postData(url, payload) {
  const res = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
  });
  return res.json();
}

// Cancelar com AbortController
const controller = new AbortController();
fetch(url, { signal: controller.signal });
controller.abort();

// Fetches paralelos
const [users, posts] = await Promise.all([
  fetch("/api/users").then(r => r.json()),
  fetch("/api/posts").then(r => r.json()),
]);

// Métodos de resposta
res.json() / res.text() / res.blob() / res.arrayBuffer()
```

---

## 17. Tratamento de Erros

```js
try {
  JSON.parse("{json ruim}");
} catch (err) {
  console.error(err.name);    // SyntaxError
  console.error(err.message);
} finally {
  console.log("sempre executa");
}

// Erro customizado
class ValidationError extends Error {
  constructor(message, field) {
    super(message);
    this.name = "ValidationError";
    this.field = field;
  }
}
throw new ValidationError("Obrigatório", "email");
```

---

## 18. Cheat Sheet Rápido

```js
// Ternário
const label = age >= 18 ? "adulto" : "menor";

// Optional chaining + nullish coalescing
const city = user?.profile?.address?.city ?? "N/A";

// Propriedade computada
const key = "name";
const obj = { [key]: "Alice" }; // { name: "Alice" }

// Shorthand de propriedade
const x = 1, y = 2;
const point = { x, y }; // { x: 1, y: 2 }

// for...of vs for...in
for (const item of array) { }   // valores (arrays, strings, iteráveis)
for (const key in object) { }   // chaves enumeráveis (objetos)
```

## 🔗 Conecta com
- [[Referência - Doc - TypeScript]]
- [[Referência - Doc - Node.js]]
- [[Referência - Doc - React]]
- [[Referência - Doc - HTML5]]
- [[Referência - Doc - CSS3]]
