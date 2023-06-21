---
title: "Yamazaki Lab - Research"
layout: pagelay
excerpt: "Yamazaki Lab -- Research"
sitemap: false
permalink: /res_satellite/
---

# Our Research

Our research goal is to understand and predict the dynamics of land waters from local to global scales, including its interaction with Earth system and human society. To achieve this goal, we work on various science challenges on global hydrology/hydrodynamics mainly using modelling, remote sensing, and data integration approaches.

- [Research Topic Overview](../research/).
- [Global hydrodynamic modelling](../res_modelling/).
- [Satellite Monitoring of Global Hydrodynamics](../res_satellite/).
- [Global hydro-topography datasets](../res_topography/).
- [Global flood risk assessment](../res_floodrisk/).


If you are interested in detail: please also visit the [list of publications](../publications/).

## Satellite Monitoring of Global Hydrodynamics

Satellite monitoring of terrestrial water has revolutionized our understanding of Earth's water resources on a global scale. Through the use of satellite observations, scientists and researchers can now track changes in surface water bodies, including lakes, rivers, and reservoirs, with remarkable accuracy and frequency. This technology has yielded invaluable insights into the state of our water ecosystems and has played a crucial role in addressing various water-related challenges. Satellite-based sensors are now capable of making direct and indirect measurements of nearly all components of the hydrological cycle. 

### **Using satellites for model validation and calibration**

#### **Comparison of modelled and observed water extent**

Evaluating the inundation area estimated by the global hydrodynamic models is important for the validation of the model outputs. We estimated land surface water area using the CaMa-Flood global hydrodynamic model and compared the estimates with Landsat at 3″ resolution (∼90 m at the equator) globally. We compared both water surface area derived by Landsat and passive microwaves (e.g., MODIS). The comparison reveals spatial patterns and discrepancies, shedding light on the model's performance and the limitations of the satellite sensing (Zhou et al., 2021). These insights contribute to improving flood modeling accuracy and supporting decision-making processes related to water resource management and disaster preparedness. Our analysis demonstrates that CaMa-Flood effectively represents various types of water areas. By comparing its outputs with satellite-derived results from Landsat, we identify areas of agreement and mismatches. Overestimations in irrigated regions can be attributed to the model's oversight of natural processes and human water regulation factors. Conversely, the model underestimates water extent in paddy fields, where seasonal water bodies are accurately captured by Landsat. Notably, CaMa-Flood excels in representing water bodies covered with dense vegetation, providing valuable insights into hydrodynamic characteristics in challenging environments. Understanding these discrepancies and limitations is crucial for advancing flood modeling techniques and improving our understanding of global water dynamics.

- [Zhou et al., 2021](https://doi.org/10.1029/2020WR029256)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_comparison.jpg" width="80%"/>


#### **Multivariable Evaluation of Hydrodynamic Model**

Understanding the global hydrological cycle through large-scale river hydrodynamic modeling is crucial, and evaluating these models is essential for calibration and performance assessment. However, current evaluation methods often focus on individual variables, and there is a need for integrated approaches. To address this, we have proposed a new method that combines multiple variables and introduces an overall basin skill score (OSK) metric. Our integrated approach considers both sub-basin skill scores and the OSK, which evaluate model performance at different scales and overcome limitations associated with varying spatial dimensions. We applied this methodology to evaluate the CaMa-Flood global river model in the Amazon Basin, considering three variables: discharge, water surface elevation, and flooded area (Modi et al., 2022). Additionally, we utilized two baseline topography datasets: the Shuttle Radar Topography Mission (SRTM) and the Multi-Error-Removed Improved-Terrain (MERIT) digital elevation models (DEMs).

The results of our evaluation indicate that the proposed methodology effectively addresses the limitation of single-variable evaluation by identifying multiple best parameter sets with low sensitivity. Notably, when using the MERIT DEM, CaMa-Flood achieved a single optimal parameter set with a maximum OSK of 0.57, compared to 0.52 with the SRTM DEM. This underscores the significance of accurate topography data for improving river hydrodynamic modeling performance. By employing the proposed multivariable integrated evaluation approach with improved topography data, we were able to reduce equifinality and estimate the best parameter sets while preserving the physical relationships among variables. This advancement contributes to enhancing the accuracy and reliability of river hydrodynamic modeling.

- [Modi et al., 2022](https://doi.org/10.1029/2021WR031819)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_mult.jpg" width="80%"/>


<br>


### **Calibration/Validation of Hydrodynamic Models** 

The physical representation of the status of water dynamics on the earth is performed by models. These physical models were victims of inherent errors in model structure, input data, and parameters. To improve the accuracy of these hydrodynamic models, calibration and validation of the model is needed. Calibration involves modifying model parameters to adjust its output and match the observed data, while validation tests how well a calibrated model can predict new independent data. Incorporating observations obtained through satellite monitoring in model calibration and validation can help better constrain model parameters and reduce calibration uncertainty. Satellite observations, such as those from satellite altimetry that collect data on water surface elevation and surface water extent data, have been used for calibration and validation of hydrodynamic models.

Calibrating river bottom elevation is crucial for large-scale models such as CaMa-Flood because the observations on river bottom elevations are limited. We applied a rating-curve-based calibration approach using satellite altimetry and in-situ river discharge data to calibrate river bottom elevations and improve the accuracy of CaMa-Flood simulations (Zhou et al., 2022). A rating curve is a mathematical model that describes the relationship between the river stage (water level) and discharge (flow rate). We compared the observed and modeled rating curves and adjusted the river bottom elevations considering the vertical offset between the observed and modeled stages. Then the river bottom elevations in the intermediate river reaches were estimated by linear interpolation. We found that the rating-curve-based calibration approach using satellite altimetry and in-situ river discharge data significantly reduced the model errors, resulting in better predictions of water dynamics. Thus, the integration of satellite observations provides crucial input data for calibrating and validating hydrodynamic models.

- [Zhou et al., 2022](https://doi.org/10.1029/2021WR031226)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_calib.jpg" width="80%"/>


<br>


#### **Satellite Data Assimilation into Hydrodynamic Models**

Thanks to recent advancements in computational technology, global hydrodynamic models (GHMs) have become valuable tools for studying the Earth's water cycle. GHMs simulate water movement in segmented river systems to efficiently analyze water dynamics when ground observations are limited. However, these models have their limitations, including simplified structures, uncertainties in external data, and parameter uncertainties. Although data assimilation (DA) techniques can enhance model performance, GHMs have not yet reached a stage where they can directly assimilate satellite altimetry data. The accuracy of simulated water surface elevations (WSEs) can be affected by various factors, such as uncertainties in digital elevation models, hydraulic parameters, and the simplification of cross-section characteristics.

To address these challenges, we conducted an evaluation to assess the potential of assimilating satellite altimetry data into a global-scale hydrodynamic model, specifically the CaMa-Flood model. By assimilating the satellite altimetry data and transforming observations into anomalies or normalized values, we aimed to mitigate errors resulting from parameter uncertainties in the model. The findings indicated an improvement in river discharge estimation when satellite altimetry was assimilated into the GHM.(Revel et al., 2021, 2023). However, to fully realize the benefits of river discharge data assimilation through satellite altimetry, it is essential to address uncertainties in hydrodynamic modeling, including factors like river bottom elevation, river width, simplified floodplain dynamics, and assumptions related to cross-section shapes.

In summary, while GHMs have shown promise in simulating water dynamics on a global scale, there are still challenges to overcome when assimilating satellite altimetry data. By addressing these uncertainties and improving the accuracy of hydrodynamic modeling, we can maximize the advantages of assimilating satellite altimetry for river discharge estimation.

- [Revel et al., 2021](https://doi.org/10.1029/2020WR027876)
- [Revel et al., 2023](https://doi.org/10.5194/hess-27-647-2023)

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/res_assim.png" width="80%"/>


<br>
