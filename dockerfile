FROM node:alpine  

## Instala o yarn para controlar o projeto
#RUN npm install yarn

## Diretorio de trabalho no docker
RUN mkdir -p /opt/app
WORKDIR /opt/app

## copia o arquivo package.json e yarn.lock para o container
COPY ./app/package.json ./
COPY ./app/package-lock.json ./
#COPY ./app/yarn.lock ./

## instala todos os pacotes necessarios no container
RUN yarn
#RUN npm install

## copia todos os demais arquivos para dentro do container
COPY ./app ./

## Libera a porta 3000 do container
EXPOSE 3000

## executa o projeto inicial
CMD ["yarn", "start"]
#CMD ["npm","start"]
