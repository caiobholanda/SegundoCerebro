---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, dev, cloud, deploy]
pergunta-central: "Como colocar um site no ar para o público de forma profissional?"
relacionado-a: []
---

# Pesquisa — Deploy Público de Sites (Maio 2026)

## Mapa de Decisão

```
Que tipo de site?
├── Site estático (HTML/CSS/JS puro, sem backend)
│   └── Vercel, Netlify, GitHub Pages, Cloudflare Pages
├── Frontend + API separados
│   ├── Frontend → Vercel/Netlify
│   └── API → Railway, Render, Fly.io
└── Fullstack monolítico (Node.js, Python, etc.)
    └── Railway, Render, Fly.io, VPS (DigitalOcean, Hostinger)
```

## Opção 1: Railway (Recomendado para Node.js)

**Melhor para**: sistemas como o `sistema-chamados` — Node.js + SQLite/PostgreSQL.

**Como deployar:**
1. Conecte seu repositório GitHub ao Railway
2. Railway detecta automaticamente `package.json` e roda `npm start`
3. Configure variáveis de ambiente no painel
4. URL pública gerada automaticamente (`*.up.railway.app`)
5. Domínio customizado: adicione em Settings → Domains

**Volume persistente** (para SQLite):
```
Settings → Volumes → Add Volume → /app/data
```
Sem volume, o banco é apagado a cada deploy.

**Preço**: ~$5/mês para uso contínuo; tem plano gratuito com limitações.

## Opção 2: Vercel (Melhor para Frontend + APIs Serverless)

**Melhor para**: Next.js, React, Vue, sites com API routes simples.

```bash
npm i -g vercel
vercel login
vercel --prod          # deploy a partir do diretório local
```

Ou: conecte GitHub → deploys automáticos em cada push para `main`.

**Limitações**: funções serverless têm timeout de 10s (hobby) ou 60s (pro). Não ideal para conexões WebSocket ou processos longos.

## Opção 3: Netlify (Sites Estáticos + Forms + Functions)

**Melhor para**: landing pages, blogs, sites de documentação.

```bash
npm i -g netlify-cli
netlify login
netlify deploy --prod --dir=dist
```

Recursos extras gratuitos: formulários sem backend, auth, edge functions, redirects.

## Opção 4: VPS (Controle Total)

**Melhor para**: quando você precisa de controle total, múltiplos serviços, ou custo fixo previsível.

Provedores recomendados:
- **DigitalOcean Droplet**: a partir de $6/mês, interface simples
- **Hostinger VPS**: a partir de R$ 25/mês, suporte em PT-BR
- **AWS EC2 t3.micro**: free tier 1 ano, depois ~$8/mês

**Stack para VPS:**
```bash
# Instalar Node.js via nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install 20

# PM2 para manter o app rodando
npm i -g pm2
pm2 start server.js --name meu-app
pm2 save
pm2 startup   # configura restart automático

# Nginx como reverse proxy
sudo apt install nginx
```

**Nginx config básico:**
```nginx
server {
    listen 80;
    server_name meusite.com;

    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
    }
}
```

## HTTPS / SSL (Obrigatório em Produção)

Railway, Vercel e Netlify configuram HTTPS automaticamente.

Para VPS, use **Certbot** (Let's Encrypt gratuito):
```bash
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d meusite.com -d www.meusite.com
# Certificado gerado e Nginx configurado automaticamente
```

Renovação automática: `sudo certbot renew --dry-run`

## Domínio Personalizado

1. Compre o domínio: **Registro.br** (domínios .br), **Namecheap**, **GoDaddy**, **Cloudflare Registrar**
2. Aponte para seu servidor:
   - Para Railway/Vercel/Netlify: adicione registro CNAME no DNS
   - Para VPS: adicione registro A com o IP do servidor

**Cloudflare como intermediário** (recomendado):
- DNS gratuito com DDoS protection
- CDN para conteúdo estático
- Proxy que esconde o IP real do servidor

## CI/CD — Deploy Automático

### GitHub Actions (Railway/Render/VPS)

```yaml
# .github/workflows/deploy.yml
name: Deploy
on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with: { node-version: '20' }
      - run: npm ci
      - run: npm test
      - name: Deploy to Railway
        run: npx @railway/cli up
        env:
          RAILWAY_TOKEN: ${{ secrets.RAILWAY_TOKEN }}
```

### Variáveis de Ambiente em Produção

**Nunca** commitar `.env` no Git. Use:
- Railway: Settings → Variables
- Vercel: Settings → Environment Variables  
- VPS: arquivo `.env` no servidor, fora do repositório

## Checklist Pré-Deploy

- [ ] Variáveis de ambiente configuradas no servidor (não no código)
- [ ] `NODE_ENV=production` definido
- [ ] HTTPS ativo
- [ ] Logs configurados (sem `console.log` em loop)
- [ ] Erro handling para crashes inesperados
- [ ] Banco de dados com backup
- [ ] Rate limiting na API (express-rate-limit)
- [ ] Helmet.js para headers de segurança

```bash
npm i helmet express-rate-limit
```

```javascript
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';

app.use(helmet());
app.use('/api/', rateLimit({ windowMs: 15 * 60 * 1000, limit: 100 }));
```

## Monitoramento Pós-Deploy

- **Uptime**: UptimeRobot (gratuito) — alerta por email se o site cair
- **Logs**: Railway tem logs em tempo real no painel; para VPS use `pm2 logs`
- **Performance**: Lighthouse (Chrome DevTools) para score de performance/SEO

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — sistema já deployado no Railway com este padrão
- [[Pesquisa - 2026-05-08 - Cloud e Infraestrutura]] — provedores cloud detalhados
- [[Pesquisa - 2026-05-08 - Seguranca da Informacao]] — segurança em produção

## Fontes

- https://docs.railway.app/guides/deployments
- https://vercel.com/docs/deployments
- https://docs.digitalocean.com/tutorials/deploy-node-app
- https://certbot.eff.org
