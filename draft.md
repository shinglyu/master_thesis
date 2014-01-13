Thesis Draft v0.2
=============
###呂行 2014/1/2

--------------------------------------

#工具

* 英文
* 使用LaTex，方便管理citation與圖表自動排版，輸出成pdf (已經有台大論文標準格式的LaTex模板存在)
* Citation用Mendely Desktop管理，輸出成BibTex讓LaTex使用


------------------------------------

#時間規劃

* 1月:寫完Proposed Method、實驗設計
* 2月:完成corpus錄音，寫完文獻回顧
* 3月:利用完成的corpus實驗，完成實驗數據與圖表
* 4月:寫完實驗結果討論；初稿完成
* 5月:Revise
* 6月:口試

#投稿

* ISMIR 2014, Oct 27 - Oct 31, 2014,  約四月左右開始接受投稿
* WOCMAT 2014 約十一月底十二月初，約十月截止
* RECON(比賽)，約2015八月，三四月截止

#口試
委員 candidate: 

* 台大音樂所 王育雯教授 調性音樂分析
* 台大音樂所 蔡振家教授 音樂心理學
* 交大音樂所 金立群教授 古典音樂分析
* 台大電機系 陳宏銘教授 電腦音樂
* 台大資工系 張智星教授 電腦音樂
             

-------------------------------------

Computer Expressive Music Performance using Structural Support Vector Machine
利用結構性支撐向量機的電腦自動演奏

#內容大綱

##謝詞

## Introduction

> 開場白   
> 介紹問題、objective、goal   
> 簡單介紹理想的結果(詳細評價方法在實驗結果再詳述)   
> Contribution

## Previous Works

> 1. 早期的paper, 手邊有一份2008年的review paper有很完整的介紹
> 2. 近期發展, 2013年Springer出版過一本論文集，台大圖書館有全文下載
> 4. 比賽: RECON (Performance Rendering Contest) 2013
> 3. 商業產品: e.g. Rachmaninoff Plays Rachmaninoff: Zenph Re-performance  
> 5. SVM-HMM應用，強調沒有人用在音樂上

>> Citation: previous works


## Proposed Method

### Overview

> 按照流程圖high-level解釋各個模組的功能  

>> Figure: 系統流程圖(已完成)

### Sample Format

> Training sample的格式說明

### Music21

> 簡介MIT Music21 library, 目前所有的Feature都是利用Music21協助計算的   

>> Citation: MIT Music21

### Features

> 解釋feature extractor的架構  

>> Figure: 流程圖

#### Score Features

> 從樂譜本身可以得到的Feature，分項解釋，需要公式與圖示

>> Figure: 各featue的示意圖(完成，可再改進)

>> Math: 各featue的公式(完成，可再改進)

>> Figure: 一個training sample抽出來的features樣本

#### Performance Features

> 從演奏範例與樂譜共同抽出的Features，分項解釋   

>> Figure: 各featue的示意圖(完成，可再改進)

>> Math: 各featue的公式(完成，可再改進)

> 特別highlihgt onset timing這個feature,因為有4種normalization的方法，實驗顯示其中一種特別有效。

>> Figure: 四種onset timing normalization的示意圖(完成，可再改進)

### Modeling

> 簡單介紹SVM-HMM的原理，引用Cornell的paper還有toolbox  
> 解釋我如何使用Cornell的toolbox，輸入輸出格式  
> 三個model對應到三種performance features，分開訓練  

>> Citation: SVM-HMM papers  
>> Citation: Cornell SVM-HMM Toolbox

### Parameter selection

> 選擇參數的實驗，目前是

> 1. 先以10的次方跑過$10^{-5}$到$10^4$的值做初步篩選
  2. 人耳聽決定效果比較好的區間
  3. 針對小區間再用更小的間隔跑一次

>> Figure: 3D scatter plot 顯示三個參數的分佈，應該會有一個團塊是比較好的參數

## Corpus

###Introduction
 
  > 簡介現有的corpus

  >> Citation: Magaloff Corpus  
  >> Citation: 日本ISMIR corpus

  >* 曲目列表
   * 曲子數量、句子數量、演奏者數量
   * 為何選擇Clementi，有何代表性？

  >> Figure: 樂譜範例(optional)

### Criteria

  >簡單介紹好的corpus需要符合的條件
     
  
### Score source

  > 列出我使用的樂譜來源(KernScore)與格式(MusicXML)

  >> Citation: KernScore   
  >> Citation: MusicXML Offical Schema
  
### Preparation

  > 介紹樂譜抓到以後需要做的一些清理工作跟我寫的一些工具程式，配上過程中間的一些樂譜範例

  >> Figure: 清理前與清理後的五線譜範例

## Experiments & Results

### Evaluation Criteria

   > 1. Subject Test
   > 2. Quantatative Test 
   > 2. Qualitative Discussion
   > 3. Discussion

### Subject Test
  > 網路問卷   
  >  做隨機改變順序的A/B雙盲測試，一次大約10題   
  >  最後會請他們給予文字comment，說明是怎麼聽出兩者的差異   
  >  主要會給三群人:   
  >
  >    * 一般業餘朋友、
  >    * 台大交響樂團/師大音樂系本科學生、
  >    * 音樂所教授 
    
  > 結果：A/B test數據列表、圖表、討論

  >> Table: A/B test result   
  >> Figure A/B test result figure


### Quantatative Test
  > 1. 計算不合理的演奏出現次數(例如音符順序錯位、負的時間)

  >> Figure: 音符錯位示意圖   
  >> Table: 音符錯位統計表

  > 2. 計算生成的演奏與真人演奏的相似性(有時間再做)  
  > e.g 假設training sample有曲目1~5，用1-4 training，5做testing，再用生成的5與trainign sample的5比較

  >> Figure: 演奏相似性示意圖   
  >> Table: 演奏相似性結果   
  >> Citation: 提出此方法的paper
   
  > 數據列表、圖表、討論

### Qualitative Discussion

  > 1. 探討生成出來的演奏參數是否和一般樂理書上常見的演奏規則相符

  >> Figure: 範例譜例   
  >> Citation: 樂理書

  > 2. 探討生成出來的演奏參數是否和KTH發表的一篇paper中歸納的演奏風格相符
  
  >> Figure: 範例譜例   
  >> Table: KTH演奏規則列表   
  >> Citation: KTH

  > 3. 指出生成的演奏是否有某些明顯的風格元素與training sample中的風格一致

  >> Figure: 範例譜例   

## Conclusion

  > * 簡單回顧我的方法
  > * 簡單回顧實驗結果
  > * 再次強調對本學門的貢獻

## Future Works
  > * Features
       * 其他可能的score/performance feature
          * 樂譜上的文字記號
          * articulation
          >> Citation: 有使用articulation的兩三篇論文
          * 樂器的演奏技巧
          >> Citation: 長笛paper、saxphone paper
       * 多聲部
       >> Citation: 多聲部 paper 大約兩三篇
       * 拓展不同風格
       * 可以在learning model之上再加上expert systme類型的規則，例如爵士風格
  > * Other
       * 建立大量corpus
       * 建立更robust的evaluation方法
       * 可能的商業應用
       >> Citation Zynph re-performance

##Appendix
  * 使用的軟體
     * Music21
     * Python
     * SciPy, NumPy
     * Matplotlib
     * MuseScore
  * MIDI in Linux
     * RoseGarden
     * Python binding
     * USB device

--------------------------------------

#Table of Contents

##謝詞
## Introduction
## Previous Works
## Proposed Method
### Overview
### Sample Format
### Music21
### Features
#### Score Features
#### Performance Features
### Modeling
### Parameter selection
## Corpus
###Introduction
### Criteria
### Score source
### Preparation
## Experiments & Results
### Evaluation Criteria
### Subject Test
### Quantatative Test
### Qualitative Discussion
## Conclusion
## Future Works
##Appendix


#Phases:
1. Review code and rewrite
2. Check verb tenses
3. Insert references
