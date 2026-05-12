---
tipo: referencia
fonte: doc
autor: Python Software Foundation
url: https://docs.python.org/3/
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, python, programacao]
---

# Referência - Doc - Python

## 🔗 Fonte
- **URL Principal**: https://docs.python.org/3/
- **Built-ins**: https://docs.python.org/3/library/functions.html
- **Tipos**: https://docs.python.org/3/library/stdtypes.html
- **Tutorial**: https://docs.python.org/3/tutorial/

---

## 1. Variáveis e Tipos de Dados

```python
# Sem declaração — tipagem dinâmica
x = 10          # int
y = 3.14        # float
nome = "Alice"  # str
flag = True     # bool

type(x)               # <class 'int'>
isinstance(x, int)    # True

# Conversão de tipo
int("42")        # 42
float("3.14")    # 3.14
str(100)         # "100"
bool(0)          # False (0, None, [], {}, "" são falsy)
```

| Tipo | Exemplo | Mutável |
|------|---------|---------|
| `int` | `42` | Não |
| `float` | `3.14` | Não |
| `str` | `"hello"` | Não |
| `bool` | `True` | Não |
| `list` | `[1, 2, 3]` | **Sim** |
| `tuple` | `(1, 2, 3)` | Não |
| `dict` | `{"a": 1}` | **Sim** |
| `set` | `{1, 2, 3}` | **Sim** |

---

## 2. Funções

```python
def saudar(nome, saudacao="Olá"):
    """Docstring descritiva."""
    return f"{saudacao}, {nome}!"

# *args e **kwargs
def variadic(*args, **kwargs):
    for arg in args: print(arg)
    for k, v in kwargs.items(): print(f"{k}={v}")

# Lambda
quadrado = lambda x: x ** 2
lista.sort(key=lambda par: par[1])

# Anotações de tipo (sem enforcement em runtime)
def soma(a: int, b: int) -> int:
    return a + b
```

---

## 3. Classes e OOP

```python
class Animal:
    especie = "Desconhecida"  # variável de classe

    def __init__(self, nome, som):
        self.nome = nome      # variável de instância
        self.som = som

    def __str__(self):  return f"Animal({self.nome})"
    def __repr__(self): return f"Animal(nome={self.nome!r})"

    def falar(self):
        return f"{self.nome} diz {self.som}"


class Cachorro(Animal):
    def __init__(self, nome):
        super().__init__(nome, "Au")

    def falar(self):  # override
        return f"{self.nome} late!"


d = Cachorro("Rex")
print(d)               # Animal(Rex)
d.falar()              # Rex late!
isinstance(d, Animal)  # True
```

---

## 4. Exceções

```python
try:
    resultado = 10 / 0
except ZeroDivisionError as e:
    print("Capturado:", e)
except (TypeError, ValueError):
    print("Múltiplos tipos")
else:
    print("Sucesso:", resultado)  # só se NÃO houve exceção
finally:
    print("Sempre executa")

# Levantar exceção
raise ValueError("entrada inválida")
raise ValueError("encadeado") from erro_original

# Exceção customizada
class AppError(Exception):
    def __init__(self, message, code=None):
        super().__init__(message)
        self.code = code

raise AppError("Falha", code=404)
```

---

## 5. Funções Built-in

```python
print(*objetos, sep=' ', end='\n')
len(obj)                    # comprimento
type(obj)                   # tipo
isinstance(obj, int)        # True se int ou subclasse

# Conversão
int("42"), int("FF", 16)    # 42, 255
float("3.14")               # 3.14
str(42)                     # "42"
bool(0)                     # False
list("abc")                 # ['a','b','c']
tuple([1,2,3])              # (1,2,3)
set([1,2,2,3])              # {1,2,3}
dict(a=1, b=2)              # {'a':1,'b':2}

# Iteração
range(10)                   # 0..9
range(2, 10, 2)             # 2,4,6,8
enumerate(['a','b'], start=1) # (1,'a'), (2,'b')
zip([1,2], ['a','b'])       # (1,'a'), (2,'b')
map(str.upper, ['hello'])   # lazy iterator
filter(None, [0, 1, "", "hi"]) # remove falsy

# Ordenação
sorted([3,1,2])                          # [1,2,3]
sorted(lista, key=lambda x: x[1])        # por segundo elemento
sorted(lista, reverse=True)
reversed([1,2,3])                        # iterator reverso

# Matemática
abs(-5), round(3.14159, 2)
sum([1,2,3]), min([3,1,2]), max([3,1,2])
pow(2, 10)

# Introspecção
dir(obj)    # lista atributos/métodos
help(obj)   # documentação interativa
id(obj)     # endereço de memória
hash("hi")  # hash inteiro
```

---

## 6. Métodos de String

```python
s = "  Olá, Mundo!  "

s.upper() / s.lower() / s.title()
s.find("Mundo")         # 6 (-1 se não encontrar)
s.count("l")            # contagem de ocorrências
s.startswith("  Ol")    # True
s.endswith("!  ")       # True
s.strip()               # "Olá, Mundo!"
s.lstrip() / s.rstrip()
s.replace("Mundo", "Python")

"a,b,c".split(",")      # ['a','b','c']
"  a  b  ".split()      # ['a','b'] — divide em whitespace
", ".join(["a","b","c"]) # "a, b, c"

# F-strings (preferido)
f"Meu nome é {nome}, tenho {idade}"
f"{3.14159:.2f}"         # "3.14"
f"{'esq':<10}"           # "esq       " (10 chars, alinhado à esq)
f"{42:05d}"              # "00042"
```

---

## 7. Métodos de Lista

```python
lst = [3, 1, 4, 1, 5]

lst.append(2)            # adiciona ao final
lst.extend([6, 5])       # adiciona múltiplos
lst.insert(0, 99)        # insere no índice 0
lst.remove(1)            # remove primeira ocorrência do valor
lst.pop()                # remove e retorna o último
lst.pop(0)               # remove e retorna no índice 0
lst.index(4)             # índice da primeira ocorrência
lst.count(1)             # conta ocorrências
lst.sort()               # ordena in-place
lst.sort(reverse=True)   # ordena descrescente
lst.sort(key=len)        # ordena por função chave
lst.reverse()            # inverte in-place
lst.copy()               # cópia rasa
lst.clear()              # remove tudo

# Fatiamento
lst[start:stop:step]
lst[::-1]    # reverso
lst[::2]     # um a cada dois
```

---

## 8. Métodos de Dicionário

```python
d = {"a": 1, "b": 2, "c": 3}

d.get("a")              # 1
d.get("z")              # None (sem KeyError)
d.get("z", 0)           # 0 (valor padrão)
d.keys()                # dict_keys(['a','b','c'])
d.values()              # dict_values([1,2,3])
d.items()               # dict_items([('a',1),...])
d.update({"d": 4})      # merge
d.pop("a")              # remove chave, retorna valor
d.pop("z", None)        # retorna padrão se não existir
d.setdefault("e", 0)    # retorna d["e"] ou define como 0
d.copy()                # cópia rasa

# Iteração
for key in d: ...
for key, val in d.items(): ...

# Merge (Python 3.9+)
merged = d1 | d2
d1 |= d2
```

---

## 9. Operações de Set

```python
a = {1, 2, 3, 4}
b = {3, 4, 5, 6}

a | b   # união:               {1,2,3,4,5,6}
a & b   # interseção:          {3,4}
a - b   # diferença:           {1,2}
a ^ b   # diferença simétrica: {1,2,5,6}
a.issubset(b) / a.issuperset(b)
a.add(10)
a.remove(1)    # KeyError se não existir
a.discard(99)  # sem erro se não existir
```

---

## 10. Comprehensions

```python
# Lista
quadrados = [x**2 for x in range(10)]
pares     = [x for x in range(20) if x % 2 == 0]
pares_prod = [(x, y) for x in [1,2,3] for y in [4,5,6]]

# Dict
mapa = {x: x**2 for x in range(5)}
invertido = {v: k for k, v in d.items()}

# Set
comprimentos = {len(p) for p in ["oi", "olá", "ei"]}

# Generator (lazy, eficiente em memória)
total = sum(x**2 for x in range(1000))
gen   = (x**2 for x in range(10))
next(gen)  # 0
next(gen)  # 1
```

---

## 11. Arquivo I/O

```python
# Leitura
with open("arquivo.txt", "r", encoding="utf-8") as f:
    conteudo = f.read()         # string inteira
    linhas   = f.readlines()    # lista de linhas
    for linha in f:             # iteração eficiente
        print(linha.strip())

# Escrita
with open("arquivo.txt", "w", encoding="utf-8") as f:
    f.write("Olá\n")
    f.writelines(["linha1\n", "linha2\n"])

# Append
with open("arquivo.txt", "a") as f:
    f.write("linha adicionada\n")

# Binário
with open("imagem.png", "rb") as f:
    dados = f.read()

# Modos: 'r' ler, 'w' escrever(trunca), 'a' append, 'r+' ler+escrever, 'b' binário
```

---

## 12. Decorators

```python
import functools

def meu_decorator(func):
    @functools.wraps(func)  # preserva __name__, __doc__
    def wrapper(*args, **kwargs):
        print("Antes")
        resultado = func(*args, **kwargs)
        print("Depois")
        return resultado
    return wrapper

@meu_decorator
def saudar():
    print("Olá!")

# Decorator com argumentos
def repetir(n):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            for _ in range(n):
                func(*args, **kwargs)
        return wrapper
    return decorator

@repetir(3)
def ola(): print("oi")
```

---

## 13. Generators

```python
def contar_ate(n):
    for i in range(n):
        yield i  # suspende aqui, retoma no próximo next()

gen = contar_ate(3)
next(gen)  # 0
next(gen)  # 1

for val in contar_ate(5):
    print(val)

# yield from (delega a sub-generator)
def encadear(*iteráveis):
    for it in iteráveis:
        yield from it
```

---

## 14. Context Managers

```python
# Com contextlib (mais simples)
from contextlib import contextmanager

@contextmanager
def timer():
    import time
    inicio = time.time()
    try:
        yield
    finally:
        print(f"Tempo: {time.time() - inicio:.2f}s")

with timer():
    operacao_custosa()

# Baseado em classe
class ArquivoGerenciado:
    def __init__(self, caminho): self.caminho = caminho
    def __enter__(self):
        self.arquivo = open(self.caminho)
        return self.arquivo
    def __exit__(self, *args):
        self.arquivo.close()
        return False
```

---

## 15. Módulos da Stdlib

### `os`
```python
import os
os.getcwd()
os.listdir(".")
os.makedirs("a/b/c", exist_ok=True)
os.environ.get("HOME", "/tmp")
os.path.join("dir", "arquivo.txt")
os.path.exists("/caminho") / os.path.isfile() / os.path.isdir()
os.path.dirname("/a/b/c.txt")  # "/a/b"
os.path.basename("/a/b/c.txt") # "c.txt"
```

### `sys`
```python
import sys
sys.argv       # argumentos da linha de comando
sys.exit(0)    # encerrar programa
sys.path       # caminho de busca de módulos
sys.version    # versão do Python
```

### `json`
```python
import json
json.dumps({"a": 1}, indent=2)  # → string
json.loads('{"a": 1}')          # → dict
with open("dados.json", "w") as f: json.dump(obj, f, indent=2)
with open("dados.json", "r") as f: obj = json.load(f)
```

### `datetime`
```python
from datetime import datetime, date, timedelta
agora  = datetime.now()
hoje   = date.today()
dt     = datetime(2024, 12, 25, 10, 30)
dt.strftime("%Y-%m-%d %H:%M:%S")
datetime.strptime("2024-01-01", "%Y-%m-%d")
proxima_semana = hoje + timedelta(days=7)
```

### `pathlib`
```python
from pathlib import Path
p = Path("/home/user/docs/arquivo.txt")
p.exists() / p.is_file() / p.is_dir()
p.parent       # Path("/home/user/docs")
p.name         # "arquivo.txt"
p.stem         # "arquivo"
p.suffix       # ".txt"
p.read_text()
p.write_text("conteúdo")
p / "subdir" / "novo.txt"  # junção de caminhos com /
list(p.parent.glob("*.txt"))
Path.cwd() / Path.home()
```

### `re`
```python
import re
re.match(r"\d+", "123abc")          # match no início
re.search(r"\d+", "abc123")         # busca em qualquer lugar
re.findall(r"\d+", "a1b2c3")        # ['1','2','3']
re.sub(r"\s+", "_", "hello world")  # 'hello_world'
re.split(r"\W+", "um, dois, três")  # ['um','dois','três']

# Compilar para reutilização
padrao = re.compile(r"(\w+)@(\w+)\.(\w+)")
m = padrao.search("user@exemplo.com")
m.group(0)  # "user@exemplo.com"
m.group(1)  # "user"

# Flags: re.IGNORECASE, re.MULTILINE, re.DOTALL
```

### `collections`
```python
from collections import Counter, defaultdict, deque, namedtuple

# Counter
c = Counter("abracadabra")    # Counter({'a':5,...})
c.most_common(2)              # [('a',5),('b',2)]

# defaultdict
d = defaultdict(list)
d["cores"].append("vermelho") # sem KeyError
d = defaultdict(int)
d["contador"] += 1            # começa em 0

# deque — O(1) nas duas extremidades
dq = deque([1, 2, 3])
dq.appendleft(0) / dq.popleft()
dq.rotate(1)

# namedtuple
Ponto = namedtuple("Ponto", ["x", "y"])
p = Ponto(3, 4)
p.x, p.y   # 3, 4
```

### `itertools`
```python
import itertools
itertools.chain([1,2], [3,4])          # 1,2,3,4
itertools.cycle([1,2,3])               # infinito
itertools.product([1,2], [3,4])        # produto cartesiano
itertools.permutations([1,2,3], 2)     # permutações de 2
itertools.combinations([1,2,3], 2)     # combinações de 2
itertools.groupby(dados_ord, key)      # agrupa consecutivos
list(itertools.accumulate([1,2,3,4]))  # [1,3,6,10]
```

---

## 16. Dunder Methods (Magic Methods)

```python
class MinhaClasse:
    def __init__(self, val): self.val = val
    def __str__(self):       return f"MinhaClasse({self.val})"
    def __repr__(self):      return f"MinhaClasse(val={self.val!r})"
    def __len__(self):       return len(self.val)
    def __getitem__(self, k): return self.val[k]
    def __contains__(self, item): return item in self.val
    def __eq__(self, other): return self.val == other.val
    def __lt__(self, other): return self.val < other.val
    def __add__(self, other): return MinhaClasse(self.val + other.val)
    def __enter__(self):     return self
    def __exit__(self, *args): return False
    def __iter__(self):      return iter(self.val)
```

---

## 17. Cheat Sheet Rápido

```python
# Expressão condicional (ternário)
x = "sim" if condição else "não"

# Walrus operator (Python 3.8+)
if (n := len(lista)) > 10:
    print(f"Lista longa ({n} elementos)")

# Unpacking
a, b, c = [1, 2, 3]
primeiro, *resto = [1, 2, 3, 4]   # resto = [2,3,4]

# Global / nonlocal
def externo():
    x = 10
    def interno():
        nonlocal x  # modifica variável do escopo externo
        x += 1
    interno()

# Assert
assert condição, "mensagem de erro"

# Delete
del obj, lst[0], d["chave"]

# Comprehension aninhada (flatten)
achatado = [n for linha in [[1,2],[3,4]] for n in linha]
```

## 🔗 Conecta com
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - SQL]]
