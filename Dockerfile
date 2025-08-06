FROM node:18

WORKDIR /app

RUN apt update && apt install -y git

# Novo repositório público estável
RUN git clone https://github.com/agente24hrs/evolution-api.git .

RUN npm install

ENV AUTHENTICATION_API_KEY=agente24h-key
ENV CONFIG_SESSION_PHONE_VERSION=2.3000.1023204200

EXPOSE 8080

CMD ["npm", "run", "start:prod"]
