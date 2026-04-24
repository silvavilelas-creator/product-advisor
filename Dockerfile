FROM directus/directus:10.8.3

USER root
RUN corepack enable && corepack prepare pnpm@latest --activate
USER node

ENV PORT=8055
ENV PUBLIC_URL=https://product-advisor.onrender.com

EXPOSE 8055

CMD ["node", "cli.js", "start"]
