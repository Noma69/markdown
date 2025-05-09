
# TP – Markdown, Versioning, Docker & CI/CD

## 1. Rédaction d’un document en Markdown

### Objectif atteint :
- Création d’un fichier `documentation.md`
- Utilisation de balises Markdown :
  - Titres, sous-titres
  - Mise en forme (gras, italique, souligné)
  - Insertion d’images et de schémas
  - Blocs de code (bash, HTML…)
- Utilisation de Pandoc pour conversion en HTML :
  ```bash
  pandoc docs/documentation.md -o docs/index.html
  ```

---

## 2. Comparaison de 3 outils de conversion Markdown → HTML/PDF

### ✔️ Objectif en cours :
- Étude prévue des outils suivants :
  - **Pandoc** : très complet, compatible PDF/HTML, puissant
  - **MkDocs** : spécialisé documentation, parfait pour site statique
  - **Markdown-it** ou **Grip** : simples, orientés prévisualisation

### Critères identifiés :
- Facilité d’installation
- Formats supportés (HTML, PDF)
- Personnalisation (thèmes, extensions)
- Intégration avec Git et CI/CD
- Performance et compatibilité

---

## 3. Création d’un dépôt Git

### ✔️ Objectif atteint :
- Création d’un dépôt Git local initialisé
- Lien vers dépôt distant sur **GitLab**
- Fichiers versionnés :
  - `docs/` : contenu Markdown
  - `docker/` : Dockerfile
  - `.gitignore`, `.gitlab-ci.yml`, `README.md`

---

## 4. Création d’une image Docker pour générer la doc

### ✔️ Objectif atteint :
- Création d’un `Dockerfile` basé sur l’image Pandoc :
  - Génère un fichier HTML depuis Markdown
  - Sert via nginx
- Commandes utilisées :
  ```bash
  docker build -t md-doc -f docker/Dockerfile .
  docker run -d -p 8080:80 md-doc
  ```

---

## 5. Mise à jour via Git et consultation HTML via site web

### ✔️ Objectif en cours :
- Mise en place d’un pipeline `.gitlab-ci.yml`
  - Génère la doc HTML automatiquement avec Pandoc
  - Préparation d’une étape de déploiement (GitLab Pages ou Docker distant)
- Preview possible en local avec Docker (`localhost:8080`)

---

## 6. Plugins et environnement de développement

### ✔️ Objectif atteint :
- Éditeur utilisé : **VS Code**
- Environnement :
  - **Windows**
  - **Pandoc**, **MkDocs**, **Docker**, **GitLab**
- Extensions installées :
  - `Markdown All in One`

---

## 📌 Prochaines étapes prévues :

- Finaliser la comparaison entre Pandoc, MkDocs et un 3e outil
- Rédiger la conclusion dans le Markdown principal
- Mettre en place un déploiement automatique (GitLab Pages ou Netlify)
