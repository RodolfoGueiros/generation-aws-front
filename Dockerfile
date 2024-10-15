# Indicando a partir de qual imagem docker eu quero iniciar
FROM ubuntu/nginx:latest

# Informações do projeto (criador/contato/etc) / opcional
LABEL maintainer="Turma Generation AWS 02"

# Roda a versão do ubuntu
RUN apt update && apt upgrade -y

# Copia todos os arq da pasta pokedex pra dentro da pasta do nginx
COPY ./pokedex /var/www/html/

# Expor a porta de conexão para acesso externo
EXPOSE 80

# Comando para rodar o NGINX
CMD ["nginx", "-g", "daemon off;"]