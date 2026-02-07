---
title: "Yamazaki Lab - Research"
layout: pagelay
sitemap: false
permalink: /research/
---

# Our Research

Our overarching research goal is to understand and predict the dynamics of terrestrial water systems from local to global scales, including their interactions with the Earth system and human society. To achieve this goal, we address a wide range of scientific challenges in global hydrology and hydrodynamics, primarily using numerical modelling, satellite remote sensing, and data integration approaches.

Our main research themes include:

- [Global hydrodynamic modelling](../res_modelling/)
- [Satellite monitoring of global hydrodynamics](../res_satellite/)
- [Global hydro-topography datasets](../res_topography/)
- [Global flood risk assessment](../res_floodrisk/)

For further details, please also visit our [list of publications](../publications/).

## Our Products (code & data)

{% include products.html %}

## Overview of research topics

Below is an overview of the main research topics we are currently working on.

### **Global river hydrodynamics modelling (CaMa-Flood)**

Rivers are a key component of the global hydrological cycle and play a crucial role in the Earth system by transporting water and materials from land to the oceans. They also strongly affect human society by providing water resources; however, excessive or insufficient river discharge can lead to natural hazards such as floods and droughts. Understanding and predicting river water dynamics is therefore essential for representing rivers in global climate models, as well as for water resource management and disaster risk reduction.

Modelling river hydrodynamics at the global scale is challenging due to its inherently multi-scale nature. While basin-scale water budgets must be considered for continental rivers (spatial scale: >1000 km), river flow dynamics are strongly controlled by detailed topography of channels and floodplains (spatial scale: <100 m). To address this challenge, we are developing a global river model, [CaMa-Flood]({{ site.url }}{{ site.baseurl }}/CaMa-Flood/), which efficiently simulates river hydrodynamics by representing flood inundation processes as sub-grid-scale physics.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/CaMa_model.jpg" width="80%" />

### **Improvement of global topography datasets (MERIT data series)**

While numerical modelling is a powerful tool for understanding and predicting the global hydrological cycle, its accuracy strongly depends on the quality of topographic data, as terrestrial water dynamics are largely constrained by local topographic relief. However, high-accuracy topography datasets are still limited at the global scale, particularly in developing regions and remote areas with sparse in-situ observations.

Satellite observations provide global coverage, but the accuracy of spaceborne topography data has traditionally been insufficient for detailed land hydrodynamics modelling. To overcome this limitation, we are developing high-accuracy, ready-to-use global topography datasets for hydrological and hydraulic modelling by integrating multiple satellite and geospatial datasets and applying extensive hydro-geographical processing.

[More detailed explanation](../res_topography/)

- [MERIT DEM]({{ site.url }}{{ site.baseurl }}/MERIT_DEM/): global digital elevation model  
- [MERIT Hydro]({{ site.url }}{{ site.baseurl }}/MERIT_Hydro/): global hydrography dataset

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_width.jpg" width="80%" />

- An interactive visualization is also available via a [Google Earth Engine Web App](https://meritdataset.users.earthengine.app/view/merit-hydro-visualization-and-interactive-map).

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/MERIT_WebApp.jpg" width="80%" />

### **Remote sensing and data assimilation of global hydrodynamics**

We investigate terrestrial water dynamics using remote sensing approaches to observe the actual state of the global hydrological cycle. A wide range of satellite techniques—including optical, radar, altimetry, microwave, and gravimetric observations—are used to measure key variables of land water processes.

We are members of the [SWOT Science Team](https://swot.jpl.nasa.gov/) and collaborate with international partners to advance surface water science using state-of-the-art satellite observations.

In addition, integrating model simulations with satellite and in-situ observations is essential for accurate monitoring of global hydrodynamics. We are developing model–data integration techniques such as data assimilation and multi-variable model optimization to obtain optimal estimates of the global hydrological state and to infer model parameters that are not directly observable from space (e.g., underwater river bathymetry).

### **Hydrological processes in Earth system models**

We are also working to improve the representation of land hydrological processes within global climate models and Earth system models. Traditionally, land surface models have focused mainly on vertical fluxes of water and energy to represent land–atmosphere interactions. However, increasing attention is now being paid to lateral and multi-scale hydrological processes due to their interactions with biogeochemical and ecological systems.

For example, greenhouse gas emissions from inland waters (CO₂ from rivers and lakes, methane from wetlands) are non-negligible components of the global carbon budget, and hillslope water redistribution can strongly influence vegetation dynamics and regional water balance. We aim to develop new multi-scale modelling approaches that explicitly represent these processes within Earth system models and to assess their impacts on the global climate system.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/Hillslope.jpg" width="80%" />

### **Global climate and flood risk assessment**

Our global river hydrodynamics model, CaMa-Flood, is a powerful tool for large-scale flood risk assessment due to its high computational efficiency. Leveraging this advantage, we conduct applied studies including global and national real-time flood forecasting, flood risk assessment under climate change, probabilistic flood risk analysis using large ensemble simulations, and assessments of compound disaster risks.

<img src="{{ site.url }}{{ site.baseurl }}/images/slider/CaMa_Mekong.jpg" width="80%" />

### … and more
