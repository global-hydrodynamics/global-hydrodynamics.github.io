---
title: "Yamazaki Lab - Thesis"
layout: pagelay
sitemap: false
permalink: /student_thesis/
---

# Student Academic Thesis



( For a list of journal papers, please go to [publication page](../publications/) )


## List of Ph.D/Master/Bachelor thesis in Yamazaki Lab

{% for publi in site.data.student_thesis %}
<b> {{ publi.degree }} </b> {{ publi.year }},  <b>{{ publi.name }} {{ publi.native }} </b> <em><font color="red">{{ publi.award }}</font></em> <br>
{{ publi.title }}<br>
<em>( {{ publi.title2 }} )</em><br>
{% endfor %}

