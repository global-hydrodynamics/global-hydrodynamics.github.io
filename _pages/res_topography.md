---
title: "Yamazaki Lab - Research"
layout: pagelay
sitemap: false
permalink: /res_topography/
---

# Our Research

Our overarching research goal is to understand and predict the dynamics of terrestrial water systems from local to global scales, including their interactions with the Earth system and human society. To achieve this goal, we address a wide range of scientific challenges in global hydrology and hydrodynamics, primarily using numerical modelling, satellite remote sensing, and data integration approaches.

- [Research Topic Overview](../research/)
- [Global hydrodynamic modelling](../res_modelling/)
- [Satellite monitoring of global hydrodynamics](../res_satellite/)
- [Global hydro-topography datasets](../res_topography/)
- [Global flood risk assessment](../res_floodrisk/)

For further details, please also visit our [list of publications](../publications/).

## High-precision global hydrogeography maps

Can we accurately represent all rivers on Earth in global hydrological models? Rivers play a central role in global hydrological and biogeochemical cycles, as well as in socioeconomic activities. We have developed high-resolution, high-accuracy global maps of river networks by integrating satellite observations and open geospatial databases. These datasets support a wide range of geoscience applications, including flood risk assessment, aquatic carbon emission studies, and climate modelling.

#### **Global topography map (MERIT DEM)**

Spaceborne Digital Elevation Models (DEMs) are a fundamental input for many geoscience studies; however, they still contain non-negligible elevation errors. Here, we introduce a high-accuracy global DEM at 3 arc-second resolution (~90 m at the equator) developed by removing major error components from existing DEMs (NASA SRTM3 DEM, JAXA AW3D DEM, and Viewfinder Panoramas DEM).

We decomposed elevation errors into absolute bias, stripe noise, speckle noise, and tree height bias using multiple satellite datasets and filtering techniques. After error removal, land areas mapped with vertical accuracy better than 2 m increased from 39% to 58%. Significant improvements were observed in flat regions where elevation errors previously exceeded natural topographic variability, and terrain features such as river networks and hill–valley structures became much more clearly represented.

We found that topographic slopes in previous DEMs were substantially distorted across many of the world’s major floodplains (e.g. the Ganges, Nile, Niger, and Mekong) and swamp forests (e.g. the Amazon, Congo, and Vasyugan). The newly developed DEM significantly enhances terrain-dependent geoscience applications.

- [Description paper (GRL)](https://doi.org/10.1029/2019WR024873)
- [MERIT DEM product page]({{ site.url }}{{ site.baseurl }}/MERIT_DEM/)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_MERIT_DEM.jpg" width="80%" />

Close-up comparison of the MERIT DEM and the original SRTM DEM over the Mekong Delta floodplain. Improvements resulting from the removal of stripe noise, speckle noise, absolute bias, and tree height bias are clearly visible.

<br>

#### **Global hydrography dataset (MERIT Hydro)**

High-resolution raster hydrography maps are a fundamental data source for many geoscience applications. Here, we introduce MERIT Hydro, a new global flow direction dataset at 3 arc-second resolution (~90 m at the equator), derived from the latest elevation data (MERIT DEM) and global water body datasets (G1WBM, GSWO, and OpenStreetMap).

We developed a new algorithm to extract river networks in a near-automated manner by distinguishing true inland basins from artificial depressions caused by elevation data errors. After minimal manual editing, the resulting hydrography dataset shows strong agreement with existing quality-controlled river network datasets in terms of flow accumulation area and basin geometry. River centerlines are also well aligned with satellite-based global river channel observations.

For 90% of GRDC gauging stations, relative errors in drainage area are smaller than 0.05, confirming the high accuracy of the delineated river networks. Remaining discrepancies are mainly found in arid basins with intermittent connectivity, where watershed boundaries are inherently uncertain. MERIT Hydro improves upon existing global hydrography datasets in spatial coverage (N90–S60) and representation of small streams, largely due to improved baseline geospatial data quality.

- [MERIT Hydro description paper](https://doi.org/10.1029/2019WR024873)
- [MERIT Hydro product page]({{ site.url }}{{ site.baseurl }}/MERIT_Hydro/)

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_width.jpg" width="80%" />

Global river width map from MERIT Hydro. Close-up view of the Amazon River.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_WebApp.jpg" width="80%" />

Interactive visualization is also available via a [Google Earth Engine Web App](https://meritdataset.users.earthengine.app/view/merit-hydro-visualization-and-interactive-map).

<br>

#### **Japan flow direction map (J-FlwDir)**

We developed a new surface flow direction dataset at 1 arc-second resolution (~30 m) covering the entire Japanese domain, using the “Kiban Chizu Joho” digital elevation model, “Kokudo Suchi Joho” water body layers, and the G1WBM Landsat-based water body map.

Computing flow directions over large domains has traditionally been challenging due to elevation data errors. We addressed this issue by developing a new algorithm that first estimates initial flow directions using a steepest-slope method, and then ensures river network connectivity by selectively reversing flow directions where necessary. The resulting dataset shows improved consistency with observed river networks compared to previous HydroSHEDS flow direction products.

Additional layers, including flow accumulation area, hydrologically adjusted elevation, and river width, were also generated. The J-FlwDir dataset provides a robust foundation for geoscience studies that rely on high-quality flow direction information.

- [J-FlwDir web page]({{ site.url }}{{ site.baseurl }}/JapanDir)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_J-FlwDir.jpg" width="80%" />

Close-up view of the Kanto region.

<br>

#### **Global 3 arc-second / 1 arc-second water body maps (G3WBM / G1WBM)**

The Global 3 arc-second Water Body Map (G3WBM) was developed using an automated algorithm applied to multi-temporal Landsat imagery from the Global Land Survey (GLS) database. A total of 33,890 scenes from four GLS epochs were processed to produce a seamless global water body map without cloud or snow/ice gaps.

Permanent water bodies were distinguished from temporally inundated areas by analyzing the frequency of water occurrence across overlapping Landsat observations. At 3 arc-second resolution, G3WBM provides a clearer separation of river channels and floodplains than previous global products.

- [G3WBM description paper](https://www.sciencedirect.com/science/article/pii/S0034425715301656)
- [G3WBM / G1WBM web page]({{ site.url }}{{ site.baseurl }}/G3WBM)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_G3WBM.jpg" width="80%" />

Close-up view of the Obi River basin in G3WBM.

<br>

#### **OpenStreetMap water layer**

The OSM Water Layer is a global surface water dataset generated by extracting water-related features from OpenStreetMap data. It provides complementary vector-based information on rivers, lakes, and other surface water bodies at the global scale.

- [OSM Water Layer GitHub repository](https://github.com/global-hydrodynamics/OSM_WaterLayer)
- [OSM Water Layer web page]({{ site.url }}{{ site.baseurl }}/OSM_WaterLayer/)
