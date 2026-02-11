---
title: "Yamazaki Lab - Thesis"
layout: pagelay
sitemap: false
permalink: /student_thesis/
---

# Student Academic Thesis

Our students have conducted thesis research at the scientific frontier of global hydrodynamics — from global river modeling and satellite data integration to climate-risk assessment. This page lists completed Ph.D., Master’s, and Bachelor’s theses supervised in Yamazaki Lab.

山崎研究室では、全球河川モデリング、衛星データ統合、洪水リスク評価など、全球陸域水動態の最前線テーマに基づく学位研究を推進しています。本ページでは、山崎研究室で指導した博士・修士・学士論文（学位論文）を掲載しています。

( For a list of journal papers, please go to [publication page](../publications/) )


## List of Ph.D/Master/Bachelor thesis in Yamazaki Lab

{% for publi in site.data.student_thesis %}
<b> {{ publi.degree }} </b> {{ publi.year }},  <b>{{ publi.name }} {{ publi.native }} </b> <em><font color="red">{{ publi.award }}</font></em> <br>
{{ publi.title }}<br>
<em>( {{ publi.title2 }} )</em><br>
{% endfor %}

