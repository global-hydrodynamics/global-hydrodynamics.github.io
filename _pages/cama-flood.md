---
title: "CaMa-Flood"
layout: pagelay
sitemap: false
permalink: /CaMa-Flood/
---

# CaMa-Flood: Global River Hydrodynamics Model
**Last update:** 22 Nov, 2024
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

<iframe width="560" height="315"
  src="https://www.youtube-nocookie.com/embed/cH3unJIJ0Ig?controls=1&loop=1&playlist=cH3unJIJ0Ig"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen></iframe>

Hydrodynamic simulation by CaMa-Flood (v4.0).  
Calculation at 0.1-degree resolution; flood depth is diagnostically downscaled to 90 m resolution DEM.  
Simulation with new topography (v4.0, right) compared to old topography (v3.6 replicate, left).

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


## River gauge allocation tool

A tool to allocate river gauges on MERIT Hydro and CaMa-Flood river maps is available.  
Allocation consists of two steps: (1) allocation on 30″ MERIT Hydro, and (2) allocation on CaMa-Flood river map.

A package containing source code, map data, and documentation is available in the download page.

- Latest version: **AllocRiverGauge v1.2 (2024.11.22)** 
- AllocRiverGauge_v1.2_20241122.tar.gz`

---

## Model Description

### Overall framework
The CaMa-Flood model is a global-scale distributed river model driven by runoff forcing from a land surface model.  
Water storage at each grid cell is the only prognostic variable; other variables (water level, inundated area, discharge, velocity) are diagnosed from storage at each time step. Storage evolution is solved by calculating discharge between each grid cell and the next downstream cell along a prescribed river network. River discharge and flow velocity are estimated by the local inertial equation.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/rivmap.jpg" alt="River Network Map">
</figure>
Figure 1: River Network Map.

To represent floodplain inundation, river channel and floodplain topography are represented by sub-grid-scale topographic parameters. Ground elevation (Z), unit-catchment area (Ac), channel length (L), and floodplain elevation profile are derived from fine-resolution flow direction maps and DEMs using the FLOW method. The floodplain elevation profile describes the relationship between water level and inundated area and is created by calculating the cumulative distribution function (CDF) of the height of each fine-resolution pixel above the nearest downstream river channel pixel within each unit-catchment.

Channel cross section parameters (channel width W and depth B) are derived empirically as a function of river discharge due to the lack of global-scale observations.

<figure class="figure">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/cama-flood/topo.jpg" alt="Sub-grid Topographical Parameters">
</figure>
Figure 2: Sub-grid Topographical Parameters.

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
