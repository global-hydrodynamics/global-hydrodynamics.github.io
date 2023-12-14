---
title: "Yamazaki Lab - Game"
layout: pagelay
excerpt: "Yamazaki Lab -- Game"
permalink: /game/
---

# Rainfall-runoff modelling game on *Scratch*

#### Learn hydrological processes through game!
The mechanisms of water dynamics through rainfall on land to water outflow to rivers is called  **rainfall-runoff process.** We have created a **rainfall-runoff modeling game** that allows you to enjoyably learn this process through simulation.

Please change the surface conditions of the rainfall-runoff model and match the simulated runoff patterns to the "targets" runoff pattern in this game.

Let's learn about the rainfall-runoff process through playing the game. Press the green flag button to start the game. (Note: Sound will be played.)


<iframe src="https://scratch.mit.edu/projects/864115525/embed" allowtransparency="true" width="720" height="460" frameborder="0" scrolling="no" allowfullscreen></iframe>

### Rules and How to Play
#### 1. Game Objective
The game represents various processes through rainfall in the river basin to runoff as the movement of water particles in animation.

- When you start the game, the time variation of **precipitation** is displayed as a light blue graph. During the simulation, rain fall happens following the intensity shown in this graph.
- When the rain reaches the ground, it becomes water particles and moves within the basin. The movement of water particles is influenced by the state of the land surface.
- When water particles reach the river, it becomes **runoff**. The goal of the game is to adjust the surface conditions to make the simulated runoff time variation similat to the target graph shown in blue.

*Note: The time variation graph of precipitation is called "Hyetograph," and the time variation graph of runoff is called "Hydrograph."*


<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig01.jpg" width="50%"/>

#### 2. Setting Land Surface Conditions
Before starting the simulation, you can change the land surface parts indicated by the pink arrows in the screen by clicking (or tapping).

- You can change the land surface type of the four locations from upstream to downstream. You can choose from three land types: forest, grassland, and urban area. The movement of water particles varies for each type.
- You can also change the initial state of **soil wetness**. The initial state of soil wetness can be set in the range of 0 to 100. 0 represents a dry soil condition, and 100 represents a completely wet and saturated soil condition.

Compare the hyetograph and hydrograph and try to find optimal land surface conditions to get a high score.

#### 3. Running the Simulation
After setting the land surface conditions, Push the "Click to Start Simulation" button to start the simulation.

During the simulation, you cannot make any changes, so observe how water particles move.

- Some of the rainfall does not contribute to runoff and becomes rainfall loss due to evaporation and transpiration.
- Some of the water particles that reach the ground flow on the land surface, while others infiltrate into the ground.
- In the subsurface, water particles move slowly, and some are absorbed by the soil.



<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig02.jpg" width="50%"/>

#### 4. Simulation Results and Score
The time series data of the simulated runoff amount is displayed in pink.

The score is calculated based on the similarity between the simulated runoff amount and the target runoff amount shown in blue. The highest score is 100 points.

Analyze the differences between the target and simulation, adjust the surface conditions through trial and error, and aim for a score of 90 or higher.

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig03.jpg" width="50%"/>

#### 5. Stage Selection
Three stages are prepared with different patterns of rainfall and target runoff patterns. Aim for 90 points or higher score in each stage. Please considering how surface type and soil moisture affect the rainfall-runoff process.

- Why does urbanization enhances floods?
- How does the movement of water differ in urban areas, grasslands, and forests?
- What impact does afforestation have on floods?
- How does the runoff change if the soil is wet at the start of rainfall event?
- How does the time lag until the river level rises differ when it rains in upstream and downstream areas?


<p> &nbsp; </p>
<p> &nbsp; </p>

### Hints for Solving the Game
If you're unsure how to clear a stage, here are some hints that may be helpful. Click to reveal the hint.

#### Stage-1
<div onclick="obj=document.getElementById('open1').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 1</a>
</div>
<div id="open1" style="display:none;clear:both;">
Start by running the simulation without changing the surface conditions from the initial state. Analyze the differences between the simulated runoff and the target runoff, focusing on the flood peaks of the blue and pink hydrographs. Observe whether the simulated results are larger or smaller, and slower or faster than the target. Then, gradually change the conditions in the simulation to understand how to adjust the surface conditions to make the flood peak approach the target while deepening your understanding.
</div>

#### Stage-2
<div onclick="obj=document.getElementById('open2').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 2</a>
</div>
<div id="open2" style="display:none;clear:both;">
The basic approach is similar to Stage-1. When is the peak runoff smaller and slower in relation to the peak of rainfall? Repeat simulations by changing the surface conditions to get closer to the correct answer. Also, pay attention to both surface type and initial soil moisture values.
</div>

#### Stage-3
<div onclick="obj=document.getElementById('open3').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 3</a>
</div>
<div id="open3" style="display:none;clear:both;">
This is a more challenging problem. Pay attention to the fact that although there is only one peak of rainfall, the runoff peak is divided into two.

First, think about how to create the "first runoff peak" that increases immediately after the start and then decreases quickly. Next, consider how to make the "second runoff peak" larger than the first. 
</div>

<p> &nbsp; </p>
<p> &nbsp; </p>

### Explanation of the Rainfall-Runoff Modeling Game

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig04.jpg" width="75%"/>

#### Representing complex processes through animation
The rainfall-runoff process involves various phenomena at multiple scales, such as obstruction by vegetation and buildings, infiltration into the soil, surface runoff and subsurface flow, and water movement in the soil. It is a very complex process.

The developed rainfall-runoff modeling game aims to make the understanding of these complex phenomena more accessible by visually illustrating the main

#### Enjoy trial and error in the game to understand the process
This game aims to deepen the player's understanding of the rainfall-runoff process by allowing them to think and repeatedly simulate changes in surface conditions. Through striving for a higher score, players not only learn the relationship that urbanization increases floods but also understand the underlying mechanism.

#### Explore the joy of creating games
The rainfall-runoff modeling game was developed using the educational programming language Scratch. The source code is publicly available on Scratch. In addition to understanding how the game works, you can add surface types or create more challenging stages.

[Access the source code published on Scratch](https://scratch.mit.edu/projects/864115525/)<br><br>

If you have ideas for interesting stages and would like to share them, please contact Professor Yamazaki. His email address is provided at the bottom of the page.<br><br>

#### For those who want to know more: Please read the description paper
The development of the rainfall-runoff modeling game has been presented as an academic paper in Journal of Japan Society of Hydrology and Water Resources (to be published soon). The paper explains the background of the development, the elements considered in the rainfall-runoff model, and the educational effectiveness of the game.

*Dai Yamazaki, Minami Okada, and Hiroshi Yazawa (2023, accepted) <br>
Development of Rainfall-Runoff Modeling Game using the Educational Programming Language Scratch, and its Potential for Hydrological Education<br>
Journal of Japan Society of Hydrology and Water Resources (Online version to be published soon)*

<p> &nbsp; </p>
<p> &nbsp; </p>

### Using the Game for Education/Research, etc.

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig05.jpg" width="35%"/>

The Developed rainfall-runoff modeling game is released under the Creative Commons: [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/) license and can be freely used. Below are some simple guidelines:

- If you want to use the rainfall-runoff game for school education or university open campus events, feel free to use it with proper attribution. While not mandatory, it would be appreciated if you could inform us via email when using it.
  * Attribution method: Explicity state that the game is "Developed by Yamazaki Laboratory, Institute of Industrial Science, The University of Tokyo". If possible, include the webpage information "UTokyo-IIS Yamazaki Lab: [https://global-hydrodynamics.github.io/scratch_game/](https://global-hydrodynamics.github.io/scratch_game/)."
- If you plan to conduct research activities using this game, such as demonstrating educational effectiveness , please contact us by email in advance. (We welcome collaborative research.)
- If you wish to develop educational tools or research tools based on this game, please consult with us via email. (We are looking for collaborators and partners for joint development.)

For any inquiries regarding the rainfall-runoff modeling game, including the ones mentioned above, please contact Professor Yamazaki by email.

*Dai Yamazaki (Associate Professor, Institute of Industrial Science, University of Tokyo) <br>
Email: yamadai [at] iis.u-tokyo.ac.jp*

<p> &nbsp; </p>
