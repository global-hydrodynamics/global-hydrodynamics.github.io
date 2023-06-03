---
title: "Yamazaki Lab - Publications"
layout: pagelay
excerpt: "Yamazaki Lab -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

For a full publication list, see [below](#full-list) or go to [Google Scholar](https://scholar.google.com/citations?hl=en&user=2c_Vf3cAAAAJ&view_op=list_works).

The list of student thesis (PhD/MA/BA) is available [here](../student_thesis/).

List of awards to lab members are [here](../award/)

## Highlights

{% include pub_highlight.html %}

<p> &nbsp; </p>


## Full List
### == Original Papers (Yamazaki lab, reviewed) ==

{% for publi in site.data.publist %}
{% if publi.dlab == 1 %}
<b> {{ publi.ID }} {{ publi.title }} </b><br>
<em> {{ publi.authors }} </em><br /> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

{% endif %}
{% endfor %}

<p> &nbsp; </p>

### == Original Papers (collaboration, reviewed) ==

{% for publi in site.data.publist %}
{% if publi.dlab == 0 %}
<b> {{ publi.ID }} {{ publi.title }} </b><br>
<em> {{ publi.authors }} </em><br /> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

{% endif %}
{% endfor %}

<p> &nbsp; </p>

### == Conference Proceeding (reviewed)==

{% for publi in site.data.publist %}
{% if publi.dlab == 2 %}
<b> {{ publi.ID }} {{ publi.title }} </b><br>
<em> {{ publi.authors }} </em><br /> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

{% endif %}
{% endfor %}

<p> &nbsp; </p>

### == Book chapter, Article, etc ==

{% for publi in site.data.publist %}
{% if publi.dlab == 3 %}
<b> {{ publi.ID }} {{ publi.title }} </b><br>
<em> {{ publi.authors }} </em><br /> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a>

{% endif %}
{% endfor %}

<p> &nbsp; </p>

### == Publications in Japanese Journal ==
#### -- Research mainly lead by Yamazaki Lab

{% for publi in site.data.publist-J %}
{% if publi.dlab == 1 %}

{% if publi.e-title == empty %} <b> {{ publi.ID }} {{ publi.title }} </b><br> {% else %} <b> {{ publi.ID }} {{ publi.title }} </b><br>{{ publi.e-title }}<br> {% endif %}
<em> {{ publi.authors }} </em><br>
{% if publi.link.url == empty %} <a>{{ publi.link.display }} </a>{% else %} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> {% endif %}

{% endif %}
{% endfor %}

<p> &nbsp; </p>

#### -- Collaboration work

{% for publi in site.data.publist-J %}
{% if publi.dlab == 0 %}

{% if publi.e-title == empty %} <b> {{ publi.ID }} {{ publi.title }} </b><br> {% else %} <b> {{ publi.ID }} {{ publi.title }} </b><br>{{ publi.e-title }}<br> {% endif %}
<em> {{ publi.authors }} </em><br>
{% if publi.link.url == empty %} <a>{{ publi.link.display }} </a>{% else %} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> {% endif %}

{% endif %}
{% endfor %}

<p> &nbsp; </p>

#### -- Book chapter, Non-reviewed Article, etc

{% for publi in site.data.publist-J %}
{% if publi.dlab == 3 %}

{% if publi.e-title == empty %} <b> {{ publi.ID }} {{ publi.title }} </b><br> {% else %} <b> {{ publi.ID }} {{ publi.title }} </b><br>{{ publi.e-title }}<br> {% endif %}
<em> {{ publi.authors }} </em><br>
{% if publi.link.url == empty %} <a>{{ publi.link.display }} </a>{% else %} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> {% endif %}

{% endif %}
{% endfor %}

<p> &nbsp; </p>
