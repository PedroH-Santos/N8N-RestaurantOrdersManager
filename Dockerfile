# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define o diretório de trabalho
WORKDIR /home/node

# Copia o .env (opcional)
COPY .env .env

# Expõe a porta padrão
EXPOSE 5678

# Cria volume persistente
VOLUME ["/home/node/.n8n"]

# Inicia o n8n corretamente
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
 