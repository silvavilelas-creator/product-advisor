FROM directus/directus:11.17.3

USER root
RUN corepack enable && corepack prepare pnpm@latest --activate
USER node

ENV PORT=8055
ENV PUBLIC_URL=https://product-advisor.onrender.com
ENV TELEMETRY=false

EXPOSE 8055

CMD ["node", "cli.js", "start"]
