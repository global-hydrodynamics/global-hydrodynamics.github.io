---
title: "Yamazaki Lab - Team"
layout: pagelay
excerpt: "Yamazaki Lab: Team members"
sitemap: false
permalink: /team/
---

# Group Members

 **We are  looking for new Postdoc, PhD students, and Master/Bachelor students to join the team** [(see Join Us page)]({{ site.url }}{{ site.baseurl }}/joinus) **!**

## Staff / Students

All research staff members belong to  [Institute of Industrial Science](https://www.iis.u-tokyo.ac.jp/), while students belong to the [Department of Civil Engineering](http://www.civil.t.u-tokyo.ac.jp/en/) or [Grad Program for Environmental Sciences: GPES](https://gpes.c.u-tokyo.ac.jp/index.html).

{% assign number_printed = 0 %}

{% for member in site.data.team_member %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }} : {{ member.native }} </h4>
  <i>{{ member.info }} ( {{ member.duration }} )<br>mail: {{ member.email }} </i>

<ul style="overflow: hidden">

  {% if member.number_desc == "1" %}
  <li> {{ member.description1 }} </li>
  {% endif %}

  {% if member.number_desc == "2" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  {% endif %}

  {% if member.number_desc == "3" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  {% endif %}

  {% if member.number_desc == "4" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  <li> {{ member.description4 }} </li>
  {% endif %}

  {% if member.number_desc == "5" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  <li> {{ member.description4 }} </li>
  <li> {{ member.description5 }} </li>
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


## Collaborators / Alumni

{% assign number_printed = 0 %}
{% for member in site.data.team_collaborator %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }} : {{ member.native }}</h4>
  <i>( {{ member.duration }} ) {{ member.info }}</i>
  <ul style="overflow: hidden">

  {% if member.number_desc == "1" %}
  <li> {{ member.description1 }} </li>
  {% endif %}

  {% if member.number_desc == "2" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  {% endif %}

  {% if member.number_desc == "3" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  {% endif %}

  {% if member.number_desc == "4" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  <li> {{ member.description4 }} </li>
  {% endif %}

  {% if member.number_desc == "5" %}
  <li> {{ member.description1 }} </li>
  <li> {{ member.description2 }} </li>
  <li> {{ member.description3 }} </li>
  <li> {{ member.description4 }} </li>
  <li> {{ member.description5 }} </li>
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

## Former Students
<div class="row">

{% for member in site.data.former_student %}
<div class="col-sm-4 clearfix">
{{ member.name }} : {{ member.native }} <br/> {{ member.info }}, {{ member.duration }}
</div>
{% endfor %}

</div>

Please also visit the [list of student thesis](../student_thesis/) (PhD/MA/BA thesis)

## Administrative Support
Minako Yokoyama (m-yoko [at] iis.u-tokyo.ac.jp) and Yuki Tsukada (tsuka [at] rainbow.iis.u-tokyo.ac.jp) are helping us (and other groups) with administration.
