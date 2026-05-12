---
tipo: pesquisa
status: ativo
criado: 2026-05-08
atualizado: 2026-05-08
tags: [pesquisa, dev]
pergunta-central: "Quais são as tendências de programação e desenvolvimento em 2026?"
relacionado-a: []
---

# Pesquisa — Programação e Desenvolvimento (Maio 2026)

## Linguagens em Alta

**TypeScript** continua dominante no desenvolvimento web fullstack — Node.js sem TypeScript tornou-se minoria em novos projetos. O ecossistema Bun (runtime alternativo ao Node) ganhou adoção significativa pela velocidade de startup e compatibilidade nativa com TypeScript sem transpilação.

**Rust** avançou no backend, substituindo C++ em sistemas críticos, com adoção crescente no kernel Linux e no ecossistema WASM (WebAssembly). Para desenvolvedores web que querem performance, Rust + WASM virou alternativa séria ao JavaScript pesado.

**Python** mantém liderança absoluta em IA/ML e scripts de automação. O Python 3.13 trouxe melhorias no GIL (Global Interpreter Lock) que abriram espaço para mais paralelismo real.

**Go** consolidou como língua franca de infraestrutura e CLIs — Docker, Kubernetes, Terraform e a maioria das ferramentas DevOps são escritas em Go.

## Frameworks e Ferramentas

| Categoria | Destaque 2026 |
|-----------|--------------|
| Frontend | Next.js 15, Astro 5 (SSG/SSR híbrido), SolidJS |
| Backend | Hono (ultra-leve, edge-first), Fastify, NestJS |
| Mobile | React Native com Expo SDK 53, Flutter 4 |
| ORM/DB | Drizzle ORM (TypeScript nativo), Prisma 6 |
| Runtime | Bun 1.x (Node drop-in replacement) |
| Testes | Vitest (substitui Jest em projetos Vite), Playwright |

## Boas Práticas que Emergiram

**Edge computing como padrão**: funções próximas ao usuário (Cloudflare Workers, Vercel Edge, AWS Lambda@Edge) para latência <10ms global. Aplicações que antes precisavam de servidor dedicado agora rodam sem gerenciar infraestrutura.

**Monorepos com Turborepo/Nx**: projetos médios/grandes abandonaram multi-repo para facilitar refactoring compartilhado e CI/CD unificado.

**Feature flags nativas**: ferramentas como Unleash e OpenFeature viraram padrão para releases graduais sem deploy, substituindo variáveis de ambiente hacky.

**IA no toolchain**: Copilot, Cursor e Claude Code integrados ao workflow — estima-se que 70%+ dos devs senior usam IA para geração de código, testes e revisão.

## SQLite em Produção

Uma mudança notável: **SQLite ganhou credibilidade em produção** para aplicações de pequeno/médio porte. Ferramentas como Turso (SQLite distribuído) e libSQL permitiram escalar SQLite sem abrir mão de simplicidade. O padrão "SQLite para MVP, PostgreSQL quando necessário" virou mainstream.

## Conexões

- [[projetos/sistema-chamados/_CONTEXTO]] — Node.js + SQLite em produção, exatamente este padrão
- [[Pesquisa - 2026-05-08 - Inteligencia Artificial]] — IA integrada ao toolchain de desenvolvimento

## Fontes

- https://survey.stackoverflow.co/2026
- https://stateofjs.com/2026
- https://bun.sh/blog
- https://github.blog/developer-skills
