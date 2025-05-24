# Utilisez une image de base Ubuntu
FROM ubuntu:latest

# Installez Pandoc
RUN apt-get update && apt-get install -y pandoc

# Définissez le répertoire de travail
WORKDIR /app

# Commande par défaut
CMD ["pandoc", "--help"]
