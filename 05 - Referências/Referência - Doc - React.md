---
tipo: referencia
fonte: doc
autor: Meta / React Team
url: https://react.dev/
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, react, javascript, frontend, programacao]
---

# Referência - Doc - React (v18+)

## 🔗 Fonte
- **URL Principal**: https://react.dev/
- **Hooks Reference**: https://react.dev/reference/react/hooks
- **useState**: https://react.dev/reference/react/useState
- **useEffect**: https://react.dev/reference/react/useEffect

---

## 1. Function Components & JSX

```tsx
// Componente básico
function Saudacao({ nome }: { nome: string }) {
  return <h1>Olá, {nome}!</h1>;
}

// Arrow function
const Botao = ({ label, onClick }: { label: string; onClick: () => void }) => (
  <button onClick={onClick}>{label}</button>
);

// Regras JSX:
// - um elemento raiz (ou Fragment)
// - className ao invés de class
// - htmlFor ao invés de for
// - expressões JS em {}
function Layout({ children }: { children: React.ReactNode }) {
  return (
    <>                          {/* Fragment — sem elemento DOM extra */}
      <header className="header">Meu App</header>
      <main>{children}</main>
    </>
  );
}

// Self-closing obrigatório para elementos sem filhos
<img src="foto.jpg" alt="Descrição" />
<input type="text" />
<br />
```

---

## 2. Props

```tsx
interface CardProps {
  titulo: string;
  contagem?: number;             // opcional (com ?)
  children: React.ReactNode;     // filhos JSX
  aoFechar: () => void;
  estilo?: React.CSSProperties;  // objeto de estilo
}

function Card({ titulo, contagem = 0, children, aoFechar }: CardProps) {
  return (
    <div>
      <h2>{titulo} ({contagem})</h2>
      <div>{children}</div>
      <button onClick={aoFechar}>X</button>
    </div>
  );
}

// Uso
<Card titulo="Itens" contagem={5} aoFechar={() => console.log('fechado')}>
  <p>Conteúdo aqui</p>
</Card>

// Spread de props (cuidado com over-spread)
const props = { titulo: "Título", contagem: 3 };
<Card {...props} aoFechar={() => {}} />
```

---

## 3. useState

```tsx
import { useState } from 'react';

function Contador() {
  // Inicialização simples
  const [conta, setConta] = useState(0);
  const [usuario, setUsuario] = useState<{ nome: string } | null>(null);

  // Inicialização lazy (função só chamada uma vez)
  const [todos, setTodos] = useState(() =>
    JSON.parse(localStorage.getItem('todos') || '[]')
  );

  // Atualização direta
  const incrementar = () => setConta(conta + 1);

  // Atualização funcional — usar quando o novo estado depende do anterior
  const incrementarSeguro = () => setConta(prev => prev + 1);

  // Múltiplas atualizações enfileiradas (todas aplicadas corretamente)
  const incrementarTres = () => {
    setConta(c => c + 1);
    setConta(c => c + 1);
    setConta(c => c + 1); // resultado: conta + 3
  };

  // Objetos — sempre criar novo (nunca mutar)
  const atualizarNome = (nome: string) =>
    setUsuario(prev => ({ ...prev!, nome }));

  // Arrays — sempre criar novo
  const adicionarItem = (item: string) =>
    setTodos((prev: string[]) => [...prev, item]);

  const removerItem = (idx: number) =>
    setTodos((prev: string[]) => prev.filter((_: string, i: number) => i !== idx));

  return <button onClick={incrementarSeguro}>{conta}</button>;
}
```

---

## 4. useEffect

```tsx
import { useState, useEffect } from 'react';

function PerfilUsuario({ userId }: { userId: number }) {
  const [usuario, setUsuario] = useState(null);

  // Executa em toda renderização (sem deps)
  useEffect(() => { document.title = 'App'; });

  // Executa só na montagem (deps vazio)
  useEffect(() => {
    console.log('montado');
    return () => console.log('desmontado'); // limpeza
  }, []);

  // Executa quando userId muda
  useEffect(() => {
    let cancelado = false; // evita race conditions

    fetch(`/api/usuarios/${userId}`)
      .then(r => r.json())
      .then(dados => { if (!cancelado) setUsuario(dados); });

    return () => { cancelado = true; }; // limpeza na re-execução
  }, [userId]); // deps: re-executa quando userId muda

  // Assinatura com limpeza
  useEffect(() => {
    const handler = (e: MouseEvent) => console.log(e.clientX, e.clientY);
    window.addEventListener('mousemove', handler);
    return () => window.removeEventListener('mousemove', handler);
  }, []);

  return <div>{JSON.stringify(usuario)}</div>;
}

// Quando usar useEffect:
// ✓ Sincronizar com APIs externas (fetch, WebSocket)
// ✓ Event listeners do DOM
// ✓ Timers (setTimeout, setInterval)
// ✗ NÃO usar para transformar dados (use useMemo ou calcule direto)
// ✗ NÃO usar para handlers de eventos (coloque direto no JSX)
```

---

## 5. useContext

```tsx
import { createContext, useContext, useState } from 'react';

// 1. Criar o contexto
interface TemaContextType { tema: string; alternar: () => void; }
const TemaContext = createContext<TemaContextType | null>(null);

// 2. Provider
function TemaProvider({ children }: { children: React.ReactNode }) {
  const [tema, setTema] = useState('claro');
  return (
    <TemaContext.Provider value={{
      tema,
      alternar: () => setTema(t => t === 'claro' ? 'escuro' : 'claro')
    }}>
      {children}
    </TemaContext.Provider>
  );
}

// 3. Hook customizado (boa prática)
function useTema() {
  const ctx = useContext(TemaContext);
  if (!ctx) throw new Error('useTema deve estar dentro de TemaProvider');
  return ctx;
}

// 4. Consumir
function BotaoTema() {
  const { tema, alternar } = useTema();
  return <button onClick={alternar}>Tema atual: {tema}</button>;
}

// 5. Envolver o app
function App() {
  return (
    <TemaProvider>
      <BotaoTema />
    </TemaProvider>
  );
}
```

---

## 6. useRef

```tsx
import { useRef, useEffect } from 'react';

function CampoTexto() {
  // Ref de DOM — tipo específico do elemento
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    inputRef.current?.focus(); // foco na montagem
  }, []);

  // Ref mutável — NÃO dispara re-render
  const contadorRender = useRef(0);
  contadorRender.current += 1; // persiste entre renders silenciosamente

  // Padrão de valor anterior
  const valorAnterior = useRef<string>('');
  // useEffect(() => { valorAnterior.current = valorAtual; });

  // Guardar referência a callback (evita re-criar)
  const callbackRef = useRef<() => void>(() => {});
  callbackRef.current = () => console.log('callback atualizado');

  return <input ref={inputRef} />;
}
```

---

## 7. useMemo e useCallback

```tsx
import { useMemo, useCallback } from 'react';

function ListaFiltrada({ itens, filtro }: { itens: string[]; filtro: string }) {
  // useMemo — cacheia resultado de computação custosa
  const filtrados = useMemo(
    () => itens.filter(i => i.includes(filtro)),
    [itens, filtro] // recalcula só quando mudar
  );

  // useCallback — cacheia referência de função
  // Evita re-renders de filhos que recebem a função como prop
  const handleClick = useCallback((item: string) => {
    console.log('clicado:', item);
  }, []); // sem deps = referência estável para sempre

  const handleDelete = useCallback((id: number) => {
    // se depender de estado externo, incluir nas deps
  }, []);

  return (
    <ul>
      {filtrados.map(item => (
        <li key={item} onClick={() => handleClick(item)}>{item}</li>
      ))}
    </ul>
  );
}

// Quando usar:
// useMemo: computações pesadas, criar objetos/arrays que são deps de outros hooks
// useCallback: funções passadas para componentes memorizados (React.memo)
// NÃO use prematuramente — adicione complexidade só quando há problema de performance
```

---

## 8. useReducer

```tsx
import { useReducer } from 'react';

type Estado = { conta: number; passo: number };
type Acao =
  | { tipo: 'incrementar' }
  | { tipo: 'decrementar' }
  | { tipo: 'definirPasso'; payload: number }
  | { tipo: 'resetar' };

function reducer(estado: Estado, acao: Acao): Estado {
  switch (acao.tipo) {
    case 'incrementar': return { ...estado, conta: estado.conta + estado.passo };
    case 'decrementar': return { ...estado, conta: estado.conta - estado.passo };
    case 'definirPasso': return { ...estado, passo: acao.payload };
    case 'resetar':      return { conta: 0, passo: 1 };
    default:             return estado;
  }
}

function Contador() {
  const [estado, dispatch] = useReducer(reducer, { conta: 0, passo: 1 });
  return (
    <>
      <p>Conta: {estado.conta} (passo: {estado.passo})</p>
      <button onClick={() => dispatch({ tipo: 'incrementar' })}>+</button>
      <button onClick={() => dispatch({ tipo: 'decrementar' })}>-</button>
      <button onClick={() => dispatch({ tipo: 'definirPasso', payload: 5 })}>Passo 5</button>
      <button onClick={() => dispatch({ tipo: 'resetar' })}>Reset</button>
    </>
  );
}

// Use useReducer quando:
// - Estado complexo com múltiplos sub-valores
// - Próximo estado depende do anterior
// - Lógica de atualização é complexa
```

---

## 9. Hooks Customizados

```tsx
import { useState, useEffect } from 'react';

// Convenção: nome começa com "use"
function useFetch<T>(url: string) {
  const [dados, setDados] = useState<T | null>(null);
  const [carregando, setCarregando] = useState(true);
  const [erro, setErro] = useState<Error | null>(null);

  useEffect(() => {
    let cancelado = false;
    setCarregando(true);
    setErro(null);

    fetch(url)
      .then(r => { if (!r.ok) throw new Error(r.statusText); return r.json(); })
      .then(d => { if (!cancelado) { setDados(d); setCarregando(false); } })
      .catch(e => { if (!cancelado) { setErro(e); setCarregando(false); } });

    return () => { cancelado = true; };
  }, [url]);

  return { dados, carregando, erro };
}

// Hook de localStorage
function useLocalStorage<T>(chave: string, valorInicial: T) {
  const [valor, setValor] = useState<T>(() => {
    try {
      const item = localStorage.getItem(chave);
      return item ? JSON.parse(item) : valorInicial;
    } catch { return valorInicial; }
  });

  const definir = (novoValor: T) => {
    setValor(novoValor);
    localStorage.setItem(chave, JSON.stringify(novoValor));
  };

  return [valor, definir] as const;
}

// Hook de debounce
function useDebounce<T>(valor: T, delay: number): T {
  const [debouncedValor, setDebouncedValor] = useState(valor);
  useEffect(() => {
    const timer = setTimeout(() => setDebouncedValor(valor), delay);
    return () => clearTimeout(timer);
  }, [valor, delay]);
  return debouncedValor;
}

// Uso dos hooks customizados
function CartaoUsuario({ id }: { id: number }) {
  const { dados: usuario, carregando, erro } = useFetch<{ nome: string }>(`/api/usuarios/${id}`);
  if (carregando) return <p>Carregando...</p>;
  if (erro) return <p>Erro: {erro.message}</p>;
  return <p>{usuario?.nome}</p>;
}
```

---

## 10. Eventos

```tsx
function Formulario() {
  const [valor, setValor] = useState('');

  // onClick
  const handleClick = (e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    console.log('clicado');
  };

  // onChange
  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setValor(e.target.value);
  };

  // onSubmit
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    console.log('enviado:', valor);
  };

  // onKeyDown
  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === 'Enter') console.log('Enter pressionado');
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        value={valor}
        onChange={handleChange}
        onKeyDown={handleKeyDown}
      />
      <button type="submit" onClick={handleClick}>Enviar</button>
    </form>
  );
}

// Tipos de eventos comuns:
// React.MouseEvent<HTMLElement>
// React.ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>
// React.FormEvent<HTMLFormElement>
// React.KeyboardEvent<HTMLElement>
// React.FocusEvent<HTMLElement>
// React.DragEvent<HTMLElement>
```

---

## 11. Renderização Condicional

```tsx
function Painel({ usuario, isAdmin }: { usuario: Usuario | null; isAdmin: boolean }) {
  // Early return
  if (!usuario) return <p>Faça login</p>;

  return (
    <div>
      {/* && operator — renderiza se verdadeiro */}
      {isAdmin && <PainelAdmin />}

      {/* Ternário */}
      {usuario.ativo ? <BadgeAtivo /> : <BadgeInativo />}

      {/* Variável */}
      {(() => {
        switch (usuario.papel) {
          case 'admin': return <VisaoAdmin />;
          case 'usuario': return <VisaoUsuario />;
          default: return <VisaoConvidado />;
        }
      })()}

      {/* Evitar: false, null, undefined renderizam nada */}
      {/* CUIDADO: 0 && <X /> renderiza 0! Use !!contagem && <X /> */}
      {!!usuarios.length && <Lista usuarios={usuarios} />}
    </div>
  );
}
```

---

## 12. Listas e Keys

```tsx
interface Item { id: number; nome: string; concluido: boolean; }

function ListaTarefas({ itens }: { itens: Item[] }) {
  return (
    <ul>
      {itens.map(item => (
        // key: estável, único, não usar índice se a lista reordena
        <li key={item.id} style={{ textDecoration: item.concluido ? 'line-through' : 'none' }}>
          {item.nome}
        </li>
      ))}
    </ul>
  );
}

// Renderizar grupos
function ListaAgrupada({ dados }: { dados: Record<string, Item[]> }) {
  return (
    <div>
      {Object.entries(dados).map(([grupo, itens]) => (
        <div key={grupo}>
          <h3>{grupo}</h3>
          {itens.map(item => <span key={item.id}>{item.nome}</span>)}
        </div>
      ))}
    </div>
  );
}
```

---

## 13. Formulários

```tsx
// CONTROLADO — React controla o valor
function FormularioControlado() {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    console.log({ nome, email });
  };

  return (
    <form onSubmit={handleSubmit}>
      <input value={nome} onChange={e => setNome(e.target.value)} />
      <input value={email} onChange={e => setEmail(e.target.value)} type="email" />
      <button type="submit">Enviar</button>
    </form>
  );
}

// NÃO CONTROLADO — DOM controla, lê via ref
function FormularioNaoControlado() {
  const nomeRef = useRef<HTMLInputElement>(null);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    console.log(nomeRef.current?.value);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input ref={nomeRef} defaultValue="valor inicial" />
      <button type="submit">Enviar</button>
    </form>
  );
}
```

---

## 14. React.memo para Otimização

```tsx
import { memo } from 'react';

// Evita re-render se props não mudaram (comparação rasa)
const FilhoCaros = memo(function FilhoCaros({ valor }: { valor: string }) {
  return <div>{valor}</div>;
});

// Comparação customizada
const FilhoOtimizado = memo(
  ({ itens }: { itens: string[] }) => (
    <ul>{itens.map(i => <li key={i}>{i}</li>)}</ul>
  ),
  (prev, next) => prev.itens.length === next.itens.length
);

// Para memo funcionar, as props de função precisam ser estáveis com useCallback
function Pai() {
  const handleClick = useCallback(() => console.log('clicou'), []); // estável
  return <FilhoCaros valor="texto" />;
}
```

---

## 15. React Router v6

```tsx
// App.tsx
import { BrowserRouter, Routes, Route } from 'react-router-dom';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Inicio />} />
        <Route path="/usuarios" element={<ListaUsuarios />} />
        <Route path="/usuarios/:id" element={<DetalheUsuario />} />
        <Route path="/sobre" element={<Sobre />} />
        <Route path="*" element={<NaoEncontrado />} />

        {/* Rotas aninhadas */}
        <Route path="/painel" element={<LayoutPainel />}>
          <Route index element={<IniciopaineL />} />
          <Route path="configuracoes" element={<Configuracoes />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}

// Navegação
import { Link, NavLink, useNavigate, useParams, useSearchParams, Outlet } from 'react-router-dom';

function Navegacao() {
  const navigate = useNavigate();
  return (
    <>
      <Link to="/">Início</Link>
      <NavLink to="/sobre" className={({ isActive }) => isActive ? 'ativo' : ''}>
        Sobre
      </NavLink>
      <button onClick={() => navigate('/usuarios')}>Ir para Usuários</button>
      <button onClick={() => navigate(-1)}>Voltar</button>
      <button onClick={() => navigate('/login', { replace: true })}>Redirecionar</button>
    </>
  );
}

// Params de rota
function DetalheUsuario() {
  const { id } = useParams<{ id: string }>();
  const [searchParams, setSearchParams] = useSearchParams();
  const aba = searchParams.get('aba'); // /usuarios/5?aba=perfil

  return <div>Usuário {id}, aba: {aba}</div>;
}

// Layout com Outlet (para rotas aninhadas)
function LayoutPainel() {
  return (
    <div>
      <nav>Sidebar</nav>
      <Outlet /> {/* filhos renderizam aqui */}
    </div>
  );
}
```

---

## 16. Padrões Comuns

```tsx
// Loading state com skeleton
function ComponenteComLoading() {
  const { dados, carregando } = useFetch('/api/dados');
  return carregando ? <Skeleton /> : <Conteudo dados={dados} />;
}

// Error boundary (classe — não tem hook equivalente ainda)
class ErrorBoundary extends React.Component<
  { children: React.ReactNode },
  { hasError: boolean }
> {
  state = { hasError: false };
  static getDerivedStateFromError() { return { hasError: true }; }
  componentDidCatch(error: Error, info: React.ErrorInfo) { console.error(error, info); }
  render() {
    if (this.state.hasError) return <h2>Algo deu errado.</h2>;
    return this.props.children;
  }
}

// Compound components
function Select({ children, onChange }: { children: React.ReactNode; onChange: (val: string) => void }) {
  return <div className="select">{children}</div>;
}
Select.Option = function Option({ value, label }: { value: string; label: string }) {
  return <div className="option">{label}</div>;
};

// Render props
function MouseTracker({ render }: { render: (pos: { x: number; y: number }) => React.ReactNode }) {
  const [pos, setPos] = useState({ x: 0, y: 0 });
  return <div onMouseMove={e => setPos({ x: e.clientX, y: e.clientY })}>{render(pos)}</div>;
}
```

---

## Cheat Sheet Rápido

```tsx
// Tipos de tipos de props
children: React.ReactNode      // qualquer JSX válido
style?: React.CSSProperties    // objeto de estilo inline
className?: string             // classe CSS
onClick?: () => void           // handler de evento
onChange?: (e: React.ChangeEvent<HTMLInputElement>) => void
ref?: React.RefObject<HTMLDivElement>

// Hooks mais usados
useState, useEffect, useContext, useRef,
useMemo, useCallback, useReducer

// Importações comuns
import React, { useState, useEffect, useCallback, useMemo, useRef, memo } from 'react';
import type { FC, ReactNode, CSSProperties } from 'react';

// FC (FunctionComponent) type — alternativa para tipar componentes
const MeuComponente: FC<{ nome: string }> = ({ nome }) => <div>{nome}</div>;

// Forwardref — para passar ref para componente filho
const InputRef = React.forwardRef<HTMLInputElement, { placeholder: string }>(
  ({ placeholder }, ref) => <input ref={ref} placeholder={placeholder} />
);
```

## 🔗 Conecta com
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - TypeScript]]
- [[Referência - Doc - CSS3]]
- [[Referência - Doc - HTML5]]
- [[Referência - Doc - Node.js]]
