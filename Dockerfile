FROM node:18

WORKDIR /app

# Instala o projeto via NPM (versão oficial evoluída no NPM registry)
RUN npm install @evoluzioneai/evolution-api@latest

ENV AUTHENTICATION_API_KEY=agente24h-key
ENV CONFIG_SESSION_PHONE_VERSION=2.3000.1023204200

EXPOSE 8080

CMD ["npx", "evolution-api", "--http-port", "8080", "--apikey", "agente24h-key"]
