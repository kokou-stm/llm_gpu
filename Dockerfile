# Utilisez une image de base Python
FROM python:3.9-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de votre projet dans le conteneur
COPY ./requirements.txt /app/requirements.txt

# Installez les dépendances
RUN pip install -r requirements.txt

# Copiez l'application FastAPI
COPY ./app /app/app

# Exposez le port sur lequel Uvicorn va écouter
EXPOSE 8080

# Commande pour lancer l'application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
