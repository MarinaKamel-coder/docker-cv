# TP2 — Dockerisation d'un CV Interactif (Node.js)

## 👤 Présentation
Ce projet est une application web dynamique présentant le profil professionnel de **Marina Kamel**. Il s'agit d'une application "Data-Driven" où les informations du CV sont stockées dans un fichier JSON et servies via une API Node.js/Express.

L'objectif de ce TP est de démontrer la maîtrise de la conteneurisation avec Docker, l'optimisation d'image et la publication sur Docker Hub.

## 🚀 Fonctionnalités
- **Backend Node.js** : Serveur Express gérant une route API (`/api/cv`) pour servir les données.
- **Frontend Dynamique** : Interface moderne en **Dark Mode** utilisant l'API Fetch pour afficher les données.
- **Architecture Propre** : Séparation claire entre les données (JSON), la logique (JS) et le style (CSS).
- **Dockerisé** : Image légère basée sur Alpine Linux.

---

## 🛠️ Installation et Exécution

### 1. Prérequis
Vous devez avoir **Docker** installé sur votre machine.

### 2. Récupérer l'image depuis Docker Hub
Si vous ne souhaitez pas cloner le dépôt, vous pouvez directement récupérer l'image officielle :
```bash
docker pull marinakamel/mon-cv-docker:v7
```

### 3. Construire l'image localement
À la racine du projet, lancez :
```bash
docker build -t marinakamel/mon-cv-docker:v7 .
```

### 4. Lancer le conteneur
```bash
docker run -p 3000:3000 marinakamel/mon-cv-docker:v7
```

### 5. Accéder à l'application
Ouvrez votre navigateur à l'adresse suivante :
``` http://localhost:3000
```

## 🏗️ Optimisations Docker
Pour ce TP, le **Dockerfile** a été optimisé selon les meilleures pratiques :

**Image de base :** **node:20-alpine** pour minimiser la taille (environ 47 MB compressé).

**Gestion des couches (Layers) :** Les fichiers **package.json** sont copiés et les dépendances installées avant le reste du code pour maximiser l'utilisation du cache Docker.

**Sécurité :** Utilisation de l'utilisateur non-root **node** pour l'exécution.

**Nettoyage :** Utilisation d'un fichier **.dockerignore** pour exclure les dossiers node_modules et les fichiers de configuration locaux.

## 🔗 Liens de remise
- **Docker Hub** : [marinakamel/mon-cv-docker:v7](https://hub.docker.com/repository/docker/marinakamel/mon-cv-docker)
- **GitHub** : [marinakamel/mon-cv-docker](https://github.com/marinakamel/mon-cv-docker)