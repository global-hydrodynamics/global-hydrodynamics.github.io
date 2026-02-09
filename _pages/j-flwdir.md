---
title: J-FlwDir -- Japan Flow Direction Map
layout: pagelay
sitemap: false
permalink: /J-FlwDir/
---

# J-FlwDir
## Japan Flow Direction Map / 日本域表面流向マップ

**J-FlwDir** is a high-resolution hydrological topography dataset for Japan, providing surface flow directions and consistent supplementary hydrological layers at **1 arc-second (~30 m)** resolution.

J-FlwDir is developed by **The University of Tokyo and Kyoto University**, mainly based on national elevation and water body datasets provided by the **Geospatial Information Authority of Japan (GSI)**.

The core dataset is the **flow direction map (local drainage direction)**,  
accompanied by hydrologically consistent supplementary layers:

**J-FlwDir（日本域表面流向マップ）**は、日本全域を対象とした高解像度（約30m）水文地形データセットです。

J-FlwDir は、国土地理院の **基盤地図情報（標高）** および**国土数値情報（水域）**を主な入力データとして、  
東京大学・京都大学により開発されました。

主要データである **表面流向データ**に加え、流向と整合性の取れた水文地形データレイヤを整備しています。

<div class="img_cap">
<img src="{{ site.url }}{{ site.baseurl }}/assets/j-flwdir/kanto_river.png" width="80%"/>
</div>

---

## How J-FlwDir is developed / データ開発概要

We developed a new surface flow direction dataset, **J-FlwDir**, at 1-arc-second (~30 m) resolution for the entire Japanese domain, using the **“Kiban Chizu Joho” digital elevation model**, **“Kokudo Suchi Joho” water body datasets**, and **the G1WBM Landsat water body map**.

The calculation of flow directions for a large domain used to be difficult due to errors in the input elevation data. We solved this problem by a new algorithm, which first calculate the initial-guess flow directions by a steepest slope method, and then ensure river connectivity by reversing the initial-guess flow directions when needed. 

The new flow direction data shows better consistency to the accrual river networks compared to the previous HydroSHEDS flow directions. We also generated supplementary data layers such as flow accumulation area, adjusted elevation, and river width. The new flow direction datasets is considered to advance any geoscience studies which relies on flow direction data.

日本全域1秒(約30m)解像度で各ピクセルにおける地表水流下方向を表す表面流向データ**J-FlwDir**は、**基盤地図情報 標高データ**, **国土数値情報 水域データ**, **G1WBM Landsat水面マップ**を用いて開発されました。 

標高データに含まれる誤差の影響により、広域を対象とした表面流向データの開発は、これまで困難と考えられてきました。本研究では、この問題を解決するために、新しい表面流向算定アルゴリズムを開発しました。本アルゴリズムでは、まず最急勾配法により初期的な表面流向を推定し、その後、河道ネットワークの連続性が確保されるよう、必要に応じて流向を反転させる処理を行います。これにより、広域かつ安定した表面流向計算を効率的に実現しています。

入力データの高精度化と計算手法の改良により、開発した日本域表面流向データは、既存の HydroSHEDS などのデータセットと比較して、より正確かつ詳細な河道ネットワークを表現できることが確認されました。さらに、表面流向データに加えて、上流集水面積、水文的に補正された標高、河道幅といった付加的な水文地形データについても、変数間の整合性が保たれるよう一貫して整備しています。これらの表面流向および付加データは、水工学分野にとどまらず、幅広い地球科学分野への応用が期待されます。

### References

**日本全域高解像度の表面流向データ整備**
山崎 大, 冨樫 冴佳, 竹島 滉, 佐山 敬洋 (2018)  
土木学会論文集B1 (水工学論文集), 74(5), I_163–I_168*  
(In Japanese with English abstract)
<https://doi.org/10.2208/jscejhe.74.5_I_163>

**HIGH-RESOLUTION FLOW DIRECTION MAP OF JAPAN**
Dai YAMAZAKI, Saeka TOGASHI, Akira TAKESHIMA, Takahiro SAYAMA (2020)
Journal of Japan Society of Civil Engineers, 8 (1), 234-240
(official English translation)
<https://doi.org/10.2208/journalofjsce.8.1_234>

<div class="img_cap">
<img src="{{ site.url }}{{ site.baseurl }}/assets/j-flwdir/SuppData.png" width="80%"/>
</div>

---

## Download J-FlwDir / ダウンロード

**How to obtain the data / データ入手手順** 

1. Register via the Google Form
2. Receive the password by email
3. Access the download page

### Registration for Download / ユーザー登録

Please complete the  
[**Google Form for registration and license agreement**](https://goo.gl/forms/xDY6TsMOfwzcURNi1").  
The password for downloading the data will be sent to you by email after registration.

Alternatively, you may contact the developer directly to request access:

まずは、[**ユーザー登録およびライセンス同意用 Google フォーム**](https://goo.gl/forms/xDY6TsMOfwzcURNi1) に必要事項を入力してください。  
登録完了後、データダウンロード用の **パスワード** がメールで送信されます。

フォームが利用できない場合は、開発者まで直接ご連絡ください。

- **Dai Yamazaki** yamadai [at] iis.u-tokyo.ac.jp


### Download Datasets / データのダウンロード

The password for downloading the data is issued after registration via the Google Form (see above). 
The data can be downloaded from below link:

データのダウンロード用パスワードは、上記 Google フォームでの登録後に発行されます。  
データは以下のページからダウンロードできます。

<a  href="https://www.dropbox.com/scl/fo/ww9yaogv73ic34lpem50v/AJJDf-y-ykn8CFB8Yot3UQ0?rlkey=glaqzpzl4di1w5xs2bzcyts6l&st=0ff5x5uk&dl=0" target="_blank" rel="noopener noreferrer">
**J-FlwDir download page (Dropbox)**
</a>

**Note:**  
*Due to temporary issues with the original web server, the data are currently distributed via Dropbox.*
*When prompted for access, please enter **only the password** provided in the registration email; the username is not required.*

*元の Web サーバーに一時的な問題があるため、現在は Dropbox を用いてデータを配布しています。*  
*アクセス時に求められた場合は、登録完了メールに記載された **パスワードのみ** を入力してください。ユーザー名の入力は不要です。*

#### Quick Look Figures

To facilitate a quick visual inspection of the dataset,figures visualizing the river networks are provided as part of the download package (`flwfig.tar.gz`).

データセットの概要を視覚的に確認できるよう、河道ネットワークを可視化した図をまとめたファイル（`flwfig.tar.gz`）をダウンロードページに同梱しています。

<div class="img_cap">
<img src="{{ site.url }}{{ site.baseurl }}/assets/j-flwdir/legend.jpg" width="80%"/>
</div>

---

## Data Description / データ仕様

### Coordinate system and tiling / 座標系・タイル構成

- Horizontal datum: **WGS84**
- Vertical datum: **JapanGeoid2011 (GSIGEO2011 v2)**
- Tile size: **1° × 1°** (3600 × 3600 pixels)
- Format: **GeoTIFF**

File names represent the **lower-left corner** of each tile  
(e.g., `n35e135_dem.tif`).

- 水平基準系：**WGS84**
- 鉛直基準系：**JapanGeoid2011（GSIGEO2011 v2）**
- タイルサイズ：**1° × 1°**（3600 × 3600 ピクセル）
- ファイル形式：**GeoTIFF**

ファイル名は、各タイルの **左下（南西）隅の座標** を表しています。  
（例：`n35e135_dem.tif`）

### Data layers and variables / データレイヤーと変数

| Variable   | Description   | Unit   | Data type   |
|------------|---------------|--------|-------------|
| dir | Flow direction | – | int8 |
| elv | Hydrologically adjusted elevation | m | float32 |
| upa | Upstream drainage area | km² | float32 |
| upg | Upstream gradient | – | float32 |
| wth | River channel width | m | float32 |
| hnd | Height Above Nearest Drainage | m | float32 |

#### Flow Direction / 表面流向 (dir))

Flow direction is provided as a **1-byte signed integer** (`int8`).  
The flow direction codes are defined as follows:

表面流向は**1バイトの符号付き整数** (`int8`) として提供されます。
表面流向コードは次のように定義されます。

- **1**: east  
- **2**: southeast  
- **4**: south  
- **8**: southwest  
- **16**: west  
- **32**: northwest  
- **64**: north  
- **128**: northeast  

Special values:

- **0**: river mouth  
- **-1**: inland depression  
- **-9**: undefined (ocean)

**Note:**  
If a flow direction file is interpreted as an **unsigned integer**, undefined pixels correspond to **247**, and inland depressions to **255**.

流向データを **符号なし整数（unsigned integer）** として解釈した場合、  
未定義ピクセルは **247**、内陸の凹地（inland depression）は **255** に対応します。

#### Hydrologically Adjusted Elevation / 水文補正標高 (elv)

Hydrologically adjusted elevation is provided as a **4-byte floating-point value** (`float32`).  
Elevations are modified to satisfy the condition that downstream elevation is not higher than upstream elevation, while minimizing deviations from the original DEM.

Elevation values are referenced to the **JapanGeoid2011** and expressed in **meters**, with a vertical increment of **0.1 m**.  
Undefined pixels (oceans) are assigned a value of **-9999**.

水文的に補正された標高は、**4 バイト浮動小数点数**（`float32`）で提供されます。  
標高は、「下流の標高が上流より高くならない」という条件を満たすように、元の DEM からの改変量を最小化しつつ補正されています。

標高値は **日本のジオイド2011** を基準とし、単位は **メートル**、鉛直方向の最小刻みは **0.1 m** です。  
未定義ピクセル（海域）は **-9999** が割り当てられています。

#### Flow Accumulation Area / 上流集水面積（upa）

Upstream drainage area is provided as a **4-byte floating-point value** (`float32`) and expressed in **km²**.  
Undefined pixels (oceans) are assigned a value of **-9999**.

上流集水面積は、**4 バイト浮動小数点数**（`float32`）で提供され、単位は **km²** です。  
未定義ピクセル（海域）には **-9999** が割り当てられています。

#### Flow Accumulation Grid / 上流集水ピクセル数 (upg)

The number of upstream drainage pixels is provided as a **4-byte integer** (`int32`).  
Undefined pixels (oceans) are assigned a value of **-9999**.

上流集水ピクセル数は、**4 バイト整数**（`int32`）で提供されます。  
未定義ピクセル（海域）には **-9999** が割り当てられています。

#### River Channel Width / 河道幅 (wth)

River channel width is provided as a **4-byte floating-point value** (`float32`) in **meters**.  

- **Values greater than 0**: river channel width at channel centerlines  
- **-1**: non-centerline water pixels  
- **0**: non-water pixels

Undefined pixels (oceans) are assigned a value of **-9999**.

河道幅は、**4 バイト浮動小数点数**（`float32`）で提供され、  
単位は **メートル**です。  

- **0 より大きい値**：河道中心線上の河道幅  
- **-1**：中心線以外の水域ピクセル  
- **0**：非水域ピクセル  

未定義ピクセル（海域）には **-9999** が割り当てられています。

#### HAND Height Above Nearest Drainage / 最近水路からの相対高度（hnd）

HAND is provided as a **4-byte floating-point value** (`float32`) in **meters**.  
Values represent the height above the nearest drainage pixel (*Nobre et al.*, 2011, *Journal of Hydrology*).  
Here, drainage pixels are defined as those with an upstream area greater than **0.5 km²**.

Undefined pixels (oceans) are assigned a value of **-9999**.

HAND は、**4 バイト浮動小数点数**（`float32`）で提供され、単位は **メートル**です。  
各値は、最近接の排水路ピクセルからの相対高度を表します（*Nobre et al.*, 2011, *Journal of Hydrology*）。
ここで排水路ピクセルとは、**上流集水面積が 0.5 km² を超えるピクセル**として定義されています。 
 
未定義ピクセル（海域）には **-9999** が割り当てられています。

---

## License and Data Policy / ライセンス・利用条件

#### Creative Commons Attribution 4.0 (CC-BY 4.0)

J-FlwDir is licensed under **Creative Commons Attribution 4.0 (CC-BY 4.0)**.

Users are free to use, modify, and redistribute the data with proper attribution.  
However, redistribution of the **entire original dataset** on other websites without explicit permission is discouraged for version control purposes.

J-FlwDir は **Creative Commons Attribution 4.0（CC-BY 4.0）** の下で公開されています。

適切なクレジット表示を行う限り、利用者は本データを自由に 使用・改変・再配布 することができます。
ただし、データセット全体を元の形式のまま、著者の明示的な許可なく他のウェブサイト等で再配布することは、バージョン管理の観点から推奨されません。

---

## Version History / 更新履歴

**Current version: v1.4**  *(1 December 2022)*

### Update notes

- **[v1.4] (1 Dec, 2022)**  
  Errors in the `n34e131` and `n33e130` tiles were corrected.

- **[v1.31] (27 May, 2021)**  
  Small bug fix in pixel size metadata due to a precision error.  
  *(No change in the data itself.)*

- **[v1.3] (30 Mar, 2021)**  
  Error correction for some river networks.  
  *(No major update to the code or input data.)*

- **[v1.0] (20 Nov, 2018)**  
  Official release. G1WBM Landsat water body data were added as input data.  
  *Minor modification (21 Nov, 2018):*  
  Three tiles with “no data” were removed (`n29e140`, `n31e139`, `n33e138`).

### Notice on data quality / データに関する注意

The Japan Flow Direction Map (J-FlwDir) may contain issues arising from uncertainties in the input datasets and algorithms. If you find any obvious errors in the river network, please contact the developer. Reported issues will be addressed and the dataset will be updated and improved accordingly.

日本域表面流向マップ（J-FlwDir）には、入力データやアルゴリズムの不確実性に起因する問題が含まれる可能性があります。明らかな河道ネットワークの誤りなどを発見された場合は、開発者までご連絡ください。報告された問題については、順次データの修正・改善を行っていきます。


---

## References

**日本全域高解像度の表面流向データ整備**
山崎 大, 冨樫 冴佳, 竹島 滉, 佐山 敬洋 (2018)  
土木学会論文集B1 (水工学論文集), 74(5), I_163–I_168*  
(In Japanese with English abstract)  
<https://doi.org/10.2208/jscejhe.74.5_I_163>

**HIGH-RESOLUTION FLOW DIRECTION MAP OF JAPAN**
Dai YAMAZAKI, Saeka TOGASHI, Akira TAKESHIMA, Takahiro SAYAMA (2020)
Journal of Japan Society of Civil Engineers, 8 (1), 234-240
(official English translation)  
<https://doi.org/10.2208/journalofjsce.8.1_234>

For citation and academic use, please refer to the publications listed above.

## Contact

**Dai Yamazaki**  
Institute of Industrial Science, The University of Tokyo  
yamadai [at] iis.u-tokyo.ac.jp
