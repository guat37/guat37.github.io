# moncv-jekyll (GitHub Pages + Jekyll)

## Déploiement (GitHub Pages)
1) Push ce repo sur GitHub (public).
2) Settings → Pages → Deploy from a branch → `main` / `(root)`
3) (Optionnel) Custom domain : `moncv.domain.tld`
4) DNS : `moncv` CNAME → `username.github.io`

## Modifier ton CV
Édite principalement: `_data/profile.yml`.

Ce fichier pilote le contenu des versions Jekyll :
- identité et liens : `name`, `role`, `email`, `linkedin_url`, `pdf_url`, `avatar_url`
- expériences : `experience`
- compétences : `skills`
- projets : `projects`
- formations et certifications : `education`, `certifications`
- version premium : bloc `premium`

Les pages HTML (`index.html`, `concept.html`, `premium.html`, `print.md`) servent surtout à la mise en page. Pour une mise à jour de CV classique, évite de modifier leur HTML directement.

## Tester localement
```bash
bundle install
bundle exec jekyll serve
```

Puis ouvre :
- `http://127.0.0.1:4000` (version premium publiée)
- `http://127.0.0.1:4000/concept/`
- `http://127.0.0.1:4000/premium/` (copie de travail premium)
- `http://127.0.0.1:4000/print/`

## Fichiers locaux
`Gemfile.lock` doit rester versionné pour garder un environnement Jekyll reproductible.
Les dossiers générés ou installés localement (`_site/`, `.bundle/`, `vendor/`, `.jekyll-cache/`) sont ignorés par Git.
