Thesis Draft v0.1
=============
###呂行 2013/12/26

--------------------------------------

## Introduction

> 開場白   
> 介紹問題、objective、goal   
> 簡單介紹理想的結果(詳細評價方法在實驗結果再詳述)   
> Contribution

## Previous Works

> 1. 早期的paper, 手邊有一份2008年的review paper有很完整的介紹
> 2. 近期發展, 2013年Springer出版過一本論文集，台大圖書館有全文下載
> 3. 商業產品: e.g. Rachmaninoff Plays Rachmaninoff: Zenph Re-performance


## Proposed Method

### Overview

> 流程圖、high-level解釋各個模組的功能

### Sample Format

> Training sample的格式說明

### Features

> 解釋feature extractor的架構

#### Score Features

> 從樂譜本身可以得到的Feature，分項解釋，需要公式與圖示

#### Performance Features

> 從演奏範例與樂譜共同抽出的Features，分項解釋   
> 特別highlihgt onset timing這個feature,因為有4種normalization的方法，實驗顯示其中一種特別有效。

### Modeling

> 簡單介紹SVM-HMM的原理，引用Cornell的paper還有toolbox  
> 解釋我如何使用Cornell的toolbox，輸入輸出格式  
> 三個model對應到三種performance features，分開訓練  

### Parameter selection

> 選擇參數的實驗，目前是

> 1. 先以10的次方跑過$10^{-5}$到$10^4$的值做初步篩選
  2. 人耳聽決定效果比較好的區間
  3. 針對小區間再用更小的間隔跑一次

  圖表: 3D圖顯示三個參數的分佈，應該會有一個團塊是比較好的參數

## Corpus

###Introduction

  >* 曲目列表
  * 曲子數量、句子數量、演奏者數量
  * 為何選擇Clementi，有何代表性？

### Criteria

  >簡單介紹好的corpus需要符合的條件
  
### Score source

  > 列出我使用的樂譜來源(MuseScore)與格式(MusicXML)
  
### Preparation

  > 介紹樂譜抓到以後需要做的一些清理工作跟我寫的一些工具程式，配上過程中間的一些樂譜範例

## Experiments & Results

### Evaluation Criteria

> 1. Subject Test
> 2. Quantatative Test 
> 2. Qualitative Discussion
> 3. Discussion

### Subject Test
  > 網路問卷   
  >  做隨機改變順序的A/B雙盲測試   
  >  最後會請他們給予文字comment，說明是怎麼聽出兩者的差異   
  >  主要會給三群人:
  >
  >    * 一般業餘朋友、
  >    * 台大交響樂團/師大音樂系本科學生、
  >    * 音樂所教授 
    
  > 結果：A/B test數據列表、圖表、討論

### Quantatative Test
  > 1. 計算不合理的演奏出現次數(例如音符順序錯位)
  > 2. 計算生成的演奏與真人演奏的相似性(有時間再做)  
  > e.g 假設training sample有曲目1~5，用1-4 training，5做testing，再用生成的5與trainign sample的5比較
   
  > 數據列表、圖表、討論

### Qualitative Discussion

  > 1. 探討生成出來的演奏參數是否和一般樂理書上常見的演奏規則相符
  > 2. 探討生成出來的演奏參數是否和KTH發表的一篇paper中歸納的演奏風格相符
  > 3. 指出生成的演奏是否有某些明顯的風格元素與training sample中的風格一致

## Conclusion

  > * 簡單回顧我的方法
  > * 簡單回顧實驗結果
  > * 再次強調對本學門的貢獻

## Future Works
  > * Features
       * 多聲部
       * 拓展不同風格
       * 可以在learning model之上再加上expert systme類型的規則，例如爵士風格
  > * Other
       * 建立大量corpus
       * 建立更robust的evaluation方法
       * 可能的商業應用

--------------------------------------

#TODO:
* What figures are needed?
    * Figure name
    * Expected Result
* What data is needed
    * Data name
    * Data format
    * Expression
* What features are needed?
* What experiments are needed?
* What reference are needed? (musicology books)
    * citation
* Who are the partners? Do I need to contact them first?
* Schedule?
* ISMIR?

## Introduction
## Previous Works
## Proposed Method
### Overview
### Sample Format
### Features
####Score Features
####Performance Features
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
