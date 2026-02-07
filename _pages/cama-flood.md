---
title: "CaMa-Flood"
layout: pagelay
sitemap: false
permalink: /CaMa-Flood/
---

# CaMa-Flood: Global River Hydrodynamics Model
**Last update:** 7 Feb, 2026
The latest package version is **CaMa-Flood v4.20 (20240430)**.  

---

## About CaMa-Flood

The CaMa-Flood (Catchment-based Macro-scale Floodplain) model is designed to simulate hydrodynamics in continental-scale rivers.  
Global river networks are discretized into hydrological units named **unit-catchments** to achieve efficient global-scale flow computation.  
Water level and flooded area are diagnosed from water storage at each unit-catchment using sub-grid topographic parameters of river channels and floodplains.

By adopting a grid–vector hybrid river network map that assigns one irregular-shaped unit-catchment to one grid box, CaMa-Flood enables realistic parameterization of sub-grid topography while keeping analysis straightforward. River discharge and flow velocity are calculated using the **local inertial equation** along a river network map prescribing upstream–downstream relationships. The time evolution of **water storage (the only prognostic variable)** is solved using a water balance equation accounting for upstream inflow, downstream outflow, and runoff forcing in each unit-catchment.

Channel bifurcations can also be represented by analyzing high-resolution topography. Detailed descriptions are found in the description papers.

**Key features**

- Global river hydrodynamics model with explicit floodplain representation
- Catchment-based macro-scale floodplain modeling approach
- Water level–based simulation using the local inertial equation
- River topography derived from **MERIT Hydro**
- Designed for continental to global flood simulations

### CaMa-Flood review paper

- Advancing global river hydrodynamics simulations by catchment-based macro-scale floodplain modeling approach  
  Dai Yamazaki  
  *Geoscience Letters, 12, 72*  
  <https://doi.org/10.1186/s40562-025-00452-z>

<iframe width="80%" height="280" 
  src="https://www.youtube-nocookie.com/embed/cH3unJIJ0Ig?controls=1&loop=1&playlist=cH3unJIJ0Ig"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen></iframe>

Hydrodynamic simulation by CaMa-Flood (v4.0).  
Calculation at 0.1-degree resolution; flood depth is diagnostically downscaled to 90 m resolution DEM.  
Simulation with new topography (v4.0, right) compared to old topography (v3.6 replicate, left).

---

## Model description

### Modeling framework and sub-grid topography

CaMa-Flood (Catchment-based Macro-scale Floodplain model) is a global river hydrodynamics model designed to simulate river discharge, water level, and floodplain inundation consistently from continental to global scales.  
The core concept of CaMa-Flood is the discretization of river networks into **unit catchments**, where each unit catchment represents an irregularly shaped drainage area assigned to a regular grid cell. Water storage is the sole prognostic variable, and its temporal evolution is solved using a water balance equation accounting for upstream inflow, downstream outflow, and lateral runoff forcing. River discharge and flow velocity are computed using the **local inertial equation**, enabling a physically based yet computationally efficient representation of river flow dynamics. Sub-grid river channel and floodplain topography are parameterized using high-resolution terrain information. This sub-grid representation enables CaMa-Flood to resolve river channel geometry and floodplain storage that cannot be explicitly represented at the model grid resolution.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/cama-overview.png" alt="Sub-grid topography and unit-catchment representation" width="80%"/>
</figure>
Subdivision into unit catchments and sub-grid representation of river channels and floodplains in CaMa-Flood.

### Simulation of river and floodplain hydrodynamics

By combining a grid–vector hybrid river network with sub-grid topographic parameterization, CaMa-Flood can represent complex hydrodynamic processes such as floodplain storage, backwater effects, and river bifurcations at large scales.  
Simulated water levels and floodplain storage can be diagnostically downscaled to finer spatial resolutions using high-resolution topography, enabling the production of detailed inundation depth maps for impact and risk assessments. This scalability allows CaMa-Flood to support simulations ranging from coarse global grids (e.g., 15–6 arcmin) to finer regional configurations (e.g., 3–1 arcmin), depending on computational resources and research objectives. The availability of river maps derived from **MERIT Hydro** further enhances the physical realism of river geometry and floodplain representation.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/downscaling.png" alt="Diagnostic downscaling of flood depth" width="80%"/>
</figure>
Diagnostic downscaling of simulated flood depth from coarse-resolution CaMa-Flood outputs to finer spatial resolution using high-resolution topography.

### Model applications

CaMa-Flood has been widely used in a broad range of application studies that require a physically consistent representation of river hydraulics and floodplain inundation at regional to global scales. One major application is **flood risk and hazard assessment**, where CaMa-Flood is used to generate large-scale inundation depth and extent maps for present and future climate conditions, supporting assessments of population exposure, infrastructure risk, and climate change impacts. Owing to its ability to simulate water levels and floodplain storage explicitly, CaMa-Flood is also applied to **real-time and forecast-based flood prediction systems**, including continental-scale flood early warning frameworks driven by numerical weather prediction and hydrological forecasts. Beyond flood hazards, CaMa-Flood has been increasingly coupled with land surface, biogeochemical, and Earth system models, enabling applications in **Earth system and biogeoscience studies**, such as the analysis of surface water dynamics, wetland inundation, river–floodplain connectivity, and their roles in carbon and methane cycles. These diverse applications demonstrate that CaMa-Flood functions not only as a flood model, but also as a core river hydrodynamics component for integrated large-scale environmental modeling.


<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/floodrisk.png" alt="Flood hazard mapping with CaMa-Flood" width="80%"/>
</figure>
Example of flood hazard mapping using CaMa-Flood, showing present and future 100-year flood depth, and changes in flood depth and inundation extent.

### Representing human activities

In addition to natural hydrological processes, CaMa-Flood is designed to represent the impacts of **human activities** on large-scale river dynamics. The model incorporates **reservoir and dam operation schemes**, enabling the simulation of regulated river discharge and water level variations caused by human water management. This capability allows CaMa-Flood to assess how dam operations influence downstream flood peaks, seasonal flow regimes, and floodplain inundation. Furthermore, CaMa-Flood can implicitly account for **river embankments and levees** through sub-grid floodplain topographic parameterization, which modifies the relationship between water level and inundated area. By representing both natural and human-modified river systems within a unified hydrodynamic framework, CaMa-Flood provides a powerful tool for evaluating the combined effects of climate change and human interventions on flood risk, water resources, and river–floodplain systems.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/levee.png" alt="Flood hazard mapping with CaMa-Flood" width="80%"/>
</figure>
Representation of levees in CaMa-Flood

---

## Download CaMa-Flood

**How to obtain the model and data**

1. Register via the Google Form (license agreement)
2. Receive the password by email
3. Access the download page.

### Registration for Download

Please complete the  
[**Google Form for registration and license agreement**](https://forms.gle/bhq1qWqybeAk157v9).  
The password for downloading the package will be sent to you by email after registration.

Alternatively, you may contact the developer directly to request access:

- **Dai Yamazaki** yamadai [at] iis.u-tokyo.ac.jp

---

### Download model and data

The CaMa-Flood model and related data can be downloaded from  
[**CaMa-Flood download page (Dropbox)**](https://www.dropbox.com/scl/fo/4qkx4aqb2650yswju8bm8/ANyZbI6Bp92goAMARrTMDDw?rlkey=8cejno2qo0ff74mfmd3zunsfv&st=8g0r4ua0&dl=0).

**Note:**  
*Due to temporary issues with the original web server, the CaMa-Flood model and data are currently distributed via Dropbox.*  
*When prompted for access, please enter **only the password** provided in the registration email; the username is not required.*

---

## Contents of the download page

The following packages and datasets are available on the download page.


### CaMa-Flood package (v4.20)

The CaMa-Flood package provides the **model source code**, **basic river map data**,  
and **sample input datasets** required to run CaMa-Flood simulations.

The following archive is available from the Dropbox download page (see above):

- **`cmf_v420_pkg_20240430.tar.gz`**  
  The main CaMa-Flood package, including:
  - Model source code
  - Basic river map data
  - Sample input data and configuration files
  - Documentation and notes

After extraction, river map data included in the package are stored under the `map/` directory.

---

### CaMa-Flood river topography maps

The following river topography map archives are available from the download page.  
These datasets are based on **MERIT Hydro** and are used to construct river networks and  
sub-grid river and floodplain topography in CaMa-Flood.

Each archive should be extracted into the `map/` directory.

#### Global river maps

- **`glb_15min.tar.gz`**  
  Global river map at **15-minute** spatial resolution.

- **`glb_06min.tar.gz`**  
  Global river map at **6-minute** spatial resolution.

- **`glb_05min.tar.gz`**  
  Global river map at **5-minute** spatial resolution.

- **`glb_03min.tar.gz`**  
  Global river map at **3-minute** spatial resolution.

- **`glb_01min.tar.gz`**  
  Global river map at **1-minute** spatial resolution.  
  This dataset includes high-resolution topographic information used for floodplain parameterization.

Each global map archive contains:
- River network topology
- River channel and floodplain topographic parameters
- Associated auxiliary data required for CaMa-Flood simulations

#### Japan river maps (J-FlwDir based)

High-accuracy river maps for Japan, based on **J-FlwDir**, are also provided.

- **`jpn_03min.tar.gz`**  
  Japan river map at **3-minute** spatial resolution.

- **`jpn_01min.tar.gz`**  
  Japan river map at **1-minute** spatial resolution.

These datasets are intended for regional-scale simulations over Japan and should also be  
extracted into the `map/` directory.

**Note:**  
River maps are identical among CaMa-Flood v4.0, v4.1, and v4.2.
A bug in bifurcation maps (glb_06min / glb_03min) was fixed in 2025-07-19. See *Version history* for details.


---

## CaMa-Flood GitHub repository
The code/script of CaMa-Flood v4 is available at:

- [CaMa-Flood_v4 GitHub repository](https://github.com/global-hydrodynamics/CaMa-Flood_v4)

NOTE: GitHub is for expert users who want to contribute to development.  
For general users, we recommend using the CaMa-Flood package below.


---

## CaMa-Flood GPU implementation

A **GPU-accelerated version of CaMa-Flood (CaMa-Flood GPU)** has been developed to enable highly scalable global and continental-scale river hydrodynamics simulations.  
By leveraging GPU-based parallelization, CaMa-Flood GPU significantly reduces computational cost while preserving the physical consistency of the original CaMa-Flood framework. This advancement makes it feasible to conduct large-ensemble simulations, high-resolution global flood modeling, and near-real-time applications that were previously computationally prohibitive on CPU-based systems.

The model design, implementation details, and performance benchmarks of CaMa-Flood GPU are described in the following preprint:

### Reference and resources

- Kang, S., Yin, J., & Yamazaki, D. (2026).  
  **CaMa-Flood-GPU: A GPU-based hydrodynamic model implementation for scalable global simulations.**  
  *ESS Open Archive*, January 09, 2026.  
  <https://doi.org/10.22541/essoar.176442648.85093032/v3>

The CaMa-Flood-GPU source code and related materials are archived on Zenodo:

- **CaMa-Flood-GPU (Zenodo archive)**  
  <https://zenodo.org/records/18137445>

---



## River gauge allocation tool

A dedicated tool is provided to **robustly allocate river gauges and reservoirs onto MERIT Hydro and CaMa-Flood river networks**, enabling consistent and reliable model–observation comparison.  
Because direct allocation onto coarse-resolution global river maps is often ambiguous, the tool adopts a **two-step, semi-automated strategy**: river gauges are first allocated onto a high-resolution river network (30″ MERIT Hydro for global applications or 5″ J-FlwDir for Japan), and are then re-allocated onto the target CaMa-Flood river map. The allocation algorithm jointly considers **geographical location errors and upstream drainage area consistency**, allowing it to identify the most plausible river pixel even when reported gauge metadata contain uncertainties. Automatic allocation is complemented by **manual quality control and visual inspection**, reflecting the reality that gauge information and river maps are not error-free. The tool supports discharge gauges, water level gauges, and reservoirs (e.g., GRDC, MLIT, GRanD), and explicitly accounts for **sub-grid gauge locations** within CaMa-Flood unit catchments, which is essential for accurate comparison of simulated discharge and water level. This semi-automated yet transparent approach has been extensively used in global and regional CaMa-Flood applications and provides a practical balance between robustness, flexibility, and reproducibility.

### Gauge Allocation Package

A package containing source code, map data, and documentation is available in the download page.

- Latest version: **AllocRiverGauge v1.2 (2024.11.22)** 
- AllocRiverGauge_v1.2_20241122.tar.gz`

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/allocation.png" width="80%"/>
</figure>
River gauge allocation

---

## CaMa-Flood community

CaMa-Flood is supported by an active international community of developers and users.  
In addition to model development and data distribution, we regularly organize community events to share progress, exchange technical knowledge, and discuss future directions of the model.

### CaMa-Flood Annual Briefing

The **CaMa-Flood Annual Briefing** is a yearly community event that summarizes  
**research achievements and model developments related to CaMa-Flood**.

The briefing features short presentations by contributors, and the outcomes are compiled as an  
**Annual Progress Report (PDF)** together with **recorded presentation videos**.

Detailed information, including schedules, registration, and materials from previous briefings,  
is available on the  
[CaMa-Flood Annual Briefing webpage]({{ site.baseurl }}/cmf-annual-brief/).

---

### CaMa-Flood Developer/User International Meeting

The **CaMa-Flood Developer/User International Meeting** is an in-person meeting organized  
approximately every two years, focusing on **in-depth technical discussions**,  
model development strategies, and future research directions.

Information on past and upcoming meetings is available on the dedicated event webpages:

- [CaMa-Flood Developer/User Meeting 2024]({{ site.baseurl }}/cmf-meet-2024/)
- Details of future meetings will be announced on the CaMa-Flood website.

### CaMa-Flood user mailing list

We maintain a **CaMa-Flood user mailing list** to facilitate communication among developers and users.

The mailing list is used to share:
- Model updates and new releases
- Announcements of community events and meetings
- Questions, tips, and discussions among users

User-to-user discussions and exchanges of experience are highly encouraged.

If you would like to join the mailing list, please use one of the following methods:

- Join directly via the Google Groups page:  
  <https://groups.google.com/g/cama-flood-user>

- Register via the Google Form:  
  <https://forms.gle/ziBMvBsPREcTkrDX7>

- Or contact the developer directly by email:  
  **Dai Yamazaki**  yamadai [at] iis.u-tokyo.ac.jp

<img src="{{ site.url }}{{ site.baseurl }}/images/picture/cmf-meet2024.jpg" width="80%"/>

---

## License to use CaMa-Flood model
CaMa-Flood is distributed under the licenses below.

- **Model package:** contains both data and code; please follow the license for each component.
- **Model source code:** hydrodynamic calculation codes are distributed under the  
  [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
- **Basic map data:** basic river map (without 3″ & 15″ data) is distributed under the  
  [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
- **Advanced maps with 3″ & 15″ data:** advanced river map (with 3″ data) can be shared upon request (special agreement depending on the purpose of use). Please contact the developer.

### Need Help?

Even though the CaMa-Flood model is provided free of charge, it does not mean support for model usage is also free.  
If you request help with installing/running/analyzing CaMa-Flood, proper consideration is requested to compensate developers’ time spent for the support. Co-authorship in publications is ideal, but acknowledgement in journal papers is adequate for small help.

I (Developer: Dai Yamazaki) am always happy to launch collaborative research. If you want to discuss results obtained from CaMa-Flood simulations with model developers, please feel free to invite me to your research team.

---

## References / Related Papers

### Overall description

- Advancing global river hydrodynamics simulations by catchment-based macro-scale floodplain modeling approach  
  Dai Yamazaki  
  *Geoscience Letters, 12, 72*  
  <https://doi.org/10.1186/s40562-025-00452-z>  


- A physically-based description of floodplain inundation dynamics in a global river routing model  
  Dai Yamazaki, Shinjiro Kanae, Hyungjun Kim, & Taikan Oki  
  *Water Resour. Res. 47, W04501*  
  <https://doi.org/10.1029/2010WR009726>


### Model physics

- Analysis of the water level dynamics simulated by a global river model: A case study in the Amazon River  
  Dai Yamazaki, Hyongki Lee, Douglas E. Alsdorf, Emanuel Dutra, Hyungjun Kim, Shinjiro Kanae, & Taikan Oki  
  *Water Resour. Res., 48, W09508*  
  <https://doi.org/10.1029/2012WR011869>

- Improving computational efficiency in global river models by implementing the local inertial flow equation and a vector-based river network map  
  Dai Yamazaki, Gustavo A. M. de Almeida, & Paul D. Bates  
  *Water Resour. Res., 49(11), 7221–7235*  
  <https://doi.org/10.1002/wrcr.20552>

- Regional flood dynamics in a bifurcating mega delta simulated in a global river model  
  Dai Yamazaki, Tomoko Sato, Shinjiro Kanae, Yukiko Hirabayashi, & Paul D. Bates  
  *Geophys. Res. Lett., 41, 3127–3135*  
  <https://doi.org/10.1002/2014GL059774>

- Developing a Levee Module for Global Flood Modeling With a Reach-Level Parameterization Approach  
  Gang Zhao, Dai Yamazaki, Yoshiaki Tanaka, Xudong Zhou, Shuping Li, Yang Hu, Yukiko Hirabayashi, Jeff Neal, & Paul D. Bates  
  *Water Resour. Res., 61, e2024WR039790*  
  <https://doi.org/10.1029/2024WR039790>

- Development of a Reservoir Flood Control Scheme for Global Flood Models  
  Risa Hanazaki, Dai Yamazaki, & Kei Yoshimura  
  *J. Adv. Model. Earth Syst., 14(3), e2021MS002944*  
  <https://doi.org/10.1029/2021MS002944>

- CaMa-Flood-GPU: A GPU-based hydrodynamic model implementation for scalable global simulations.  
  Kang, S., Yin, J., & Yamazaki, D. (2026).  
  *ESS Open Archive*, January 09, 2026.  
  <https://doi.org/10.22541/essoar.176442648.85093032/v3>


### Baseline datasets

- A high-accuracy map of global terrain elevations  
  Dai Yamazaki, Daiki Ikeshima, Ryunosuke Tawatari, Tomohiro Yamaguchi, Fiachra O'Loughlin, Jeff C. Neal, Christopher C. Sampson, Shinjiro Kanae, & Paul D. Bates  
  *Geophys. Res. Lett., 44, 5844–5853*  
  <https://doi.org/10.1002/2017GL072874>

- MERIT Hydro: A high-resolution global hydrography map based on latest topography datasets  
  Dai Yamazaki, Daiki Ikeshima, Javier Sosa, Paul D. Bates, Guy H. Allen, & Tamlin M. Pavelsky  
  *Water Resour. Res., 55, 5053–5073*  
  <https://doi.org/10.1029/2019WR024873>




---

## Version history

### Note on map update (20250719)
There was a bug in the bifurcation map (`bifori.txt`) in `glb_06min` and `glb_03min`.

- In `glb_06min`, bifurcation channels in a part of South America were missing (**S30–S25, W065–W060**).
- In `glb_03min`, bifurcation channels in a part of Africa were missing (**S25–S20, E020–E025**).

Corrected maps are now distributed on this webpage.

### Major update in v4.2
- Reservoir operation scheme as a default option

### Major update in v4.1
- MPI/OpenMP hybrid parallelization  
- Single precision mode

### Major update in v4.0 (compared to v3.6)
- Baseline topography updated (now based on **MERIT Hydro**; Yamazaki et al. 2019)
- FLOW upscaling algorithm updated (in prep)
- Model core dynamics is almost similar to the previous version (v3.6)
- More flexible code structure for model coupling
