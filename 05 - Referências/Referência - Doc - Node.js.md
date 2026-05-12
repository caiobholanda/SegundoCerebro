---
tipo: referencia
fonte: doc
autor: OpenJS Foundation
url: https://nodejs.org/api/
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, nodejs, javascript, backend, programacao]
---

# Referência - Doc - Node.js

## 🔗 Fonte
- **API Docs**: https://nodejs.org/api/
- **Guias**: https://nodejs.org/en/docs/guides
- **fs Module**: https://nodejs.org/api/fs.html
- **Events**: https://nodejs.org/api/events.html

---

## 1. Módulos Built-in — Visão Geral

| Módulo | Propósito |
|---|---|
| `node:fs` | Sistema de arquivos |
| `node:path` | Utilitários de caminhos |
| `node:os` | Informações do sistema operacional |
| `node:http` / `node:https` | Servidor e cliente HTTP/HTTPS |
| `node:crypto` | Hash, criptografia, random |
| `node:events` | EventEmitter |
| `node:stream` | Streams Readable/Writable/Transform |
| `node:child_process` | Subprocessos |
| `node:util` | promisify, inspect, etc. |
| `node:url` | Análise de URLs |
| `node:net` | Sockets TCP |
| `node:timers/promises` | setTimeout/setInterval como promessas |

---

## 2. fs Module — Sistema de Arquivos

```javascript
// === API de Promessas (preferida) ===
import { readFile, writeFile, appendFile, readdir,
         mkdir, stat, unlink, rename, copyFile } from 'node:fs/promises';

// Ler arquivo
const dados = await readFile('arquivo.txt', 'utf8');

// Escrever (substitui se existir)
await writeFile('arquivo.txt', 'Olá Mundo');
await writeFile('arquivo.json', JSON.stringify(obj, null, 2), 'utf8');

// Append (cria se não existir)
await appendFile('log.txt', `${new Date().toISOString()} - Evento\n`);

// Listar diretório
const arquivos = await readdir('./src');
const comTipos = await readdir('./src', { withFileTypes: true });
comTipos.filter(f => f.isFile()); // apenas arquivos
comTipos.filter(f => f.isDirectory()); // apenas pastas

// Criar diretório (recursive evita erro se já existe)
await mkdir('./src/utils', { recursive: true });

// Informações do arquivo
const info = await stat('arquivo.txt');
info.isFile();       // true
info.isDirectory();  // false
info.size;           // bytes
info.mtime;          // última modificação (Date)
info.birthtime;      // criação (Date)

// Deletar
await unlink('temp.txt');

// Renomear/mover
await rename('antigo.txt', 'novo.txt');
await rename('./origem/arquivo.txt', './destino/arquivo.txt');

// Copiar
await copyFile('origem.txt', 'destino.txt');

// === API Callback ===
import fs from 'node:fs';
fs.readFile('arquivo.txt', 'utf8', (err, dados) => {
  if (err) throw err;
  console.log(dados);
});

// === API Síncrona (bloqueia event loop — usar com cautela) ===
const conteudo = fs.readFileSync('arquivo.txt', 'utf8');
fs.writeFileSync('arquivo.txt', 'conteudo');
const entradas = fs.readdirSync('./');
const info = fs.statSync('arquivo.txt');
fs.unlinkSync('arquivo.txt');
```

---

## 3. path Module

```javascript
import path from 'node:path';

// Juntar segmentos (lida com separadores do SO)
path.join('/usuarios', 'alice', 'docs', 'arquivo.txt');
// → /usuarios/alice/docs/arquivo.txt

// Resolver para caminho absoluto a partir do cwd
path.resolve('src', 'index.ts');
// → /diretorio/atual/src/index.ts

// Diretório de um caminho
path.dirname('/usuarios/alice/arquivo.txt');   // /usuarios/alice

// Nome do arquivo
path.basename('/usuarios/alice/arquivo.txt');  // arquivo.txt
path.basename('/usuarios/alice/arquivo.txt', '.txt'); // arquivo

// Extensão
path.extname('arquivo.txt');     // .txt
path.extname('arquivo.tar.gz'); // .gz

// Analisar em partes
path.parse('/home/user/arquivo.txt');
// { root: '/', dir: '/home/user', base: 'arquivo.txt', ext: '.txt', name: 'arquivo' }

// Equivalente de __dirname em ESM
import { fileURLToPath } from 'node:url';
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Caminho relativo entre dois caminhos
path.relative('/data/orandea/test/aaa', '/data/orandea/impl/bbb');
// → ../../impl/bbb
```

---

## 4. http Module — Servidor HTTP

```javascript
import http from 'node:http';

const servidor = http.createServer((req, res) => {
  const { method, url, headers } = req;

  // Roteamento simples
  if (method === 'GET' && url === '/') {
    res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
    res.end('Olá Mundo');

  } else if (method === 'GET' && url === '/json') {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ mensagem: 'ok', data: new Date() }));

  } else if (method === 'POST' && url === '/dados') {
    let corpo = '';
    req.on('data', chunk => { corpo += chunk.toString(); });
    req.on('end', () => {
      try {
        const dados = JSON.parse(corpo);
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ recebido: dados }));
      } catch {
        res.writeHead(400);
        res.end('JSON inválido');
      }
    });

  } else {
    res.writeHead(404, { 'Content-Type': 'text/plain' });
    res.end('Não encontrado');
  }
});

servidor.listen(3000, () => console.log('Servidor em http://localhost:3000'));

// request object (IncomingMessage)
req.method      // 'GET', 'POST', etc.
req.url         // '/caminho?query=valor'
req.headers     // objeto com headers
req.on('data')  // stream de corpo
req.on('end')   // corpo completo recebido

// response object (ServerResponse)
res.writeHead(status, headers)
res.setHeader('X-Custom', 'valor')
res.write('parte do corpo')
res.end('corpo final') // ou res.end() sem corpo
res.statusCode = 200
```

---

## 5. EventEmitter

```javascript
import { EventEmitter } from 'node:events';

const emitter = new EventEmitter();

// on — listener persistente
emitter.on('dados', (payload) => {
  console.log('recebido:', payload);
});

// once — dispara apenas na primeira vez
emitter.once('conectar', () => {
  console.log('conectado (uma vez)');
});

// emit — dispara todos os listeners sincronamente
emitter.emit('dados', { id: 1, valor: 'olá' });
emitter.emit('conectar');
emitter.emit('conectar'); // listener 'once' já foi removido

// removeListener / off
const handler = (msg) => console.log(msg);
emitter.on('mensagem', handler);
emitter.off('mensagem', handler); // remove listener específico

// removeAllListeners
emitter.removeAllListeners('dados');
emitter.removeAllListeners(); // todos os listeners

// listenerCount
emitter.listenerCount('dados'); // número de listeners

// Herdar EventEmitter
class Servidor extends EventEmitter {
  iniciar() {
    setTimeout(() => this.emit('pronto', { porta: 3000 }), 100);
  }
}
const srv = new Servidor();
srv.on('pronto', ({ porta }) => console.log(`Pronto na porta ${porta}`));
srv.iniciar();
```

---

## 6. Streams

```javascript
import { createReadStream, createWriteStream } from 'node:fs';
import { Transform, Readable } from 'node:stream';
import { pipeline } from 'node:stream/promises';

// Readable stream de arquivo
const legivel = createReadStream('entrada.txt', { encoding: 'utf8' });
legivel.on('data', chunk => process.stdout.write(chunk));
legivel.on('end', () => console.log('\nLeitura concluída'));
legivel.on('error', err => console.error(err));

// Writable stream
const gravavel = createWriteStream('saida.txt');
gravavel.write('Linha 1\n');
gravavel.end('Última linha\n');

// Transform stream customizado
const maiusculas = new Transform({
  transform(chunk, encoding, callback) {
    this.push(chunk.toString().toUpperCase());
    callback();
  }
});

// Pipeline (forma segura de encadear — propaga erros)
await pipeline(
  createReadStream('entrada.txt'),
  maiusculas,
  createWriteStream('saida.txt')
);

// Readable a partir de array/iterável (Node 12.3+)
const readable = Readable.from(['chunk1', 'chunk2', 'chunk3']);

// Ler stream como string
async function streamParaString(stream) {
  const chunks = [];
  for await (const chunk of stream) {
    chunks.push(Buffer.from(chunk));
  }
  return Buffer.concat(chunks).toString('utf8');
}
```

---

## 7. process Object

```javascript
process.env.NODE_ENV           // 'development' | 'production'
process.env.PORT               // variáveis de ambiente
process.env.DATABASE_URL

process.argv                   // ['node', 'script.js', ...args]
process.argv.slice(2)          // apenas args do usuário

process.cwd()                  // diretório de trabalho atual
process.chdir('/novo/dir')     // mudar diretório

process.platform               // 'win32' | 'linux' | 'darwin'
process.version                // versão do Node.js ('v20.0.0')
process.versions               // versões de dependências
process.arch                   // 'x64' | 'arm64' etc.

process.pid                    // ID do processo
process.ppid                   // ID do processo pai

process.exit(0)                // sair com sucesso
process.exit(1)                // sair com erro

process.stdout.write('mensagem\n')
process.stderr.write('erro\n')
process.stdin.resume()         // ler da entrada padrão

// Handlers de eventos do processo
process.on('uncaughtException', (err, origem) => {
  console.error('Exceção não tratada:', err);
  process.exit(1);
});

process.on('unhandledRejection', (razao, promessa) => {
  console.error('Rejeição não tratada:', razao);
});

process.on('SIGINT', () => {
  console.log('Ctrl+C capturado — encerrando graciosamente...');
  // cleanup aqui
  process.exit(0);
});

process.on('SIGTERM', () => {
  console.log('SIGTERM recebido');
  process.exit(0);
});
```

---

## 8. CommonJS vs ES Modules

```javascript
// === CommonJS (CJS) ===
// Arquivo .js com "type": "commonjs" no package.json, ou .cjs
const fs = require('node:fs');
const { join } = require('node:path');
const meuModulo = require('./meuModulo');

module.exports = { minhaFuncao };
module.exports.helper = () => {};
module.exports = class MinhaClasse {};

// === ES Modules (ESM) ===
// Arquivo .mjs ou "type": "module" no package.json
import fs from 'node:fs';
import { join } from 'node:path';
import meuModulo from './meuModulo.js'; // extensão obrigatória em ESM

export function minhaFuncao() {}
export default class MinhaClasse {}
export { helper };

// Import dinâmico (funciona em ambos — retorna Promise)
const modulo = await import('./meuModulo.js');

// __dirname equivalente em ESM
import { fileURLToPath } from 'node:url';
import { dirname } from 'node:path';
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);
```

---

## 9. package.json Essencial

```json
{
  "name": "meu-app",
  "version": "1.0.0",
  "description": "Descrição do projeto",
  "type": "module",
  "main": "dist/index.js",
  "scripts": {
    "start":   "node dist/index.js",
    "dev":     "tsx watch src/index.ts",
    "build":   "tsc",
    "test":    "jest",
    "lint":    "eslint src --ext .ts"
  },
  "dependencies": {
    "express": "^4.18.0"
  },
  "devDependencies": {
    "typescript": "^5.0.0",
    "@types/node": "^20.0.0",
    "tsx": "^4.0.0"
  },
  "engines": { "node": ">=18.0.0" },
  "license": "MIT"
}
```

**Semântica de versão (`^`, `~`, `*`):**
- `^1.2.3` — aceita `>=1.2.3 <2.0.0` (minor e patch)
- `~1.2.3` — aceita `>=1.2.3 <1.3.0` (apenas patch)
- `1.2.3` — versão exata
- `*` — qualquer versão (evitar)

---

## 10. Módulos Úteis da Stdlib

### `node:os`
```javascript
import os from 'node:os';
os.platform()      // 'win32' | 'linux' | 'darwin'
os.arch()          // 'x64' | 'arm64'
os.cpus()          // array de info dos CPUs
os.totalmem()      // bytes de memória total
os.freemem()       // bytes de memória livre
os.homedir()       // caminho do home do usuário
os.tmpdir()        // diretório temporário
os.hostname()      // nome do host
os.EOL             // '\n' (Linux) ou '\r\n' (Windows)
```

### `node:crypto`
```javascript
import { createHash, randomBytes, randomUUID } from 'node:crypto';

// Hash
const hash = createHash('sha256').update('dados').digest('hex');
const md5  = createHash('md5').update('dados').digest('base64');

// Random bytes
const bytes = randomBytes(32).toString('hex'); // 64 chars hex
const token = randomBytes(48).toString('base64url'); // URL-safe

// UUID v4
const id = randomUUID(); // 'a1b2c3d4-...'
```

### `node:util`
```javascript
import { promisify, inspect, format, deprecate } from 'node:util';

// Converter callback para promise
import { readFile } from 'node:fs';
const readFileAsync = promisify(readFile);
const conteudo = await readFileAsync('arquivo.txt', 'utf8');

// Inspeção de objetos (melhor que JSON.stringify para debug)
console.log(util.inspect(objeto, { depth: null, colors: true }));

// Formatação como printf
util.format('Olá %s, você tem %d anos', 'Alice', 30);
```

### `node:child_process`
```javascript
import { exec, execFile, spawn } from 'node:child_process';
import { promisify } from 'node:util';

const execAsync = promisify(exec);

// exec — shell string, buffer saída
const { stdout, stderr } = await execAsync('ls -la');

// execFile — sem shell, mais seguro
const { stdout: saida } = await promisify(execFile)('git', ['status']);

// spawn — stream de saída em tempo real
const processo = spawn('npm', ['install'], { stdio: 'inherit' });
processo.on('close', code => console.log('Saiu com código:', code));
```

---

## 11. Timers como Promessas (Node 15+)

```javascript
import { setTimeout, setInterval } from 'node:timers/promises';

// Aguardar
await setTimeout(1000); // espera 1 segundo
await setTimeout(500, 'valor-retornado'); // retorna o segundo argumento

// Iterável assíncrono — executa a cada intervalo
for await (const _ of setInterval(1000)) {
  console.log('Tick a cada 1 segundo');
  // use break para sair
}
```

---

## 12. Padrões Comuns

```javascript
// Ler JSON de arquivo
const config = JSON.parse(await readFile('config.json', 'utf8'));

// Escrever JSON formatado
await writeFile('dados.json', JSON.stringify(dados, null, 2));

// Ler variável de ambiente com padrão
const porta = parseInt(process.env.PORT ?? '3000', 10);
const nodeEnv = process.env.NODE_ENV ?? 'development';

// Verificar se arquivo existe
import { access, constants } from 'node:fs/promises';
async function existe(caminho) {
  try { await access(caminho, constants.F_OK); return true; }
  catch { return false; }
}

// Ler todos os arquivos de um diretório
import { readdir, readFile } from 'node:fs/promises';
async function lerDiretorio(dir) {
  const arquivos = await readdir(dir);
  return Promise.all(
    arquivos.map(async f => ({
      nome: f,
      conteudo: await readFile(path.join(dir, f), 'utf8')
    }))
  );
}

// Graceful shutdown
const servidor = http.createServer(handler);
process.on('SIGTERM', () => {
  servidor.close(() => {
    console.log('Servidor encerrado');
    process.exit(0);
  });
});
```

## 🔗 Conecta com
- [[Referência - Doc - JavaScript]]
- [[Referência - Doc - TypeScript]]
- [[Referência - Doc - SQL]]
