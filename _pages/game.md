---
title: "Yamazaki Lab - Game"
layout: pagelay
permalink: /game/
---

# **SplashTune!**
*(Scratch-based Playable Simulator for Hydrograph Tuning)*

[English version is here](../game_e/)

---

## 降雨–流出プロセスをゲームで学ぼう！

雨が降ってから河川に水が流れ出るまでの一連の仕組みは「**降雨–流出プロセス**」と呼ばれます。  
このプロセスを、シミュレーションとゲームを通して直感的に学べる **降雨–流出モデリングゲーム「SplashTune」** を開発しました。

SplashTune は、降雨–流出モデルにおける**地表面状態**を操作し、シミュレーションされる流出ハイドログラフを「ターゲット」に近づけることを目的としたゲームです。

ゲームをプレイしながら、降雨–流出プロセスの基本的な考え方を体験的に学んでみましょう。  
緑の旗ボタンを押すとゲームがスタートします。

<iframe src="https://scratch.mit.edu/projects/1194996537/embed"
allowtransparency="true" width="720" height="460"
frameborder="0" scrolling="no" allowfullscreen></iframe>

**SplashTune (v2.3)**  
- [Scratch のソースコードはこちら](https://scratch.mit.edu/projects/1194996537/)

---

## ルールと遊びかた

### 1. ゲームの目的

河川流域に降った雨が河川へ流出するまでの様々なプロセスを、水粒子の動きとしてアニメーションで表現しています。

- ゲーム開始後、**降水量（Precipitation）** の時間変化が水色のグラフとして表示されます。このグラフで示された強度の雨がシミュレーション中に降ります。
- 雨が地表面に到達すると、水粒子となって流域内を移動します。水粒子の動きは、地表面の状態によって大きく変化します。
- 水粒子が河川に到達すると **流出（Runoff）** となります。  
  シミュレーションで得られる流出量の時間変化（ピンク色）が、青色で示された**ターゲット流出量**に近づくように地表面状態を設定することが、このゲームの目的です。

※ 降水量の時間変化グラフを **ハイエトグラフ**、流出量の時間変化グラフを **ハイドログラフ** と呼びます。

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig01.jpg" width="50%" />

---

### 2. 地表面状態の設定

シミュレーションを開始する前に、画面中のピンク色の矢印で示された部分をクリック（またはタップ）して設定を変更します。

- 上流から下流の2箇所（Stage 5 以降は 4 箇所）の **地表面タイプ** を変更できます。  
  森林・草地・都市の3種類があり、それぞれで浸透量や水粒子の動きが異なります。
- **土壌水分（Soil Wetness）** の初期値も変更できます。  
  0 は乾燥した土壌、100 は完全に湿潤・飽和した土壌を表します。

ハイエトグラフとハイドログラフを見比べながら、最適な地表面状態を予想してみましょう。

---

### 3. シミュレーションの実行

設定が完了したら、「Start Simulation」ボタンを押してシミュレーションを開始します。

シミュレーション中は操作できないため、水粒子の動きをじっくり観察してください。

- 降雨の一部は蒸発や遮断などにより流出に寄与しない「降雨損失」となります。
- 地表面に到達した水粒子の一部は地表を流れ、一部は地中へ浸透します。
- 地中では水粒子は比較的ゆっくり移動し、一部は土壌に保持されます。

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig02.jpg" width="50%" />

---

### 4. シミュレーション結果とスコア

シミュレーションされた流出量の時間変化がピンク色で表示されます。  
青色のターゲット流出量との類似度に基づいてスコアが計算され、**100 点満点**で評価されます。

ターゲットとシミュレーション結果の違いを分析しながら、試行錯誤によって地表面状態を調整してみましょう。

**目標は 90 点以上！ パーフェクトは 100 点です！**

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig03.jpg" width="50%" />

---

### 5. ステージ選択

降雨パターンやターゲット流出量が異なる複数のステージが用意されています。  
各ステージで 90 点以上を目指しながら、地表面タイプや土壌水分が降雨–流出プロセスに与える影響を考えてみましょう。

- 都市化すると洪水が起きやすくなるのはなぜでしょうか？
- 森林・草地・都市で水の動きはどう違うでしょうか？
- 森林が増えると洪水リスクはどう変わるでしょうか？
- 降雨開始時点で土壌が湿っていると、流出はどう変化するでしょうか？
- 上流と下流に雨が降った場合、河川水位上昇までの時間差はどう変わるでしょうか？

---

## 解き方のヒント
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


---

## 降雨–流出モデリングゲーム **SplashTune** の解説

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig04.jpg" width="50%" />

### 複雑なプロセスをアニメーションで表現

降雨–流出プロセスは、植生や建物による遮断、土壌への浸透、地表流・地下流、土壌中の水移動など、複数の現象が相互作用する非常に複雑なプロセスです。

SplashTune では、その中でも以下の要素を簡略化して表現しています。

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

---

### ゲームで試行錯誤しながら理解を深める

プレイヤー自身が地表面状態を考え、シミュレーションを繰り返すことで、降雨–流出プロセスへの理解を深めることを目的としています。

単に「都市化すると洪水が増える」という知識を得るだけでなく、その背後にあるプロセスを体感的に理解できる点が特徴です。

---

### ゲームを作る楽しさにも触れてみよう

**SplashTune** は、教育用プログラミング言語 Scratch を用いて開発されています。  
ソースコードは公開されており、地表面タイプの追加や新しいステージの作成など、自由に改変・発展させることができます。

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig05.jpg" width="50%" />

- [最新版 v2.3](https://scratch.mit.edu/projects/1194996537)
- [シンプル版 v1.1](https://scratch.mit.edu/projects/864115525/)

---

### 論文でより詳しく知りたい方へ

SplashTune の開発については、以下の学術論文で詳しく解説しています。

*山崎 大, 岡田 実奈美, 矢澤 大志 (2024)*  
*教育用プログラム言語 Scratch を用いた降雨流出モデリングゲームの開発とその水文学教育への利用可能性*  
*水文・水資源学会誌, 37 巻 2 号*  
doi: [10.3178/jjshwr.37.1826](https://doi.org/10.3178/jjshwr.37.1826)

※ 上記論文では初期バージョン（v1.0）を対象としています。

---

## **SplashTune** を教育・研究で利用したい方へ

<img src="{{ site.url }}{{ site.baseurl }}/images/scratch/Scratch_fig06.jpg" width="35%" />

SplashTune は Creative Commons **CC-BY 4.0** ライセンスで公開されており、基本的に自由に利用できます。

- **教育目的（学校授業・オープンキャンパス等）**  
  出典を明示すれば自由に利用可能です。  
  出典例：「東京大学生産技術研究所 山崎研究室が開発」
- **教育効果検証などの研究利用**  
  事前にご連絡ください（共同研究を歓迎します）。
- **発展的な教材・研究ツール開発**  
  共同開発も歓迎します。ぜひご相談ください。

お問い合わせは以下までご連絡ください。

*山崎 大（東京大学生産技術研究所 准教授）*  
*yamadai [at] iis.u-tokyo.ac.jp*


