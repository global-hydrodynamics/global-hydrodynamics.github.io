---
title: "GWD-LR"
layout: pagelay
permalink: /GWD-LR/
sitemap: false
---

# **GWD-LR: Global Width Database for Large Rivers**

GWD-LR (Global Width Database for Large Rivers) is a global river width dataset originally developed to support large-scale river hydrodynamic modeling.

⚠️ **Notice**  
The official data distribution of GWD-LR has been discontinued.  
The latest and improved global river width dataset is now distributed as part of **MERIT Hydro**.

👉 Please visit the MERIT Hydro page to access the current river width layer:

<a href="{{ site.baseurl }}/merit_hydro/" target="_blank" rel="noopener noreferrer">
MERIT Hydro product page
</a>

---

## Overview

River width is a fundamental parameter in river hydrodynamic simulations.  
GWD-LR was developed using an automated algorithm that derives river width from:

- Satellite-based water masks (SRTM Water Body Database)
- HydroSHEDS flow direction maps

The dataset provided:

- **Bank-to-bank river width**
- **Effective river width (excluding islands)**

The original resolution was 3 arc-seconds (~90 m), covering river channels between 60°S and 60°N.

![GWD-LR Example]({{ site.url }}{{ site.baseurl }}/assets/gwd-lr/gwdlr.jpg)

---

## Scientific Reference

If you refer to the GWD-LR concept or methodology, please cite:

Yamazaki, D., O'Loughlin, F., Trigg, M. A., Miller, Z. F., Pavelsky, T. M., & Bates, P. D. (2014)  
**Development of the Global Width Database for Large Rivers**  
Water Resources Research, 50, 3467–3480  
<https://doi.org/10.1002/2013WR014664>

---

## Contact

Dai YAMAZAKI  
Institute of Industrial Sciences  
The University of Tokyo  

yamadai [at] iis.u-tokyo.ac.jp
