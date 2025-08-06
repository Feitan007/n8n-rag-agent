FROM node:18

# Define diretório de trabalho
WORKDIR /app

# Instala dependências do sistema
RUN apt update && apt install -y git

# Clona o Evolution API
RUN git clone https://github.com/AtendAI/Evolution-API.git .

# Instala dependências do Node
RUN npm install

# Define variáveis de ambiente
ENV AUTHENTICATION_API_KEY=agente24h-key
ENV CONFIG_SESSION_PHONE_VERSION=2.3000.1023204200

# Expõe a porta usada pela API
EXPOSE 8080

# Comando de inicialização
CMD ["npm", "run", "start:prod"]
