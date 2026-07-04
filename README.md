# moncv-jekyll (GitHub Pages + Jekyll)

## Déploiement (GitHub Pages)
1) Push ce repo sur GitHub (public).
2) Settings → Pages → Deploy from a branch → `main` / `(root)`
3) (Optionnel) Custom domain : `moncv.domain.tld`
4) DNS : `moncv` CNAME → `username.github.io`

## Modifier ton CV
Édite principalement: `_data/profile.yml`

## Tester localement
```bash
bundle install
bundle exec jekyll serve
```

Puis ouvre `http://127.0.0.1:4000` ou `http://127.0.0.1:4000/print/`.

## Fichiers locaux
`Gemfile.lock` doit rester versionné pour garder un environnement Jekyll reproductible.
Les dossiers générés ou installés localement (`_site/`, `.bundle/`, `vendor/`, `.jekyll-cache/`) sont ignorés par Git.
