---
layout: print
permalink: /print/
---

<div class="print-page">

  <aside class="sidebar">
    <h1 class="name">{{ site.data.profile.name }}</h1>
    <div class="role">{{ site.data.profile.role }}</div>
    <div class="tagline">{{ site.data.profile.tagline }}</div>

    <div class="side-section">
      <div class="side-title">Contact</div>
      <ul class="side-list">
        <li>{{ site.data.profile.email }}</li>
        <li>{{ site.data.profile.website_label }}</li>
        <li>{{ site.data.profile.linkedin_label }}</li>
      </ul>
    </div>

    <div class="side-section">
      <div class="side-title">Compétences</div>
      <ul class="side-list">
        {% for s in site.data.profile.skills.tech %}
          <li>{{ s.name }}</li>
        {% endfor %}
      </ul>
    </div>

    <div class="side-section">
      <div class="side-title">Outils</div>
      <ul class="side-list">
        {% for t in site.data.profile.skills.tools %}
          <li>{{ t }}</li>
        {% endfor %}
      </ul>
    </div>

    {% if site.data.profile.certifications and site.data.profile.certifications.size > 0 %}
    <div class="side-section">
      <div class="side-title">Certifications</div>
      <div class="badges">
        {% for c in site.data.profile.certifications %}
          <div class="badge">{{ c.name }}</div>
        {% endfor %}
      </div>
    </div>
    {% endif %}

  </aside>

  <section class="content">
    <div class="block">
      <div class="h2">Profil</div>
      <p class="p">
        Directeur de projet informatique avec une forte culture systèmes, réseaux et sécurité. J’interviens sur le cadrage,
        la simplification et l’industrialisation de projets techniques, avec un objectif constant de robustesse, de conformité
        réglementaire et de qualité de service. Habitué aux environnements complexes et multi-sites du secteur santé,
        j’accompagne les directions métiers dans l’expression des besoins et pilote les équipes techniques de la conception
        à la mise en production.
      </p>
      <div class="hr"></div>
    </div>

    <div class="block">
      <div class="h2">Expérience</div>
      {% for job in site.data.profile.experience %}
        <div class="item">
          <p class="item-title">{{ job.title }}</p>
          <p class="item-meta">{{ job.period }}{% if job.place and job.place != "" %} • {{ job.place }}{% endif %}</p>
          {% if job.bullets %}
            <ul class="bullets">
              {% for b in job.bullets %}
                <li>{{ b }}</li>
              {% endfor %}
            </ul>
          {% endif %}
        </div>
      {% endfor %}
      <div class="hr"></div>
    </div>

    <div class="block">
      <div class="h2">Projets</div>
      {% for p in site.data.profile.projects %}
        <div class="item">
          <p class="item-title">{{ p.name }}{% if p.meta and p.meta != "" %} — {{ p.meta }}{% endif %}</p>
          <ul class="bullets">
            <li>{{ p.description }}</li>
          </ul>
          {% if p.tags %}
            <div class="tags">
              {% for t in p.tags %}
                <span class="tag">{{ t }}</span>
              {% endfor %}
            </div>
          {% endif %}
        </div>
      {% endfor %}
      <div class="hr"></div>
    </div>

    <div class="block">
      <div class="h2">Formation</div>
      {% for e in site.data.profile.education %}
        <div class="item">
          <p class="item-title">{{ e.title }}</p>
          <p class="item-meta">
            {% if e.period and e.period != "" %}{{ e.period }}{% endif %}
            {% if e.place and e.place != "" %} • {{ e.place }}{% endif %}
          </p>
          {% if e.details and e.details != "" %}
            <p class="p">{{ e.details }}</p>
          {% endif %}
        </div>
      {% endfor %}
    </div>
  </section>

</div>
