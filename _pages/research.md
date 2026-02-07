---
title: "Yamazaki Lab - Research"
layout: pagelay
sitemap: false
permalink: /research/
---

# Our Research

Our research goal is to understand and predict the dynamics of land waters from local to global scales, including its interaction with Earth system and human society. To achieve this goal, we work on various science challenges on global hydrology/hydrodynamics mainly using modelling, remote sensing, and data integration approaches.

- [Global hydrodynamic modelling](../res_modelling/).
- [Satellite Monitoring of Global Hydrodynamics](../res_satellite/).
- [Global hydro-topography datasets](../res_topography/).
- [Global flood risk assessment](../res_floodrisk/).

If you are interested in detail: please also visit the [list of publications](../publications/).

## Our Products (code & data)

{% include products.html %}

##  Overview of research topics

Here are overview of some research topics we currently work on:

### **Global River Hydrodynamics Modelling (CaMa-Flood)** 
River is an important component of the global hydrological cycle, and it interacts with Earth's climate and biogeochemical systems by transferring water and other materials from land to oceans. It also affects human society by providing water resources, while too much or too small river discharge causes disasters (i.e. flood, drought). Understanding and predicting river water dynamics is essential for representing rivers within global climate models and also for water resource planning and water-related disaster mitigation. However, modelling of river hydrodynamics on the global scale is difficult because of its multi-scale nature. While we have to consider the basin-wide water budget of continental rivers (spatial scale: >1000km), the water movement is regulated by detailed topography of river channels and floodplains (spatial stale: <100m). To overcome this difficulty, we are working on developing a global river model [CaMa-Flood](https://global-hydrodynamics.github.io/CaMa-Flood/), which can simulate river hydrodynamics very efficiently by representing flood inundation as sub-grid scale physics.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/CaMa_model.jpg" />

### **Improvement of global topography dataset (MERIT data series)** 
While modelling is a powerful tool to understand and predict the global hydrological cycle, its accuracy highly depends on the quality of the available topography dataset because the dynamics of land waters is largely constrained by local topographic relief. However, the availability of high-accuracy topography data is limited on the global scale, especially in developing countries and remote areas without human settlement. Satellite measurements can cover these areas, while the accuracy of spaceborne topography data is still not adequate for land hydrodynamics modelling. We are working on developing very high accuracy global topography datasets which are ready-to-be-used for global and regional hydrology models, by integrating multiple satellite and geospatial datasets and applying extensive hydro-geographical data processing. <br />

[More detailed explanation](../res_topography/)

- [MERIT DEM](https://global-hydrodynamics.github.io/MERIT_DEM/) global topography map
- [MERIT Hydro](https://global-hydrodynamics.github.io/MERIT_Hydro/) global hydrography map

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_width.jpg"/>

- Interactive visualization on [Google Earth Engine WebApp](https://meritdataset.users.earthengine.app/view/merit-hydro-visualization-and-interactive-map) is also available.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_WebApp.jpg"/>


### **Remote sensing and data assimilation of global hydrodynamics.**
We also work on the remote sensing of land waters to reveal the actual status of global hydrology cycle by observational approach. We use various satellite techniques (optical, radar, altimetry, microwave, gravimetry) to measure different variables in the global hydrological cycle. We are a part of the [SWOT Science Team](https://swot.jpl.nasa.gov/) and collaborate with scientists all over the world to advance our understanding of surface waters using state-of-the-art satellite measurement techniques.

In addition, integration of model simulations and satellite/in-situ measurements is required for more precise monitoring of global hydrodynamics state. We are developing various model-data integration techniques, such as data assimilation or multi-variable model optimization. These techniques are used to realize the optimum estimate of global hydrological cycle and also to reveal model parameters unobservable from satellite measurement (such as underwater river topography).

### **Hydrology processes in Earth System Models**
We are also working on the improvement of land hydrology processes within the framework of global climate models and Earth system models. Historically, land surface models only consider vertical water and energy fluxes for representing land-atmosphere interactions as the bottom boundary condition of atmospheric models. However, the importance of more detailed hydrology processes is discussed recently, as they interact with Earth's climate system via biogeochemical and ecological processes. For example, carbon emission over land waters (CO2 from stream and lake surface, methane from wetlands) is not negligible in global carbon budget studies, and hillslope water redistribution could control vegetation dynamics and water budgets. We are trying to develop a new multi-scale modelling approach to represent these detailed hydrological processes within the Earth system modelling framework, and to examine their impact on the global climate system.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/Hillslope.jpg">

### **Global climate/flood risk assessment**
Our global river hydrodynamics model CaMa-Flood is a powerful tool to estimate flood risk on a large scale because of its very high computational efficiency. By utilizing this advantage, we are working on several applicational studies, such as global/nationwide real-time flood forecast, global-scale flood risk assessment under climate change, and probabilistic flood risk analysis using large ensemble data, assessment of compound disaster risk.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/CaMa_Mekong.jpg" />


### ... and more.
