FROM node:18

WORKDIR /app
RUN apt update && apt install -y git

RUN git clone https://github.com/AtendAI/Evolution-API .
RUN npm install
ENV AUTHENTICATION_API_KEY=agente24h-key
ENV CONFIG_SESSION_PHONE_VERSION=2.3000.1023204200

EXPOSE 8080
CMD ["npm", "run", "start:prod"]
