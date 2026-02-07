---
title: "MERIT Hydro"
layout: pagelay
sitemap: false
permalink: /MERIT_Hydro/
---

# MERIT Hydro  
**MERIT Hydro: A high-resolution global hydrography map based on MERIT DEM**

MERIT Hydro is a global-scale hydrography dataset developed based on the **MERIT DEM**.
It provides globally consistent hydrography layers such as flow direction, river width,
upstream area, upstream gradient, and height above nearest drainage (HAND), designed
for large-scale hydrodynamic and flood simulations.

**Key features**

- Global hydrography dataset at **3 arc-second (~90 m)** resolution
- Consistent river networks derived from **MERIT DEM** and many water mask products.
- Designed for **global to regional hydrodynamic and flood simulations**


<div class="img_cap">
<img src="{{ site.url }}{{ site.baseurl }}/assets/merit_hydro/hydro_fig.png" />
</div>

MERIT Hydro river network for Tigris-Euphrates, Ob, Amazon, and Pearl Rivers. High resolution image can be downloaded from "Quick Look Figure" below.

---

## About MERIT Hydro

High-resolution raster hydrography maps are a fundamental data source for many geoscience applications. Here, we introduce MERIT Hydro, a new global flow direction map at 3 arc-second resolution (~90 m at the equator), derived from the latest elevation data (MERIT DEM) and water body datasets (G1WBM, GSWO, and OpenStreetMap). We developed a new algorithm to extract river networks in a near-automatic manner by separating actual inland basins from dummy depressions caused by errors in the input elevation data.

After a minimal amount of hand editing, the constructed hydrography map shows good agreement with existing quality-controlled river network datasets in terms of flow accumulation area and river basin shape. The locations of river streamlines are realistically aligned with existing satellite-based global river channel datasets. The relative error in drainage area is smaller than 0.05 for 90% of GRDC gauges, confirming the accuracy of the delineated global river networks. Discrepancies in flow accumulation area are found mostly in arid river basins containing depressions that are occasionally connected at high water levels, resulting in uncertain watershed boundaries.

MERIT Hydro improves upon existing global hydrography datasets in terms of spatial coverage (from 90°N to 60°S) and representation of small streams, mainly due to the increased availability of high-quality baseline geospatial datasets. The new flow direction and flow accumulation maps, along with accompanying supplementary layers such as hydrologically adjusted elevation and channel width, will advance geoscience studies related to river hydrology at both global and local scales.


### Interactive map

An interactive web-based map is available to explore MERIT Hydro and related hydrography layers online via  
[**MERIT Hydro Visualization WebApp (Google Earth Engine)**](https://meritdataset.users.earthengine.app/view/merit-hydro-visualization-and-interactive-map).

---

## Download MERIT Hydro

**How to obtain the data**

1. Register via the Google Form (license agreement)
2. Receive the password by email
3. Access the download page.

### Registration for Download

Please complete the  
[**Google Form for registration and license agreement**](https://goo.gl/forms/6VwfnasNjkYm0Wqu2).  
The password for downloading the data will be sent to you by email after registration.

Alternatively, you may contact the developer directly to request access:

- **Dai Yamazaki** yamadai [at] iis.u-tokyo.ac.jp


### Download Datasets

The current version is **v1.0.1** (10 June 2019).

The password for downloading the data is issued after registration via the Google Form (see above).  
The data can be downloaded from  
[**MERIT Hydro download page (DropBox)**](https://www.dropbox.com/scl/fo/fw8qrf73zhzmo6p92gbxv/AIlVRfnQVEWOyXEimsK2qKk?rlkey=a0be5opyb2kpkf0ssbvau8y9q&st=t8rtowe9&dl=0).

**Note:**  
*Due to temporary issues with the original web server, the data are currently distributed via Dropbox.*
*When prompted for access, please enter **only the password** provided in the registration email; the username is not required.*

---

## Data Description

### Data format

The flow direction dataset is referenced to the **WGS84 coordinate system** and the **EGM96 geoid**.  
The data are prepared as **5° × 5° tiles** (6000 × 6000 pixels).

The filename represents the center of the lower-left pixel of the data domain.  
For example, the file `n30w120_dir.tif` corresponds to the flow direction data for the domain  
**30°N–35°N, 120°W–115°W**  
(more precisely, 29.99958333°N–34.99958333°N and 120.0004167°W–115.0004167°W).

The 5° tiles are bundled into **30° (latitude) × 30° (longitude)** packages.  
The package name represents the lower-left corner of the package domain.  
For example, the package `dir_n30w120.tar` contains all tiles within the domain  
**30°N–60°N, 120°W–90°W**.

The data format is **GeoTIFF**.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/merit_hydro/MERIT_tile.png" alt="MERIT Hydro tiling scheme">
</figure>

### Data layers and variables

| Variable   | Description   | Unit   | Data type   |
|------------|---------------|--------|-------------|
| dir | Flow direction | – | int8 |
| elv | Hydrologically adjusted elevation | m | float32 |
| upa | Upstream drainage area | km² | float32 |
| upg | Upstream gradient | – | float32 |
| wth | River channel width | m | float32 |
| hnd | Height Above Nearest Drainage | m | float32 |


#### Flow Direction (Local Drainage Direction)

Flow direction is provided as a **1-byte signed integer** (`int8`).  
The flow direction codes are defined as follows:

- **1**: east  
- **2**: southeast  
- **4**: south  
- **8**: southwest  
- **16**: west  
- **32**: northwest  
- **64**: north  
- **128**: northeast  

Special values:

- **0**: river mouth  
- **-1**: inland depression  
- **-9**: undefined (ocean)

**Note:**  
If a flow direction file is interpreted as an **unsigned integer**, undefined pixels correspond to **247**, and inland depressions to **255**.

#### Hydrologically Adjusted Elevation

Hydrologically adjusted elevation is provided as a **4-byte floating-point value** (`float32`).  
Elevations are modified to satisfy the condition that downstream elevation is not higher than upstream elevation, while minimizing deviations from the original DEM.

Elevation values are referenced to the **EGM96 geoid** and expressed in **meters**, with a vertical increment of **0.1 m**.  
Undefined pixels (oceans) are assigned a value of **-9999**.

For details of the adjustment method, see *Yamazaki et al.* (2012, *Water Resources Research*).

#### Upstream Drainage Area (Flow Accumulation Area)

Upstream drainage area is provided as a **4-byte floating-point value** (`float32`) and expressed in **km²**.  
Undefined pixels (oceans) are assigned a value of **-9999**.

### Number of Upstream Drainage Pixels (Flow Accumulation Grid)

The number of upstream drainage pixels is provided as a **4-byte integer** (`int32`).  
Undefined pixels (oceans) are assigned a value of **-9999**.

#### River Channel Width

River channel width is provided as a **4-byte floating-point value** (`float32`) in **meters**.  
Values greater than **0** represent river width at channel centerlines.  
A value of **-1** indicates non-centerline water pixels, and **0** represents non-water pixels.  
Undefined pixels (oceans) are assigned a value of **-9999**.

River channel width is estimated using the method described in *Yamazaki et al.* (2012, *Water Resources Research*), with subsequent improvements to the original algorithm.

#### HAND: Height Above Nearest Drainage

HAND is provided as a **4-byte floating-point value** (`float32`) in **meters**.  
Values represent the height above the nearest drainage pixel (*Nobre et al.*, 2011, *Journal of Hydrology*).  
Here, drainage pixels are defined as those with an upstream area greater than **0.5 km²**.

Undefined pixels (oceans) are assigned a value of **-9999**.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/merit_hydro/supp_data.png" alt="Supplementary data layers">
</figure>
Supplementary data layers (left: river width, right: HAND).

---

## Data Policy

### License Agreement
MERIT Hydro is licensed under either of the following licenses:

- **Creative Commons Attribution–NonCommercial 4.0 International (CC BY-NC 4.0)**  
- **Open Data Commons Open Database License (ODbL 1.0)**  

(i.e., a dual-license scheme; users may choose the license most appropriate for their use.)

To view a copy of these licenses, please visit:

- [CC BY-NC 4.0 license](https://creativecommons.org/licenses/by-nc/4.0/)  
  *Non-commercial use with fewer restrictions.*

- [ODbL 1.0 license](https://opendatacommons.org/licenses/odbl/summary/)  
  *Commercial use is permitted; however, derived data based on MERIT Hydro must be made publicly available under the same ODbL license.*

**For example, if you create a flood hazard map using MERIT Hydro and provide a commercial service based on it, the resulting hazard map must be made publicly available under the ODbL license.**

Please note that the above license terms apply to **derived data** created based on MERIT Hydro.  
They do **not** apply to **produced works or artworks** (e.g., figures in journal papers) created using MERIT Hydro.  
Users may hold the copyright of such artworks and assign any license, provided the produced work is not considered a “derived data product.”

By downloading and using the data, users agree to the terms and conditions of the selected license.  
Notwithstanding these free licenses, users are requested to refrain from redistributing the data *in whole and in its original format* on other websites without explicit written permission from the authors.

MERIT Hydro is available at:  
https://global-hydrodynamics.github.io/MERIT_Hydro/

The copyright of MERIT Hydro is held by the developers (2019). All rights reserved.

---

### Data sharing policy

Citation of the paper below is sufficient when MERIT Hydro is used as a data source.  
However, if substantial assistance is provided for additional handling or editing of the dataset, or if the research outcome critically depends on MERIT Hydro, co-authorship may be requested.

**Citation**

Yamazaki, D., Ikeshima, D., Sosa, J., Bates, P. D., Allen, G. H., & Pavelsky, T. M. (2019).  
*MERIT Hydro: A high-resolution global hydrography map based on latest topography datasets.*  
**Water Resources Research**, 55, 5053–5073.  
https://doi.org/10.1029/2019WR024873  


---

## Notes

### Update notes

- **v1.0.1** (10 June 2019)  
  Added several tiles that were missing in v1.0 due to a GDAL bug  
  (`n50w085_upa.tif`, `n40e075_upg.tif`, `n60w130_upg.tif`, `n10w010_upg.tif`).

- **v1.0** (17 May 2019)  
  Official release of MERIT Hydro.  
  River width around coastal areas was modified due to uncertainty in water masks in coastal zones.

- **v0.7** (25 January 2019)  
  Pre-release version.

### Known Problems

#### River Width

**[Update from GWD-LR v1]**  
The river width algorithm has been updated to account for sub-pixel water fraction.  A 30 m water map is now used for river width estimation at 90 m resolution. Currently, river width is calculated separately for each channel in braided or anabranching sections. Merged river width should be estimated for such river reaches.

#### Water Body Map

There are some inconsistencies between the DEM land–sea mask and water body datasets,  such as newly formed islands along coastlines. In addition, the quality of the OpenStreetMap water body layer is not uniform across regions.

#### Channel Bifurcations

Channel bifurcations are not well represented in the current version. Each pixel is assumed to have only a single downstream direction. Secondary or multiple downstream directions should be considered to better represent complex river networks, such as those in delta regions, floodplains, and braided rivers.

#### Underground Rivers and Tunnels

Major underground rivers and tunnels are not explicitly represented. Their inclusion would improve large-scale water balance simulations.

#### River and Lake Separation

Rivers and lakes should be treated as separate features for certain applications.

#### Below Sea-Level Areas

Areas below sea level in coastal regions are not well represented in the hydrologically adjusted elevation data.

#### Flow Direction over Glaciers

Flow direction over glaciers is not well represented, because glacier centerlines often have higher elevations than glacier margins.

#### Supplementary Data

Additional supplementary layers would be beneficial, including the locations of:

- GRDC gauging stations  
- Waterfalls  
- Reservoirs  
- Other relevant hydrological features

