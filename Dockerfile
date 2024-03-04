# Étape 1: Définir l'image de base
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers du projet dans le conteneur
COPY . .

# Exposer le port sur lequel votre application va tourner
EXPOSE 3001

# Commande pour démarrer votre application
CMD ["npm", "start"]
