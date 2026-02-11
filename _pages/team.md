---
title: "Yamazaki Lab - Team"
layout: pagelay
sitemap: false
permalink: /team/
---

# Group Members

Our lab advances global hydrology and terrestrial water dynamics by integrating physical modeling, remote sensing, and data-driven approaches.  
We also place strong emphasis on mentoring students and early-career researchers, and on building an international, collaborative research environment.

**Join Us: We are always looking for motivated Postdocs, PhD, and Master/Bachelor students.**
Please see the <a href="{{ site.url }}{{ site.baseurl }}/joinus"><strong>Join Us</strong></a> page for openings and how to apply.

## Staff / Students

All research staff members belong to the
[Institute of Industrial Science (IIS), The University of Tokyo](https://www.iis.u-tokyo.ac.jp/),
while students belong to the
[Department of Civil Engineering](http://www.civil.t.u-tokyo.ac.jp/en/)
and/or the
[Graduate Program on Environmental Sciences (GPES)](https://gpes.c.u-tokyo.ac.jp/index.html).

**Contact:** To email a lab member, please add “.u-tokyo.ac.jp” after the address shown as “mail” below  
For general inquiries, please use the contact information on the [Join Us]({{ site.url }}{{ site.baseurl }}/joinus) page.

{% assign number_printed = 0 %}

{% for member in site.data.team_member %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left; margin-right: 12px;" />
  <h4 style="margin-top: 0;">{{ member.name }} : {{ member.native }}</h4>
  <i>{{ member.info }} ({{ member.duration }})<br>mail: {{ member.email }}</i>

  <ul style="overflow: hidden; margin-top: 8px;">

  {% if member.number_desc == "1" %}
  <li>{{ member.description1 }}</li>
  {% endif %}

  {% if member.number_desc == "2" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  {% endif %}

  {% if member.number_desc == "3" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  {% endif %}

  {% if member.number_desc == "4" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  <li>{{ member.description4 }}</li>
  {% endif %}

  {% if member.number_desc == "5" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  <li>{{ member.description4 }}</li>
  <li>{{ member.description5 }}</li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

---

## Collaborators / Alumni

We collaborate with researchers across hydrology, Earth science, climate science, and geospatial communities.  
This section lists key collaborators and alumni who have contributed to our research activities.

{% assign number_printed = 0 %}
{% for member in site.data.team_collaborator %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4 style="margin-top: 0;">{{ member.name }} : {{ member.native }}</h4>
  <i>({{ member.duration }}) {{ member.info }}</i>
  <ul style="overflow: hidden; margin-top: 8px;">

  {% if member.number_desc == "1" %}
  <li>{{ member.description1 }}</li>
  {% endif %}

  {% if member.number_desc == "2" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  {% endif %}

  {% if member.number_desc == "3" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  {% endif %}

  {% if member.number_desc == "4" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  <li>{{ member.description4 }}</li>
  {% endif %}

  {% if member.number_desc == "5" %}
  <li>{{ member.description1 }}</li>
  <li>{{ member.description2 }}</li>
  <li>{{ member.description3 }}</li>
  <li>{{ member.description4 }}</li>
  <li>{{ member.description5 }}</li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

---

## Former Students

Many of our former students have gone on to careers in academia, research institutes, industry, and public organizations, continuing to contribute to hydrology and Earth science communities.

<div class="row">
{% for member in site.data.former_student %}
  <div class="col-sm-4 clearfix" style="margin-bottom: 10px;">
    {{ member.name }} : {{ member.native }}<br/>
    {{ member.info }}, {{ member.duration }}
  </div>
{% endfor %}
</div>

Please also visit the [list of student theses](../student_thesis/) (PhD/MA/BA).

---

## Former Visitors

We welcome visiting researchers, interns, and sabbatical scholars, and we value the exchange of ideas across countries and disciplines.

<div class="row">
{% for member in site.data.former_visitors %}
  <div class="col-sm-4 clearfix" style="margin-bottom: 10px;">
    {{ member.name }} : {{ member.native }}<br/>
    {{ member.info }}, {{ member.duration }}
  </div>
{% endfor %}
</div>

---

## Administrative Support

Minako Yokoyama (m-yoko [at] iis.u-tokyo.ac.jp) and Yuki Tsukada (tsuka [at] rainbow.iis.u-tokyo.ac.jp) support our lab (and other IIS groups) with administration.
