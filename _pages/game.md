---
title: "Yamazaki Lab - Game"
layout: pagelay
permalink: /game/
---

# **SplashTune!**

(Scratch-based PLAyble Simulator for Hydrograph Tuning)

[English version is here](../game_e/)

#### 降雨-流出プロセスをゲームで学ぼう！
雨が降ってから河川に水が流れ出るまでの仕組みを「降雨-流出プロセス」と言います。<br>
その仕組みをシミュレーションで楽しく学べる**降雨-流出モデリングゲーム「SplashTune」**を作りました。

降雨-流出モデルの地表面状態を変えて、シミュレーションされる流出パターンを「ターゲット」に合わせるゲームです。

ゲームをプレイしながら、降雨-流出プロセスを学んでみましょう。<br>
緑旗のボタンを押すとゲームがスタートします。

<iframe src="https://scratch.mit.edu/projects/1104059304/embed" allowtransparency="true" width="720" height="460" frameborder="0" scrolling="no" allowfullscreen></iframe>
SplashTune (v2.2)<br>
[Scratchのソースコードにアクセスする:  https://scratch.mit.edu/projects/1104059304/](https://scratch.mit.edu/projects/1104059304/)<br> 

### ルールと遊びかた
#### 1. ゲームの目的
河川流域に降った雨が、河川に流出するまでの様々なプロセスを水粒子の動きとしてアニメーションで表現しています。

- ゲームをスタートすると、**降水量（Precipitation）** の時間変化が水色のグラフとして表示されます。シミュレーション中は、このグラフで示された強度の雨が降ってきます。
- 雨が地表面に到達すると水粒子となって流域内を移動します。水粒子の動き方は、地表面の状態によって様々な影響を受けます。
- 水粒子が河川に到達すると**流出（Runoff）** となります。シミュレーションされる流出量の時間変化が、青色で示されたグラフに近づくように地表面状態を設定するのがこのゲームの目的です。

※降水量の時間変化グラフを「ハイエトグラフ」、流出量の時間変化グラフを「ハイドログラフ」と言います。

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig01.jpg" width="50%"/>

#### 2. 地表面状態の設定
シミュレーションを開始する前に、画面中のピンク色矢印で示された部分をクリック（またはタップ）することで変更できます。

- 上流から下流の2箇所（Stage 5以降は4箇所）の**地表面タイプ** を変更できます。森林・草地・都市の３つが選択できます。それぞれのタイプで、土壌への浸み込み方や水粒子の動き方が変わります。
- **土壌水分（Soil Wetness）** の初期状態も変更できます。0が土壌が乾いた状態。100が土壌が完全に湿って飽和した状態です。土壌水分も地中の水粒子の動きに影響します。

ハイエトグラフとハイドログラフを見比べて、最適な地表面状態を予想してください。

#### 3. シミュレーションの実行
地表面状態の設定が終わった後に「Start Simulation」ボタンを押すとシミュレーションが始まります。

シミュレーション中は操作できないので、水粒子がどう動くかを観察してください。

- 降雨の一部は蒸発や蒸散などにより流出に寄与しない降雨損失になります。
- 地表面に到達した水粒子の一部は地表面を流れ、一部は地中に浸透します。
- 地中では水粒子はゆっくりと動き、一部は土壌に吸収されます。


<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig02.jpg" width="50%"/>

#### 4. シミュレーション結果とスコア
シミュレーションされた流出量の時系列データがピンク色で表示されます。<br>
青色のターゲット流出量とピンク色のシミュレーション流出量の類似度に基づいて、スコアが計算されます。スコアは100点満点で評価されます。

ターゲットとシミュレーションがどう違うかを分析して、より高いスコアが出せるよう、試行錯誤で地表面状態を調整しましょう。<br>
**目指せ90点以上！パーフェクトは100点！！**

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig03.jpg" width="50%"/>

#### 5. ステージ選択 
降雨とターゲット流出量のパターンが異なるステージが用意されています。それぞれのステージで90点以上を目指しながら、地表面タイプや土壌水分が降雨流出プロセスにどのような影響を与えるか考えてみましょう。

- 都市化すると洪水が起きやすくなるのはどうしてでしょうか？
- 都市・草地・森林で水の動きはどう異なるでしょうか？
- 森林が増えると、洪水にはどのような影響があるでしょうか？
- 降雨開始時点で土壌が湿っていると、流出の様子はどう変わるでしょうか？
- 上流と下流に雨が降る場合、河川水位が上がるまでのタイムラグはどう変わるでしょうか？

<p> &nbsp; </p>
<p> &nbsp; </p>

### 解き方のヒント
どうやってStageを攻略したらよいか分からない場合に参考になるヒントを用意しました。クリックすると表示されます。

#### Stage-1
<div onclick="obj=document.getElementById('open1').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント1を表示</a>
</div>
<div id="open1" style="display:none;clear:both;">
まずは、ゲームの内容を確認してみましょう。緑色の旗でゲームを開始したら、そのまま「Start Simulation」ボタンを押してみましょう。青色のターゲットとピンク色のシミュレーションが似ていれば高い点数がでます。
</div>

#### Stage-2
<div onclick="obj=document.getElementById('open2').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント2を表示</a>
</div>
<div id="open2" style="display:none;clear:both;">
まずは、地表面状態を初期状態から変更せずにシミュレーションして、計算された流出量とターゲットの違いを分析してみましょう。

青色とピンク色のハイドログラフの洪水ピークに着目して、計算結果がターゲットより大きいか/小さいか、遅いか/早いかを確認してみましょう。次に、少しずつ条件を変えたシミュレーションを繰り返して、地表面状態をどのように変えたら洪水ピークがターゲットに近づくかを理解を深つつ、ターゲットに近づけていきましょう。
</div>

#### Stage-3
<div onclick="obj=document.getElementById('open3').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント3を表示</a>
</div>
<div id="open3" style="display:none;clear:both;">
基本的な解き方はStage-2と一緒です。雨のピークに対して流出のピークがかなり小さくなっています。流出量を小さくするには、どのような地表面状態にすればよいでしょうか？地表面状態を変えたシミュレーションを繰り返して、正解に近づけていきましょう。

地表面タイプだけでなく、土壌水分の初期値にも着目してみると良いかもしれません。
</div>

#### Stage-4
<div onclick="obj=document.getElementById('open4').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント4を表示</a>
</div>
<div id="open4" style="display:none;clear:both;">
Stage 2-3と雨のパターンは一緒ですが、ターゲットの流出パターンが異なります。Stage-2と比べて洪水ピークのタイミングは遅く、Stage-3と比べると洪水ピークは大きくなっています。洪水ピークのタイミングと大きさに着目しながら、正解を探りましょう。
</div>

#### Stage-5
<div onclick="obj=document.getElementById('open5').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント5を表示</a>
</div>
<div id="open5" style="display:none;clear:both;">
Stage-5からは、地表面タイルの数が４つに増え難易度が上がります。

まずは、流出量の一つ目の大きいピークを再現できるように地表面状態を調節しましょう。その後で、２つ目のピークが合うように調整すると高得点を出せます。
</div>


#### Stage-6
<div onclick="obj=document.getElementById('open6').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ ヒント6を表示</a>
</div>
<div id="open6" style="display:none;clear:both;">
難しめの問題です。雨のピークは１つなのに流出ピークが２つに分かれていて、さらに２つ目のピークのほうが大きいことに着目しましょう。雨のパターンはStage-5と一緒です。

まず、開始直後に流出量が増えてからすぐ下がるという「１つ目の流出ピーク」を、どうすれば作ることができるか考えましょう。次に、「２つ目の流出ピーク」を１つ目より大きくするには、どう工夫すればいいかを考えてみましょう。
</div>

<p> &nbsp; </p>
<p> &nbsp; </p>


### 降雨-流出モデリングゲーム**SplashTune**の解説

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig04.jpg" width="50%"/>

#### 複雑なプロセスをアニメーションで表現
降雨-流出プロセスは、植生や建物による遮断・土壌への浸透・表面流出と地下流出・土壌中の水移動など、様々なスケールの複数の現象が相互作用するとても複雑なものです。このゲームでは、降雨-流出プロセスのうち、以下の要素を表現しています。

<div onclick="obj=document.getElementById('Process').style; obj.display=(obj.display=='none')?'block':'none';">
<a style="cursor:pointer;">▼ 考慮されているプロセスを表示する（問題のヒントになります）</a>
</div>
<div id="Process" style="display:none;clear:both;">
- 降雨の時間的・空間的な分布
- 植生や建物での遮断による降雨の損失（地表面に降った雨の一部は蒸発したり貯留されたりするため、流出に寄与しません）
- 地表から土壌への浸透（降雨の一部は土壌に浸透して、比較的ゆっくりと土中を移動します）
- 地表面状態が流出に及ぼす影響（森林・草地・都市など地表面状態が異なると、降雨損失や浸透の起こり方が変わります）
- 地表流れと地中流れの違い（地表では水は比較的速く流れますが、土中では流れが遅くなります）
- 土壌による水分保持と、土壌水分状態による地中の流れへの影響（乾いた土壌は、より多くの水分を保持しようとします）
- 基盤岩による地中流の形成（基盤岩には水が浸み込みにくいため、横方向への水移動が発生します）
</div>

<br><br>

#### ゲームで楽しく試行錯誤し、プロセスを理解する
このゲームは、プレイヤーが自ら考えて地表面状態を変えたシミュレーションを繰り返すことで、降雨流出のプロセスをより深く理解してもらうことを目指しています。

より高いスコアを目指してシミュレーションを繰り返すうちに、「都市化したら洪水が増える」という関係性を学ぶだけでなく、その背景にあるプロセスの理解も進むと考えています。<br><br>

#### ゲームを作る楽しさにも触れてみよう
**SplashTune**は、教育用プログラミング言語Scratchで開発されています。ソースコードはScratchで公開されています。ゲームが動く仕組みをのぞいてみるだけでなく、地表面タイプを追加したり、もっと難しいステージを作ったりできます。

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig05.jpg" width="50%"/>

Scratch で公開している**SplashTune**のソースコードにアクセスする。
- [最新版v2.1 (https://scratch.mit.edu/projects/1104059304)](https://scratch.mit.edu/projects/1104059304)<br> 
- [シンプル版v1.1 (https://scratch.mit.edu/projects/864115525/)](https://scratch.mit.edu/projects/864115525/)<br><br>

もし「面白いステージを思いついたので紹介したい」という場合は、開発者の山崎までご連絡ください。ページの一番下にメールアドレスが書いてあります。<br><br>

#### 論文でより詳しく知りたい
降雨-流出モデリングゲーム**SplashTune**の開発については、学術論文として水文・水資源学会に発表しています。開発の背景・降雨流出モデルで考慮している要素・ゲームの教育効果などが説明されています。興味がある方は読んでみてください。

*山崎 大, 岡田 実奈美, 矢澤 大志 (2024) <br>
教育用プログラム言語Scratchを用いた降雨流出モデリングゲームの開発とその水文学教育への利用可能性<br>
水文・水資源学会誌, 37巻 2号, doi: 10.3178/jjshwr.37.1826*<br>
[https://doi.org/10.3178/jjshwr.37.1826](https://doi.org/10.3178/jjshwr.37.1826)

注：上記論文では初期バージョンv1.0について説明しています。

<p> &nbsp; </p>
<p> &nbsp; </p>

### **SplashTune**を教育/研究などに利用したい

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig06.jpg" width="35%"/>

開発した降雨-流出モデリングゲーム**SplashTune**は、Creative Commons: [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.ja)ライセンスで公開されており、基本的には自由に利用いただいて構いません。<br>
以下に簡単なガイドラインを示します。

- **学校教育や大学オープンキャンパスでSplashTuneを用いたい場合**は、出典を明示した上で自由に利用いただいて構いません。必須ではありませんが、利用する場合はメールにて連絡いただけると嬉しいです。<br>
  *出典の記載方法：「東京大学生産技術研究所 山崎研究室が開発」と記載してください。可能であれば、WebPage URL「UTokyo-IIS Yamazaki Lab: [https://global-hydrodynamics.github.io/game/](https://global-hydrodynamics.github.io/game/)」*　も示してください。
- **SplashTuneを用いて教育効果実証などの研究活動を行いたい場合**は、事前にメール連絡してください。（共同研究を歓迎します）
- **SplashTuneを発展させて教育ツールや研究ツールを開発したい場合**も、メールにて相談してください。（共同開発者や共同事業者となってくれる方を探しています）

上記を含めて、降雨流出モデリングゲーム**SplashTune**についての問い合わせは、山崎までメールにて連絡をお願いします。

*山崎 大 (東京大学生産技術研究所 准教授) <br>
yamadai [at] iis.u-tokyo.ac.jp*

<p> &nbsp; </p>
