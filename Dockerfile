# Use a imagem oficial do Node.js
FROM node:18

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY package*.json ./
RUN npm install
COPY . .

# Expõe a porta que o Render usará
EXPOSE 3000

# Comando para iniciar o app
CMD ["npm", "start"]
