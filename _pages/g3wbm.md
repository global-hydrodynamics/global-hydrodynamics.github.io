---
title: "Yamazaki Lab - G3WBM / G1WBM"
layout: pagelay
permalink: /G3WBM/
sitemap: false
---

# G3WBM / G1WBM

### **Global 3-second / 1-second Water Body Map**

The Global 3 arc-second Water Body Map (G3WBM) and the 1 arc-second version (G1WBM) are global surface water datasets developed using multi-temporal Landsat imagery from the Global Land Survey (GLS) archive.

The datasets distinguish **permanent water bodies** from **temporally inundated areas** by analyzing water occurrence frequency across overlapping Landsat scenes.

---

## Dataset Overview

- Resolution:
  - **3 arc-second (~90 m)** – G3WBM
  - **1 arc-second (~30 m)** – G1WBM
- Derived from: Multi-temporal Landsat GLS archive (33,890 scenes across 4 epochs)
- Seamless global coverage without cloud/snow gaps
- Clear separation of river channels and floodplains based on water frequency analysis

![G3WBM Example]({{ site.url }}{{ site.baseurl }}/assets/g3wbm/G3WBM_zoom.png)

*Example: Amazon floodplain and Ob River*

---

## Data Description

### File Format
- **GeoTIFF**
- 5° × 5° tiles  
- Filename represents the **center of the lower-left pixel**  
  Example: `n30w120_wat.tif` covers N30–N35, W120–W115  
- Tiles are distributed in 30° × 30° compressed packages (.tar)

![Tile Structure]({{ site.url }}{{ site.baseurl }}/assets/g3wbm/MERIT_tile.jpg)

### Classification Scheme

| Value | Description |
|-------|------------|
| 0 | Land |
| 1 | Land (No Landsat observation) |
| 10 | Snow |
| 20 | Wet soil / Wet vegetation / Lava |
| 30 | Salt marsh |
| 40 | Temporal flooded area |
| 50 | Permanent water |
| 51 | Permanent water (added by SWBD) |
| 99 | Ocean |

---

### Reference Paper

Please cite the following paper when using G3WBM/G1WBM:

Yamazaki, D., Trigg, M., & Ikeshima, D. (2015)  
**Development of a global ~90 m water body map using multi-temporal Landsat images**  
Remote Sensing of Environment  
<https://dx.doi.org/10.1016/j.rse.2015.10.014>

Citation of the paper is sufficient for general dataset use.  
If substantial additional support or processing is provided, acknowledgement or co-authorship may be requested.

---

## Download G3WBM/G1WBM

**How to obtain the data**

1. Register via the Google Form (license agreement)
2. Receive the password by email
3. Access the download page.

### Registration (Required)

Please register to obtain access:

<a href="https://goo.gl/forms/MPun6Sr80b3Re2Ls1" target="_blank" rel="noopener noreferrer">Google Form Registration</a>

Alternatively, contact:  
**yamadai [at] iis.u-tokyo.ac.jp**

### Download (Password Required)

All datasets are distributed via Dropbox (password protected):

<a href="https://www.dropbox.com/scl/fo/hb4lwyzio50rnl4n7ok09/AK08dGjE6YZ6KEKPwwe1wYo?rlkey=74vd99hgcql2uzspqx6m3scy7&st=zyz1qtfy&dl=0" target="_blank" rel="noopener noreferrer">
G3WBM/G1WBM Dropbox Download Folder
</a>

Available products:
- G3WBM ver 1.3 (GeoTIFF tiles, packaged by 30° × 30°)
- G1WBM ver 1.0 (GeoTIFF tiles, packaged by 30° × 30°)

---

## License

G3WBM/G1WBM is licensed under:

**Creative Commons Attribution 4.0 International (CC-BY 4.0)**  
<a href="http://creativecommons.org/licenses/by/4.0/" target="_blank" rel="noopener noreferrer">License details</a>

By downloading and using the data, users agree to the terms of this license.

We kindly ask users not to redistribute the complete dataset in its original format on other websites without written permission from the authors.

---

## Version Information

### G3WBM
- Current Version: **ver 1.3** (20 March 2018)  
  - ver1.1: Improved river–ocean boundary  
  - ver1.2: Bug fix around river mouths  
  - ver1.3: Grid coordination fix; license changed to CC-BY 4.0  

### G1WBM
- Current Version: **ver 1.0** (20 March 2018)  
  - First release of 1 arc-second version  

---

## Contact

Institute of Industrial Sciences  
The University of Tokyo  

yamadai [at] iis.u-tokyo.ac.jp
