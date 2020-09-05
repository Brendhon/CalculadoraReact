# Pegar o node
FROM node:alpine

# Diretorio dentro da maquina que deseja trabalhar
WORKDIR /src/app

# Copia os arquivos JSON para dentro da maquina e executa o comando para instalar as dependencias
COPY package*.json ./
RUN npm install

# Copia o resto dos arquivos
COPY . .

# Porta que o servidor precisa expor para a maquina acessar 
EXPOSE 3000

# Comando para colocar a aplicação no ar 
CMD ["npm","start"]