# Utilise une image légère de Python 3.9
FROM python:3.9-slim

# Définit le répertoire de travail
WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .


# Expose le port 8080 pour Uvicorn
EXPOSE 8080

# Commande pour lancer l'application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
