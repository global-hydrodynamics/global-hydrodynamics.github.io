---
title: "Yamazaki Lab - Award"
layout: pagelay
sitemap: false
permalink: /award/
---

# List of Awards for Yamazaki lab members

Our lab members — including undergraduate students, graduate students, and postdoctoral researchers — have consistently received awards from academic societies, universities, and international conferences.

These recognitions reflect not only individual excellence, but also our commitment to fostering independent, globally competitive researchers.


<img src="{{ site.url }}{{ site.baseurl }}/images/picture/awards.jpg" width="80%" />

{% for publi in site.data.award %}
{{ publi.YearMon }} <br>
{{ publi.Awardee }} <br>
<b> {{ publi.AwardName }} </b> [ {{ publi.Organization }} ] <br>
<b> {{ publi.Achievement }}</b><br>
<em><font color="red">{{ publi.URL }}</font></em> <br>
{% endfor %}

