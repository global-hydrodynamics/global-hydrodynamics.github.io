---
title: "Yamazaki Lab - Research"
layout: pagelay
sitemap: false
permalink: /res_floodrisk/
---

# Our Research

Our research goal is to understand and predict the dynamics of land waters from local to global scales, including its interaction with Earth system and human society. To achieve this goal, we work on various science challenges on global hydrology/hydrodynamics mainly using modelling, remote sensing, and data integration approaches.

- [Research Topic Overview](../research/).
- [Global hydrodynamic modelling](../res_modelling/).
- [Satellite Monitoring of Global Hydrodynamics](../res_satellite/).
- [Global hydro-topography datasets](../res_topography/).
- [Global flood risk assessment](../res_floodrisk/).


If you are interested in detail: please also visit the [list of publications](../publications/).

## Climate change impact and Flood risk assesment

We work on the estimation of flood risk in the future, considering the impact of climate change. This estimation is done by combining high-resolution physical models of climate, land surface, and  river. The results by this research group are reffered and utilized by many institutes and domains(e.g. IPCC and Global finance group), which takes an important role for climate change impact estimation in the world.

### **The definition of “Flood risk”** 

Flood risk can be calculated by multiplying three components, “Hazard”, “Exposure”, and “Vulnerability”. “Hazard” means the extent of flood event and usually prepared in the form of inundation depth map and inundation period map. “Exposure” means how many people and assets in the damageda area can be affected by the flood event. When we calculate “Exposure”, we use population density map, spatial distributed GDP map, and land use data. “Vulnerability” is defined as how much damage can be caused actually by certain level of flood. This one is expressed by the form of depth-damage function, which shows the quantitative relationships between inundation depth and economic damage. For flood risk estimation with high accuracy, we need to use high quality datasets in each three components.

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_floodrisk.jpg" width="80%"/>

Definition of flood risk.

<br>



### **Estimating Flood Risk in the future**

We work on developing and utilizing physical models of river flood for making the datasets of hazard in the future world. In the estimation of hazard, there are uncertainties to consider, caused by internal variability between climate models and uncertain future scenarios of global temperature change and social economic status. Therefore, in our research, we develop and implement the methogologies for estimating future hazard with considering how to understand and control those uncertainties.

For example, we calculated flood hazard with the usage of multiple AOGCM(Atmosphere–Ocean General Circulation Model) in CMIP6(Coupled Model Intercomparison Project) and CMIP5, under historical climate and future climate for different scenarios, and evaluated the variability of hazard in future scenarios.

- [Hirabayashi et al., 2021](https://www.nature.com/articles/s41598-021-83279-w)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_futureexposure.jpg" width="80%"/>

<br>

#### **Constructing Future Flood Hazard Map**

We also research the development of realistic hazard maps, which show inundation depthand area when flood magnitudes are exceeding the specific-year (e.g. 100 year) return period (Kimura et al., 2023). In this research, the methodologies for bias correction and generating future hazard map were compared and examined.

- [Kimura et al., 2023](https://hess.copernicus.org/articles/27/1627/2023/hess-27-1627-2023.html)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_hazardmap.jpg" width="80%"/>

<br>


### **Estimation of Flood Impact**

#### **Observed social impacts by flood from space** 

When evaluating and estimating social impact by flood, it is required to develop methodologies for each specific impact because the relationships between hazard and actual social impacts are various and complicated, that is, not east to quantify. The actual social impacts are highly affected by not only the features of flood events, but also social elements of the flooded area, such as flood protection level, recovery ability, and the structure of national economy. We work on this estimation by various methologies from observation-based methods to simulation-based methods.

For example, to understand the actual social impacts by the previous flood events, we use the Night Time Light(NTL) dataset in global, which is produced by satellite observation and shows the situation of human activity through light intensity.NTL can provide flood impact information on human activities for each event efficiently and simply. NTL provides detailed flood impact information about the affected location and duration, serious level as well as data availability during flooding period. The flood impact has spatial variability, indicating the pixel-scale information provided by NTL is valuable. Flood impact indices from NTL show how flooding affected each countries’ human daily life, including the effects by both flood events’ serious level and each countries’ defense ability.

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_nightlight.jpg" width="80%"/>

<br>

#### **Economic Damage -Direct loss, business interruption loss, and supply chain loss-** 

Especially in aspects of “ecomnomic loss” estimation by flood, there are three types of economic loss by flood; “Direct damage”, “Business Interruption loss” and “Supply chain impact”. For estimating these economic loss, we need to investigate not only Hazard, explained above, but also Exposure dataset. In this lab, we calculate, collect and process many datasets and then consider how to combine and utilize those datasets for all the three types of economic loss estimation.
For example, as for “Direct loss” estimation, we combined the hazard, simulated by the models and methods explained above, with global spatial distributed GDP map as an Exposure. By combining these, we calculated the amount of assets that could be exposed to flood, described in the units of GDP.
For “Business interruption loss”, we estimated the amount of business interruption loss, which is caused by long lasting inundation, following after direct asset damages of flood(Taguchi et al., 2022). For calculating the effect of long lasting inundation, we collected the dataset of flood protection and simulated inundation periods considering flood protection level. The results showed that, in future scenario, some areas with low-gradient river, which are thought to be subject to long lasting inundation, could have numerous amounts of buisiness interruption loss, the extent of one parcent of whole country GDP.

- [Taguchi et al., 2022](https://www.mdpi.com/2073-4441/14/6/967)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_indirectDamage.jpg" width="80%"/>


We’re also working on “Supply chain impact” now. In this type of economic loss, we have to estimate flood economic loss of each economic sector, individually. For considering the sectoral difference, we need to improve “Exposure” datasets, like land use map and sectoral GDP dataset. We work on collecting and processing newly available exposure dataset and aim to estimate sectoral-classified economic loss. It will lead to better understanding the mechanism of impact of flood on global supply chain.

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_GDPmap.jpg"  width="80%"/>


