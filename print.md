---
layout: print
permalink: /print/
---

<div class="print-page">

  <aside class="sidebar">

    <div class="avatar-mini">
      <img src="{{ '/assets/img/avatar.png' | relative_url }}" alt="Photo">
    </div>

    <h1 class="name">{{ site.data.profile.name }}</h1>
    <div class="role">{{ site.data.profile.role }}</div>
    <div class="tagline">{{ site.data.profile.tagline }}</div>

    <div class="side-section">
      <div class="side-title">Contact</div>
      <ul class="side-list">
        <li>
          <span style="display:inline-flex;align-items:center;gap:6px;">
            <svg width="12" height="12" viewBox="0 0 24 24" aria-hidden="true">
              <path fill="currentColor" d="M20 4H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2Zm0 4-8 5L4 8V6l8 5 8-5v2Z"/>
            </svg>
            {{ site.data.profile.email }}
          </span>
        </li>
        <li>{{ site.data.profile.website_label }}</li>
      </ul>
    </div>

    <div class="side-section">
      <div class="side-title">Compétences</div>
      <ul class="side-list">
        {% for s in site.data.profile.skills.tech limit:6 %}
          <li>{{ s.name }}</li>
        {% endfor %}
      </ul>
    </div>

    <div class="side-section">
      <div class="side-title">Outils</div>
      <ul class="side-list">
        {% for t in site.data.profile.skills.tools limit:7 %}
          <li>{{ t }}</li>
        {% endfor %}
      </ul>
    </div>

    {% if site.data.profile.certifications and site.data.profile.certifications.size > 0 %}
    <div class="side-section">
      <div class="side-title">Certifications</div>
      <ul class="side-list">
        {% for c in site.data.profile.certifications limit:3 %}
          <li>{{ c.name }}</li>
        {% endfor %}
      </ul>
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
              {% for b in job.bullets limit:3 %}
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
      {% for p in site.data.profile.projects limit:2 %}
        <div class="item">
          <p class="item-title">{{ p.name }}{% if p.meta and p.meta != "" %} — {{ p.meta }}{% endif %}</p>
          <ul class="bullets">
            <li>{{ p.description }}</li>
          </ul>
        </div>
      {% endfor %}
      <div class="hr"></div>
    </div>

    <div class="block">
      <div class="h2">Formation</div>
      {% for e in site.data.profile.education limit:2 %}
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
