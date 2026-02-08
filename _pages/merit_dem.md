---
title: "MERIT DEM"
layout: pagelay
sitemap: false
permalink: /MERIT_DEM/
---

# MERIT DEM  
**MERIT DEM: Multi-Error-Removed Improved-Terrain Digital Elevation Model**

MERIT DEM is a high-accuracy global digital elevation model developed by removing major error components from existing spaceborne DEMs. It represents terrain elevations at **3 arc-second resolution (~90 m at the equator)** and covers global land areas between **90°N and 60°S**, referenced to the **EGM96 geoid**.

**Key features**

- Global DEM at **3 arc-second (~90 m)** resolution
- Major error components removed (bias, stripe, speckle, vegetation)
- Improved representation of floodplains and flat regions
- Referenced to **WGS84 / EGM96**
- Designed for terrain-dependent geoscience applications

<div class="img_cap">
<img src="{{ site.url }}{{ site.baseurl }}/assets/merit_dem/Mek_Amz.png" width="80%">
</div>

Close-up comparison of MERIT DEM and the original SRTM DEM for the Mekong Delta and the Amazon floodplain.  
Improvements due to the removal of stripe noise, speckle noise, absolute bias, and tree height bias are clearly visible.

---

## About MERIT DEM

Spaceborne digital elevation models are a fundamental input for many geoscience applications, yet they often contain non-negligible height errors. MERIT DEM achieves substantial accuracy improvements by eliminating major error components from multiple existing DEM products, including **NASA SRTM**, **JAXA AW3D**, and **Viewfinder Panoramas**.

After error removal, the proportion of land areas mapped with **vertical accuracy better than 2 m** increased from **39% to 58%**. Significant improvements are observed in flat regions, major floodplains (e.g., Ganges, Nile, Niger, Mekong), swamp forests (e.g., Amazon, Congo, Vasyugan), and river network structures. 
The improved DEM provides a more reliable representation of terrain slope and elevation, enhancing a wide range of terrain-dependent geoscience applications.

- Description paper:  
  [Yamazaki et al. (2017), *Geophysical Research Letters*](https://doi.org/10.1002/2017GL072874)

---

## Download MERIT DEM

**How to obtain the data**

1. Register via the Google Form (license agreement)
2. Receive the password by email
3. Access the download page.

### Registration for Download

Please complete the  
[**Google Form for registration and license agreement**](https://goo.gl/forms/f3AlXftlXyODDxj32).  
The password for downloading the data will be sent to you by email after registration.

Alternatively, you may contact the developer directly to request access:

- **Dai Yamazaki** yamadai [at] iis.u-tokyo.ac.jp

### Download Datasets

The current version is **v1.0.3** (15 October 2018).

The password for downloading the data is issued after registration via the Google Form (see above). The data can be downloaded from: <br>
<a  href="https://www.dropbox.com/scl/fo/bjsd03zm1ari3x7zuf2ac/AH95qKkpN-VpoqAObk5RQGI?rlkey=pnobdlzoclhdkpsbpctnmer2n&st=be2ohbcq&dl=0" target="_blank" rel="noopener noreferrer">
**MERIT DEM download page (Dropbox)**
</a>

**Note:**  
*Due to temporary issues with the original web server, the data are currently distributed via Dropbox.*  
*When prompted for access, please enter **only the password** provided in the registration email; the username is not required.*

---

## Data description

### Data format

MERIT DEM represents elevation in **meters**, referenced to **WGS84** and the **EGM96 geoid**.  
The dataset is prepared as **5° × 5° tiles** (6000 × 6000 pixels).

The filename represents the center of the lower-left pixel of the data domain.  
For example, `n30w120_dem.tif` corresponds to the domain **30°N–35°N, 120°W–115°W**  
(more precisely, 29.99958333°N–34.99958333°N and 120.0004167°W–115.0004167°W).

The 5° tiles are bundled into **30° × 30° packages**, where the package name represents the lower-left corner of the package domain  
(e.g., `dem_tif_n30w120.tar` covers **30°N–60°N, 120°W–90°W**).

Data is distributed in GeoTiff format (float32)

**Note:**  
Hydrologically adjusted DEM is available as part of the [MERIT Hydro dataset]({{ site.url }}{{ site.baseurl }}/MERIT_Hydro/).

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/merit_dem/MERIT_tile.jpg" alt="MERIT DEM tiling scheme" width="80%"/>
</figure>

---

## Data policy

### License agreement

MERIT DEM is distributed under a dual-license scheme:

- **Creative Commons Attribution–NonCommercial 4.0 (CC BY-NC 4.0)**  
- **Open Data Commons Open Database License (ODbL 1.0)**

Users may choose the license appropriate for their intended use.

- CC BY-NC 4.0: non-commercial use with fewer restrictions  
- ODbL 1.0: commercial use permitted, provided derived datasets are released under the same ODbL license

**Example:**  
If a flood hazard map is created using MERIT DEM and provided as a commercial service, the resulting hazard map must be made publicly available under the ODbL license.

The license applies to **derived data**, but not to **produced works or artworks** (e.g., figures in journal papers).

By downloading and using the data, users agree to the selected license terms.  
Redistribution of the full dataset in its original form on other websites requires explicit written permission from the authors.

MERIT DEM is available at:  
{{ site.url }}{{ site.baseurl }}/MERIT_DEM/

---

### Data sharing policy

Citation of the paper below is sufficient when MERIT DEM is used as a data source.  
If substantial assistance is provided for additional processing or if the research outcome critically depends on MERIT DEM, co-authorship may be requested.

**Citation**

Yamazaki, D., Ikeshima, D., Tawatari, R., Yamaguchi, T., O'Loughlin, F., Neal, J. C., Sampson, C. C., Kanae, S., & Bates, P. D. (2017).  
*​A high accuracy map of global terrain elevations.*  
**Geophysical Research Letters**, 44, 5844–5853.  
https://doi.org/10.1002/2017GL072874

