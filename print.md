---
layout: print
permalink: /print/
---

# {{ site.data.profile.name }}
**{{ site.data.profile.role }}** — {{ site.data.profile.tagline }}

{{ site.data.profile.email }} • {{ site.data.profile.linkedin_url }} • {{ site.data.profile.website_url }}

---

## Profil
Directeur de projet informatique avec une forte culture systèmes, réseaux et sécurité. J’interviens sur le cadrage, la simplification et l’industrialisation de projets techniques, avec un objectif constant de robustesse, de conformité réglementaire et de qualité de service. Habitué aux environnements complexes et multi-sites du secteur santé, j’accompagne les directions métiers dans l’expression des besoins et pilote les équipes techniques de la conception à la mise en production.

## Expérience
{% for job in site.data.profile.experience %}
**{{ job.title }}** — {{ job.period }}{% if job.place and job.place != "" %} • {{ job.place }}{% endif %}
{% if job.bullets %}
{% for b in job.bullets %}
- {{ b }}
{% endfor %}
{% endif %}

{% endfor %}

## Compétences
**Tech :** {% for s in site.data.profile.skills.tech %}{{ s.name }}{% unless forloop.last %} • {% endunless %}{% endfor %}

**Outils :** {% for t in site.data.profile.skills.tools %}{{ t }}{% unless forloop.last %} • {% endunless %}{% endfor %}

**Soft skills :** {% for s in site.data.profile.skills.soft %}{{ s }}{% unless forloop.last %} • {% endunless %}{% endfor %}

## Projets
{% for p in site.data.profile.projects %}
**{{ p.name }}**{% if p.meta and p.meta != "" %} — {{ p.meta }}{% endif %}
- {{ p.description }}
{% endfor %}

## Formation
{% for e in site.data.profile.education %}
**{{ e.title }}**{% if e.period and e.period != "" %} — {{ e.period }}{% endif %}{% if e.place and e.place != "" %} • {{ e.place }}{% endif %}
{% if e.details and e.details != "" %}{{ e.details }}{% endif %}

{% endfor %}
