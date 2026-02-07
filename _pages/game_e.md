---
title: "Yamazaki Lab - Game"
layout: pagelay
permalink: /game_e/
---

# **SplashTune!**

(Scratch-based PLAyble Simulator for Hydrograph Tuning)


[Japanese version is here](../game/)

#### Learn hydrological processes through a game!
The mechanisms of water dynamics through rainfall on land to water runoff to rivers is called  **rainfall-runoff process.** We have created **"SplashTune"** a rainfall-runoff modeling game that allows you to enjoyably learn this process through simulation.

Please change the surface conditions of the rainfall-runoff model and match the simulated runoff patterns to the "targets" runoff pattern.

Let's learn about the rainfall-runoff process through playing the game. Press the green flag button to start the game. 



<iframe src="https://scratch.mit.edu/projects/1194996537/embed" allowtransparency="true" width="720" height="460" frameborder="0" scrolling="no" allowfullscreen></iframe>
SplashTune (v2.3)<br>
[Access to source code on Scratch webpage: https://scratch.mit.edu/projects/1194996537](https://scratch.mit.edu/projects/1194996537/)<br> 

### Rules and How to Play
#### 1. Game Objective
The game represents various processes through rainfall in the river basin to runoff as the movement of water particles in animation.

- When you start the game, the time variation of **precipitation** is displayed as a light blue graph. During the simulation, rain fall happens following the intensity shown in this graph.
- When the rain reaches the ground, it becomes water particles and moves on land. The movement of water particles is influenced by the state of the land surface.
- When water particles reach the river, it becomes **runoff**. The goal of the game is to adjust the surface conditions to make the simulated runoff time variation similar to the target graph shown in blue.

*Note: The time variation graph of precipitation is called "Hyetograph," and the time variation graph of runoff is called "Hydrograph."*


<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig01e.jpg" width="50%"/>

#### 2. Setting Land Surface Conditions
Before starting the simulation, you can change the land surface parts indicated by the pink arrows in the screen by clicking (or tapping).

- You can change the land surface type of the 2 locations from upstream to downstream  (4 locations after stage 5). You can choose from three land types: forest, grassland, and urban area. The movement of water particles varies for each type.
- You can also change the initial state of **soil wetness**. 0 represents a dry soil condition, and 100 represents a completely wet and saturated soil condition. The soil wetness influences the movement of water particle.

Compare the hyetograph and hydrograph and try to find optimal land surface conditions to get a high score.

#### 3. Running the Simulation
After setting the land surface conditions, Click "Start Simulation" button to start the simulation.

During the simulation, you cannot make any changes, so observe how water particles move.

- Some of the rainfall does not contribute to runoff and becomes rainfall loss due to evaporation and transpiration.
- Some of the water particles that reach the ground flow on the land surface, while others infiltrate into the ground.
- In the subsurface, water particles move slowly, and some are absorbed by the soil.



<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig02.jpg" width="50%"/>

#### 4. Simulation Results and Score
The time series data of the simulated runoff amount is displayed as a pink graph.

The score is calculated based on the similarity between the simulated runoff amount and the target runoff amount shown in blue. The highest score is 100 points.

Analyze the differences between the target and simulation, adjust the surface conditions through trial and error. **Aim for a score of 90 or higher. Perfect score is 100!**.

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig03.jpg" width="50%"/>

#### 5. Stage Selection
You can try many stages with different patterns of rainfall and target runoff patterns. Aim for 90 points or higher score in each stage. Please consider how surface type and soil moisture affect the rainfall-runoff process.

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
First, let's check how the game works. After you start the game with the green flag, press the "Start Simulation" button. If the blue Target and the pink Simulation are similar, you will get a high score.
</div>

#### Stage-2
<div onclick="obj=document.getElementById('open2').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 2</a>
</div>
<div id="open2" style="display:none;clear:both;">
First, let's run a simulation without changing the initial land surface conditions, and analyze the difference between the calculated runoff volume and the target.

Focus on the flood peaks in the blue and pink hydrographs and check whether the calculation results are larger/smaller, slower/earlier than the target. Next, repeat the simulation by gradually changing the land surface conditions, and get closer to the target while deepening your understanding of how to change the ground surface conditions to bring the flood peak closer to the target.
</div>

#### Stage-3
<div onclick="obj=document.getElementById('open3').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 3</a>
</div>
<div id="open3" style="display:none;clear:both;">
The basic approach is the same as Stage-2. The peak of runoff is much smaller than the peak of rainfall. What kind of land surface condition should we change to reduce the amount of runoff? Repeat the simulation with different land surface conditions to get closer to the correct answer.

It may be a good idea to pay attention not only to the land surface type but also to the initial soil moisture value.
</div>

#### Stage-4
<div onclick="obj=document.getElementById('open4').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 4</a>
</div>
<div id="open4" style="display:none;clear:both;">
The rainfall pattern is the same as Stages 2-3, but the target runoff pattern is different. The timing of the flood peak is later than Stage-2, and the flood peak magnitude is larger than Stage-3. Focus on the timing and magnitude of the flood peak to find the correct answer.
</div>

#### Stage-5
<div onclick="obj=document.getElementById('open5').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 5</a>
</div>
<div id="open5" style="display:none;clear:both;">
From Stage-5 onwards, the number of land surface tiles increases to four, and the initial soil moisture value is in 20% increments, making the game more difficult.

First, adjust the land surface conditions so that the first large peak in runoff is reproduced. After that, adjust so that the second peak matches up to get a high score.
</div>

#### Stage-6
<div onclick="obj=document.getElementById('open6').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Hint 6</a>
</div>
<div id="open6" style="display:none;clear:both;">
This is a difficult problem. Notice that while there is one rainfall peak, the runoff peak is divided into two, and the second peak is larger. The rain pattern is the same as in Stage-5.

First, think about how to create the "first runoff peak" where the runoff increases immediately after the start and then immediately drops. Next, think about how to make the "second runoff peak" larger than the first one.
</div>

<p> &nbsp; </p>
<p> &nbsp; </p>

### Explanation of **SplashTune** rainfall-runoff modeling game

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig04e.jpg" width="50%"/>

#### Representing complex processes through animation
The rainfall-runoff process involves various phenomena at multiple scales, such as obstruction by vegetation and buildings, infiltration into the soil, surface runoff and subsurface flow, and water movement in the soil. It is a very complex process. The below rainfall-runoff processes are considered in the game.

<div onclick="obj=document.getElementById('Process').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ Show Considered Processes (Hint for the problem)</a>
</div>
<div id="Process" style="display:none;clear:both;">
- Temporal and spatial distribution of rainfall
- Loss of rainfall due to interception by vegetation and buildings (some of the rain that falls on land evaporates or is retained, not contributing to runoff)
- Infiltration from the ground surface to the soil (some of the rainfall infiltrates into the soil and moves relatively slowly within the soil)
- Influence of surface conditions on runoff (different surface conditions such as forests, grasslands, and urban areas affect how rainfall loss and infiltration occur)
- Difference between surface flow and subsurface flow (water tends to flow relatively quickly on the surface, but flow slows within the soil)
- Moisture retention by the soil and its influence on subsurface flow  (dry soil tends to retain more moisture)
- Formation of subsurface flow by bedrock (water movement in rock is restricted, leading to lateral water movement above it)
</div>


#### Enjoy trial and error in the game to understand the process
This game aims to deepen the player's understanding of the rainfall-runoff process by allowing them to think and repeatedly simulate changes in surface conditions. Through striving for a higher score, players not only learn the relationship that urbanization increases floods but also understand the underlying mechanism.

#### Explore the joy of creating games
The rainfall-runoff modeling game was developed using the educational programming language Scratch. The source code is publicly available on Scratch. In addition to understanding how the game works, you can add surface types or create more challenging stages.

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig05e.jpg" width="50%"/>

Access the **SplashTune** source code published on Scratch
- [Latest v2.3 (https://scratch.mit.edu/projects/1194996537)](https://scratch.mit.edu/projects/1194996537)<br> 
- [Simple v1.1 (https://scratch.mit.edu/projects/864115525/)](https://scratch.mit.edu/projects/864115525/)<br><br>

If you have ideas for interesting stages and would like to share them, please contact Professor Yamazaki. His email address is provided at the bottom of the page.<br><br>

#### For those who want to know more: Please read the description paper
The development of the rainfall-runoff modeling game has been presented as an academic paper in Journal of Japan Society of Hydrology and Water Resources (to be published soon). The paper explains the background of the development, the elements considered in the rainfall-runoff model, and the educational effectiveness of the game.

*Dai Yamazaki, Minami Okada, and Hiroshi Yazawa (2024) <br>
Development of Rainfall-Runoff Modeling Game using the Educational Programming Language Scratch, and its Potential for Hydrological Education<br>
Journal of Japan Society of Hydrology and Water Resources, Vol 37(2), doi: 10.3178/jjshwr.37.1826*<br>
[https://doi.org/10.3178/jjshwr.37.1826](https://doi.org/10.3178/jjshwr.37.1826)

Note: This paper is based on the initial version v1.0.

<p> &nbsp; </p>
<p> &nbsp; </p>

### Using the Game for Education/Research, etc.

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig06.jpg" width="35%"/>

The **SplashTune** rainfall-runoff modeling game is released under the Creative Commons: [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/) license and can be freely used. Below are some simple guidelines:

- If you want to use **SplashTune** for school education or university open campus events, feel free to use it with proper attribution. While not mandatory, it would be appreciated if you could inform us via email when using it.
  * Attribution method: Explicitly state that the game is "Developed by Yamazaki Laboratory, Institute of Industrial Science, The University of Tokyo". If possible, include the webpage information "UTokyo-IIS Yamazaki Lab: [{{ site.url }}{{ site.baseurl }}/game_e/]({{ site.url }}{{ site.baseurl }}/game_e/)."
- If you plan to conduct research activities using **SplashTune**, such as demonstrating educational effectiveness , please contact us by email in advance. (We welcome collaborative research.)
- If you wish to develop educational tools or research tools based on **SplashTune**, please consult with us via email. (We are looking for collaborators and partners for joint development.)

For any inquiries regarding **SplashTune** rainfall-runoff modeling game, including the ones mentioned above, please contact Professor Yamazaki by email.

*Dai Yamazaki (Associate Professor, Institute of Industrial Science, University of Tokyo) <br>
Email: yamadai [at] iis.u-tokyo.ac.jp*

<p> &nbsp; </p>
