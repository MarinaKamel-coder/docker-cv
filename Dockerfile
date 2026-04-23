# 1. Image de base légère (Alpine est idéal pour Node.js)
FROM node:20-alpine

# 2. Métadonnées 
LABEL maintainer="marinakamel909@gmail.com"
LABEL version="1.0"
LABEL description="Image pour le TP Docker - Site Statique"

# 3. Définir le répertoire de travail
WORKDIR /app

# 4. Optimisation : Copier d'abord les fichiers de dépendances
# Cela permet de mettre en cache l'étape 'npm install' si vous modifiez seulement le code source
COPY package*.json ./

# 5. Installation des dépendances (production uniquement pour plus de légèreté)
RUN npm install --only=production

# 6. Copier le reste du code source
COPY . .

# 7. Bonne pratique : Ne pas utiliser le compte root (sécurité)
USER node

# 8. Exposer le port (documentation interne)
EXPOSE 3000

# 9. Commande de démarrage
CMD ["node", "src/index.js"]





