```markdown
# 📝 Mise en place d’un pipeline Markdown → HTML avec Pandoc & GitHub Pages

---

## 1. Objectif du projet

L’objectif de ce projet est de créer un système local, fiable et portable permettant de :

- Écrire du contenu technique ou documentaire en Markdown (.md)
- Générer un rendu HTML soigné, personnalisable via CSS
- Publier automatiquement sur GitHub Pages
- (Optionnellement) Générer un fichier PDF de qualité avec LaTeX

---

## 2. Environnement de travail

### 2.1 Logiciels et outils utilisés

| Logiciel           | Usage principal                                 |
|--------------------|--------------------------------------------------|
| Pandoc             | Conversion Markdown → HTML (et PDF)             |
| Git                | Gestion de version et publication sur GitHub    |
| GitHub Pages       | Hébergement du site HTML                         |
| Visual Studio Code | Édition des fichiers Markdown                   |
| MiKTeX / XeLaTeX   | Génération PDF avec Pandoc (optionnel)           |

---

## 3. Arborescence du projet

Voici l’arborescence finale utilisée pour la conversion et la publication automatique :

├── docs/
│   ├── index.md           ← Fichier source Markdown
│   └── index.html         ← Généré par Pandoc
├── styles.css             ← Feuille de style personnalisée
├── metadata.yaml          ← (Optionnel) Métadonnées pour Pandoc
├── README.md              ← Description du projet
````
---

## 4. Commandes utilisées

### 4.1 Génération HTML avec Pandoc

Commande utilisée en local :

```bash
pandoc docs/index.md -o docs/index.html --standalone --metadata title="Rapport Projet Markdown" --css=styles.css --embed-resources
````

📌 Cette commande :

* Utilise le fichier source `index.md`
* Génére un fichier HTML autonome (`--standalone`)
* Applique un thème CSS personnalisé
* Intègre toutes les ressources (images, CSS, etc.)

### 4.2 Commandes Git

À chaque mise à jour :

```bash
cd C:\Users\nomat\markdown
git add .
git commit -m "Mise à jour de la documentation HTML"
git push
```

---

## 5. Publication via GitHub Pages

Sur l’interface GitHub :

1. Aller dans Settings → Pages
2. Choisir la branche `main`
3. Dossier : `/docs`
4. L’URL générée est :

🔗 [https://noma69.github.io/markdown/](https://noma69.github.io/markdown/)

---

## 6. Exemple de code

Voici un exemple de code bash documenté :

```bash
#!/bin/bash
# Génère un fichier HTML à partir du Markdown
pandoc docs/index.md -o docs/index.html --standalone --css=styles.css --embed-resources
git add .
git commit -m "Update HTML"
git push
```

---

## 7. Exemple d’image

Voici un exemple d’insertion d’image dans le fichier Markdown :

![Dépôt Github](C:\Users\nomat\markdown\docs\images\Capture d'écran 2025-05-24 155007.png)

---

## 8. Schéma du flux

Voici un schéma logique du pipeline :

```
[Markdown] → [Pandoc + CSS] → [index.html] → [GitHub Pages] → 🔗 Site Web
```

---

## 9. Comparaison de 3 outils de conversion Markdown

| Outil       | HTML ✔️ | PDF ✔️ | Custom CSS      | Facilité d'installation       | Extensibilité  | Note globale |
| ----------- | ------- | ------ | --------------- | ----------------------------- | -------------- | ------------ |
| Pandoc      | ✅       | ✅      | ✅               | ⚠️ (besoin de LaTeX pour PDF) | Très haute     | ⭐⭐⭐⭐⭐        |
| Typora      | ✅       | ✅      | ⚠️ (CSS limité) | ✅ (application graphique)     | Moyenne        | ⭐⭐⭐          |
| Markdown-it | ✅       | ❌      | ✅               | ✅ (JS/npm)                    | Haute (plugin) | ⭐⭐⭐⭐         |

### 9.1 Objectifs définis

* Génération HTML lisible et personnalisable
* Export PDF de haute qualité (académique)
* Automatisation dans un pipeline de publication
* Contrôle total sur le rendu (ex : CSS, en-têtes, métadonnées)

➡️ Conclusion : 🥇 Pandoc est l’outil le plus adapté à ces exigences.

---

## 10. Améliorations apportées au style CSS

J’ai repris un fichier CSS personnalisé basé sur :

* Polices modernes (Montserrat + Merriweather)
* Hiérarchie visuelle claire (titres, paragraphes, citations)
* Bloc de code sombre lisible
* Intégration cohérente avec le HTML Pandoc

📁 Fichier utilisé : `styles.css`

---

## 11. Perspectives

* Intégration CI/CD avec GitHub Actions
* Ajout d’un bouton "Télécharger en PDF"
* Responsive design pour mobiles (via media queries)
* Mode sombre (dark mode via @media prefers-color-scheme)

---

## 12. Conclusion

Ce projet m’a permis de :

* Structurer un flux de documentation complet en Markdown
* Automatiser la conversion HTML localement
* Publier une documentation propre sur GitHub Pages
* Comparer les outils existants pour une meilleure prise de décision