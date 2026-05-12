---
tipo: referencia
fonte: doc
autor: Microsoft / TypeScript Team
url: https://www.typescriptlang.org/docs/
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, typescript, javascript, programacao]
---

# Referência - Doc - TypeScript

## 🔗 Fonte
- **URL Principal**: https://www.typescriptlang.org/docs/
- **Handbook**: https://www.typescriptlang.org/docs/handbook/intro.html
- **Utility Types**: https://www.typescriptlang.org/docs/handbook/utility-types.html
- **Generics**: https://www.typescriptlang.org/docs/handbook/2/generics.html
- **Playground**: https://www.typescriptlang.org/play

---

## 1. Tipos Básicos

```typescript
// Primitivos — sempre minúsculos
let nome: string = "Alice";
let idade: number = 42;
let ativo: boolean = true;
let nada: null = null;
let indefinido: undefined = undefined;

// any — desativa checagem de tipos (evitar)
let wild: any = "qualquer coisa";

// unknown — alternativa segura ao any (deve narrowing antes de usar)
let valor: unknown = buscarDados();
if (typeof valor === "string") console.log(valor.toUpperCase());

// never — função que nunca retorna
function falhar(msg: string): never { throw new Error(msg); }

// void — função sem retorno significativo
function log(msg: string): void { console.log(msg); }

// Outros
let big: bigint = 100n;
let sym: symbol = Symbol("id");
let obj: object = { chave: "val" };
```

---

## 2. Anotações de Tipo e Inferência

```typescript
// Explícita
let contador: number = 0;

// Inferida — TypeScript descobre pelo valor
let inferido = "olá"; // inferido como string

// Funções — parâmetros precisam de anotação; retorno é opcional (inferido)
function soma(a: number, b: number): number { return a + b; }

// Tipagem contextual — parâmetro inferido pelo array
["a", "b"].forEach(s => console.log(s.toUpperCase())); // s é string
```

---

## 3. Interfaces vs Type Aliases

```typescript
// Interface — extensível, suporta declaration merging
interface Usuario {
  id: number;
  nome: string;
  email?: string;       // opcional
  readonly criado: Date; // somente leitura
}
interface Admin extends Usuario { papel: string; }

// Declaration merging (só interfaces)
interface Window { minhaProp: string; }
interface Window { outraProp: number; } // complementa a anterior

// Type alias — mais flexível, suporta unions/intersections
type ID = number | string;
type Ponto = { x: number; y: number };
type Admin2 = Usuario & { papel: string }; // intersection
type Callback = (erro: Error | null, resultado?: string) => void;

// Regra de ouro: prefira interface para shapes de objetos;
// use type para unions, intersections e aliases.
```

---

## 4. Generics

```typescript
// Função genérica
function identidade<T>(arg: T): T { return arg; }
identidade<string>("olá");  // explícito
identidade(42);             // inferido

// Interface genérica
interface Repositorio<T> {
  buscarPorId(id: number): T;
  salvar(entidade: T): void;
}

// Classe genérica
class Pilha<T> {
  private itens: T[] = [];
  empilhar(item: T) { this.itens.push(item); }
  desempilhar(): T | undefined { return this.itens.pop(); }
}

// Restrição — exige que T tenha .length
function logTamanho<T extends { length: number }>(arg: T): T {
  console.log(arg.length);
  return arg;
}

// keyof
function getProp<T, K extends keyof T>(obj: T, key: K): T[K] {
  return obj[key];
}
getProp({ a: 1, b: 2 }, "a"); // OK
// getProp({ a: 1 }, "z");    // ERRO

// Múltiplos parâmetros
function zip<T, U>(arr1: T[], arr2: U[]): [T, U][] {
  return arr1.map((item, i) => [item, arr2[i]]);
}
```

---

## 5. Union, Intersection e Literal Types

```typescript
// Union — um dos tipos
type StringOuNumero = string | number;
function imprimirId(id: string | number) { console.log(id); }

// Intersection — todos os tipos
type Funcionario = { nome: string } & { departamento: string };

// Literal types — valores específicos
type Direcao = "esquerda" | "direita" | "cima" | "baixo";
type CodigoStatus = 200 | 404 | 500;
type Sim = true;

// as const — converte para literal types
const config = { metodo: "GET", url: "/api" } as const;
// config.metodo é "GET", não string
```

---

## 6. Utility Types

```typescript
interface Todo {
  titulo: string;
  descricao: string;
  concluido: boolean;
  criadoEm: number;
}

// Partial<T> — todas as props opcionais
type TodoRascunho = Partial<Todo>;

// Required<T> — todas as props obrigatórias
type TodoCompleto = Required<Partial<Todo>>;

// Readonly<T> — sem reatribuição
const frozen: Readonly<Todo> = { titulo: "T", descricao: "D", concluido: false, criadoEm: 0 };
// frozen.titulo = "X"; // ERRO

// Pick<T, K> — selecionar chaves específicas
type ResumoTodo = Pick<Todo, "titulo" | "concluido">;

// Omit<T, K> — excluir chaves específicas
type TodoSemTimestamp = Omit<Todo, "criadoEm">;

// Record<K, V> — mapear chaves para tipo
type MapaPaginas = Record<"inicio" | "sobre" | "contato", string>;

// Exclude<T, U> — remover da union
type SemBoolean = Exclude<string | number | boolean, boolean>; // string | number

// Extract<T, U> — manter apenas o matching
type ApenasString = Extract<string | number | boolean, string>; // string

// NonNullable<T> — remover null e undefined
type Seguro = NonNullable<string | null | undefined>; // string

// ReturnType<T> — tipo de retorno da função
function getUsuario() { return { id: 1, nome: "Alice" }; }
type TipoUsuario = ReturnType<typeof getUsuario>; // { id: number; nome: string }

// Parameters<T> — parâmetros como tuple
function criarUsuario(id: number, nome: string) {}
type ParamsCriar = Parameters<typeof criarUsuario>; // [id: number, nome: string]

// InstanceType<T> — tipo de instância de uma classe
class MinhaClasse {}
type InstanciaMinhaClasse = InstanceType<typeof MinhaClasse>;
```

---

## 7. Enums

```typescript
// Numérico (auto-incrementa de 0)
enum Direcao { Cima, Baixo, Esquerda, Direita }
Direcao.Cima    // 0
Direcao.Baixo   // 1

// Com valor inicial
enum Status { Ativo = 1, Inativo, Pendente }

// String enum (preferido para legibilidade)
enum Cor { Vermelho = "VERMELHO", Verde = "VERDE", Azul = "AZUL" }

// Const enum (inlinado em tempo de compilação — sem objeto em runtime)
const enum Tamanho { Pequeno = "P", Medio = "M", Grande = "G" }
```

---

## 8. Type Narrowing

```typescript
// typeof
function processar(val: string | number) {
  if (typeof val === "string") return val.toUpperCase();
  return val.toFixed(2);
}

// instanceof
function formatar(val: Date | string) {
  if (val instanceof Date) return val.toISOString();
  return val;
}

// in operator
type Gato = { miar(): void };
type Cachorro = { latir(): void };
function fazerSom(animal: Gato | Cachorro) {
  if ("miar" in animal) animal.miar();
  else animal.latir();
}

// Discriminated unions — propriedade literal compartilhada
type Forma =
  | { tipo: "circulo"; raio: number }
  | { tipo: "quadrado"; lado: number };

function area(forma: Forma): number {
  switch (forma.tipo) {
    case "circulo":  return Math.PI * forma.raio ** 2;
    case "quadrado": return forma.lado ** 2;
  }
}

// Type guard customizado
function eString(val: unknown): val is string {
  return typeof val === "string";
}
```

---

## 9. Tipos Avançados

```typescript
// Conditional types
type IsString<T> = T extends string ? "sim" : "não";
type Resultado = IsString<"olá">; // "sim"

// Mapped types
type Opcional<T> = { [K in keyof T]?: T[K] };
type Somente<T> = { readonly [K in keyof T]: T[K] };

// Template literal types
type NomeEvento = `on${Capitalize<string>}`;
type Getter<T extends string> = `get${Capitalize<T>}`;

// Indexed access types
type Tipo = { a: number; b: string };
type TipoA = Tipo["a"]; // number

// infer keyword
type RetornoPromise<T> = T extends Promise<infer U> ? U : never;
type Str = RetornoPromise<Promise<string>>; // string

// Tuple types
type Par = [string, number];
const p: Par = ["olá", 42];
const [s, n] = p; // desestruturação com tipos
```

---

## 10. Decorators (Experimental)

Habilitar em `tsconfig.json`: `"experimentalDecorators": true`

```typescript
// Class decorator
function sealed(constructor: Function) {
  Object.seal(constructor);
  Object.seal(constructor.prototype);
}

@sealed
class RelatorioErro { tipo = "relatorio"; }

// Method decorator
function log(target: any, key: string, descriptor: PropertyDescriptor) {
  const original = descriptor.value;
  descriptor.value = function (...args: any[]) {
    console.log(`Chamando ${key} com`, args);
    return original.apply(this, args);
  };
  return descriptor;
}

class Calculadora {
  @log
  somar(a: number, b: number) { return a + b; }
}
```

---

## 11. Módulos e Declaration Files

```typescript
// meuModulo.ts — exportar
export const PI = 3.14159;
export function quadrado(x: number): number { return x * x; }
export default class Calculadora { }

// consumidor.ts — importar
import Calculadora, { PI, quadrado } from "./meuModulo";
import * as math from "./meuModulo";

// Declaration file (.d.ts) — tipos para libs JS
declare module "minha-lib" {
  export function fazerAlgo(valor: string): number;
  export const versao: string;
}

// Estender tipos globais
declare global {
  interface Window { analytics: { track(evento: string): void } }
}
```

---

## 12. tsconfig.json Essencial

```json
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "ESNext",
    "moduleResolution": "bundler",
    "strict": true,
    "noImplicitAny": true,
    "strictNullChecks": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "outDir": "./dist",
    "rootDir": "./src",
    "paths": { "@/*": ["./src/*"] }
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules", "dist"]
}
```

---

## Cheat Sheet Rápido

```typescript
// Array types
let numeros: number[] = [1, 2, 3];
let strings: Array<string> = ["a", "b"];
let readonly: ReadonlyArray<number> = [1, 2, 3];

// Object type literal
let ponto: { x: number; y: number } = { x: 0, y: 0 };

// Function type
let fn: (a: number, b: number) => number = (a, b) => a + b;

// Promise type
async function buscarDados(): Promise<string> { return "dados"; }

// Event handlers em React
(e: React.ChangeEvent<HTMLInputElement>) => e.target.value
(e: React.MouseEvent<HTMLButtonElement>) => e.preventDefault()

// Asserção de tipo (usar com cuidado)
const el = document.getElementById("meu-id") as HTMLInputElement;
const num = (valor as unknown) as number;

// Non-null assertion (!)
const el = document.getElementById("id")!; // afirma que não é null
```

## 🔗 Conecta com
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - React]]
- [[Referência - Doc - Node.js]]
