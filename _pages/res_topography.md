---
title: "Yamazaki Lab - Research"
layout: pagelay
excerpt: "Yamazaki Lab -- Research"
sitemap: false
permalink: /res_topography/
---

# Our Research

Our research goal is to understand and predict the dynamics of land waters from local to global scales, including its interaction with Earth system and human society. To achieve this goal, we work on various science challenges on global hydrology/hydrodynamics mainly using modelling, remote sensing, and data integration approaches.

- [Research Topic Overview](../research/).
- [Global hydrodynamic modelling](../res_modelling/).
- [Satellite Monitoring of Global Hydrodynamics](../res_satellite/).
- [Global hydro-topography datasets](../res_topography/).
- [Global flood risk assessment](../res_floodrisk/).



If you are interested in detail: please also visit the [list of publications](../publications/).

## High-precision Global Hydrogeography Maps

Can we accurately represent all rivers on earth in global hydrology models? Rivers play important roles in global hydrological and biogeochemical cycles, and socioeconomic activities. We developed a high-resolution high-accuracy global map of river networks by combining satellites and open databases. This enhances a wide range of geoscience applications including flood risk assessment, aquatic carbon emissions, and climate modeling.

#### **Global Topography Map [MERIT DEM]** 
Spaceborne Digital Elevation Models (DEMs) are a fundamental input for many geoscience studies, but they still include non-negligible height errors. Here we introduce a high accuracy global DEM at 3 arcsecond resolution (~90 m at the equator) by eliminating major error components from existing DEMs (NASA SRTM3 DEM, JAXA AW3D DEM, Viewfinder Panoramas' DEM). We separated absolute bias, stripe noise, speckle noise and tree height bias using multiple satellite datasets and filtering techniques. After the error removal, land areas mapped with 2 m or better vertical accuracy were increased from 39% to 58%. Significant improvements were found in flat regions where height errors larger than topography variability, and landscapes such as river networks and hill-valley structures became clearly represented. We found the topography slope of previous DEMs was largely distorted in most of world major floodplains (e.g. Ganges, Nile, Niger, Mekong) and swamp forests (e.g. Amazon, Congo, Vasyugan). The newly developed DEM will enhance many geoscience applications which are terrain-dependent.

- [Description Paper in GRL](https://doi.org/10.1029/2019WR024873)
- [MERIT DEM product page](http://hydro.iis.u-tokyo.ac.jp/~yamadai/MERIT_DEM/)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_MERIT_DEM.jpg" width="80%"/>

Close-up view of the MERIT DEM and the Original SRTM DEM, for the Mekong Delta Floodplain. Improvement by removing stripe noise, speckle noise, absolute bias, and tree height bias can be recognized.

<br>


#### **Global Hydrography Dataset [MERIT Hydro]** 
High-resolution raster hydrography maps are a fundamental data source for many geoscience applications. Here we introduce MERIT Hydro, a new global flow direction map at 3 arc-second resolution (~90 m at the equator) derived from the latest elevation data (MERIT DEM) and water body datasets (G1WBM, GSWO, and OpenStreetMap). We developed a new algorithm to extract river networks near-automatically by separating actual inland basins from dummy depressions caused by the errors in input elevation data. After a minimum amount of hand-editing, the constructed hydrography map shows good agreement with existing quality-controlled river network datasets in terms of flow accumulation area and river basin shape. The location of river streamlines was realistically aligned with existing satellite-based global river channel data. Relative error in the drainage area was smaller than 0.05 for 90% of GRDC gauges, confirming the accuracy of the delineated global river networks. Discrepancies in flow accumulation area were found mostly in arid river basins containing depressions that are occasionally connected at high water levels and thus resulting in uncertain watershed boundaries. MERIT Hydro improves on existing global hydrography datasets in terms of spatial coverage (between N90 and S60) and representation of small streams, mainly due to increased availability of high-quality baseline geospatial datasets. The new flow direction and flow accumulation maps, along with accompanying supplementary layers on hydrologically adjusted elevation and channel width, will advance geoscience studies related to river hydrology at both global and local scales.

- [MERIT Hydro description paper](https://doi.org/10.1029/2019WR024873) 
- [MERIT Hydro product page](http://hydro.iis.u-tokyo.ac.jp/~yamadai/MERIT_Hydro/) 

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_width.jpg" width="80%"/>

Global river width map in MERIT Hydro. Close up view of the Amazon River.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_WebApp.jpg"  width="80%"/>

Interactive visualization on [Google Earth Engine WebApp](https://meritdataset.users.earthengine.app/view/merit-hydro-visualization-and-interactive-map) is also available.

<br>

#### **Japan Flow Direction Map [J-FlwDir]**
We developed a new surface flow direction datasets at 1-sec (~30m) resolution for the entire Japan domain, using “Kiban Chizu Joho” digital elevation model, “Kokudo Suchi Joho” water body layers and "G1WBM" landsat water body map. The calculation of flow directions for a large domain used to be difficult due to errors in the input elevation data. We solved this problem by a new algorithm, which first calculate the initial-guess flow directions by a steepest slope method, and then ensure river connectivity by reversing the initial-guess flow directions when needed. The new flow direction data shows better consistency to the accrual river networks compared to the previous HydroSHEDS flow directions. We also generated supplementary data layers such as flow accumulation area, adjusted elevation, and river width. The new flow direction datasets is considered to advance any geoscience studies which relies on flow direction data.

--[J-FlwDir web page](http://hydro.iis.u-tokyo.ac.jp/~yamadai/JapanDir/index.html)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_J-FlwDir.jpg"  width="80%"/>

Close up view of Kanto area.

<br>

#### **Global 3-second/1-second Water Body Map [G3WBM/G1WBM]**

Global 3 arc-second Water Body Map (G3WBM) is developed using an automated algorithm to process multi-temporal Landsat images from the Global Land Survey (GLS) database. We used 33,890 scenes from 4 GLS epochs in order to delineate a seamless water body map, without cloud and ice/snow gaps. Permanent water bodies were distinguished from temporal water-covered areas by calculating the frequency of water body existence from overlapping, multi-temporal, Landsat scenes. By analyzing the frequency of water body existence at 3 arc-second resolution, the G3WBM separates river channels and floodplains more clearly than previous studies.
--[G3WBM description paper](https://www.sciencedirect.com/science/article/pii/S0034425715301656?via%3Dihub)
--[G3WBM/G1WBM web page](http://hydro.iis.u-tokyo.ac.jp/~yamadai/G3WBM/index.html)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_G3WBM.jpg"  width="80%"/>

Close up vies of Obi River basin in G3WBM

<br>

#### **Open Street Map Water Layer**

OSM Water Layers is a global surface water data, generated by extracting surface water-related features from a bunch of OpenStreetMap data. 

--[OSM water layer GitHub repository](https://github.com/global-hydrodynamics/OSM_WaterLayer)
--[OSM water layer web page](http://hydro.iis.u-tokyo.ac.jp/~yamadai/OSM_water/)



