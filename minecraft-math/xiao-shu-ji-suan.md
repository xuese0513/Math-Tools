# 小數計算

## 小數計算(Decimal Arithmetic Operations) <a href="#xiao-shu-ji-suan-decimalarithmeticoperations" id="xiao-shu-ji-suan-decimalarithmeticoperations"></a>

Minecraft中處理小數運算的方式很不方便，故我們將此獨立成一篇文章來細談，\
小數運算泛指「對於所有需要儲存成小數型態資料的變數進行加減乘除法的計算」，\
而在下面我們使用了兩種方式來處理小數運算的問題：

一、記分板拆分整數部分與小數部分：\
計算(Operation)的方式即使用scoreboard自帶的operations

二、利用屬性(Attributes)儲存小數：\
計算(Operation)的方式是利用修改修飾符(Modifiers)的方式來實現

***

### 一、記分板拆分整數部分與小數部分 <a href="#yi-ji-fen-ban-chai-fen-zheng-shu-bu-fen-yu-xiao-shu-bu-fen" id="yi-ji-fen-ban-chai-fen-zheng-shu-bu-fen-yu-xiao-shu-bu-fen"></a>

對於每筆數值，都需要將其儲存成兩份資料，\
儲存資料的方式可以開三個記分板：Integer, Fraction, Exponent\
分別儲存一個小數的整數部分(Integer part)、小數部分(Fractional part)和指數部分(Exponent Part)\
(以下會簡化其變數名稱為 `int, frac, exp`)\
例如`15.75`，我們會將其存成數組 `(int, frac, exp)=(15, 75, -2)`\
但若exp的值比-9還小時，即有可能會出現溢位問題，若\
如果要處理此類型的計算則需要用到 [大數運算](https://hackmd.io/@mccmd-tutorial/HJeHKnmOF) 的方式來處理\
(在此篇我們都不會考慮需要大數運算的狀況)

![](https://raw.githubusercontent.com/xuese0513/images/ca58c369f60cce3a452030639d3c1bfc6fcc7990/article/%E5%B0%8F%E6%95%B8%E9%81%8B%E7%AE%97/decimal.svg)

***

#### 定義小數四則運算 <a href="#ding-yi-xiao-shu-si-ze-yun-suan" id="ding-yi-xiao-shu-si-ze-yun-suan"></a>

( decimal format : n=i+f⋅10en=i+f⋅10e )

![](https://raw.githubusercontent.com/xuese0513/images/ca58c369f60cce3a452030639d3c1bfc6fcc7990/article/%E5%B0%8F%E6%95%B8%E9%81%8B%E7%AE%97/base.svg)

***

* #### 加法運算(Addition Operation) <a href="#jia-fa-yun-suan-additionoperation" id="jia-fa-yun-suan-additionoperation"></a>

![](https://raw.githubusercontent.com/xuese0513/images/0ede7ee19917062995585a6dd71f61bb99516e00/article/%E5%B0%8F%E6%95%B8%E9%81%8B%E7%AE%97/decimal%20a%2Bb.svg)

***

* #### 減法運算(Addition Operation) <a href="#jian-fa-yun-suan-additionoperation" id="jian-fa-yun-suan-additionoperation"></a>

請注意，這裡的小數部分，也就是frac的值通常都會紀錄為正的，\
若是小數值取負數，那麼可以用這樣的方式變換：\


![](https://raw.githubusercontent.com/xuese0513/images/cc301d092ec29c651e85cd5473b430b3b26aed80/article/%E5%B0%8F%E6%95%B8%E9%81%8B%E7%AE%97/decimal%20a%2B\(-b\).svg)

***

* #### 乘法運算(Multiplication Operation) <a href="#cheng-fa-yun-suan-multiplicationoperation" id="cheng-fa-yun-suan-multiplicationoperation"></a>

![](https://raw.githubusercontent.com/xuese0513/images/5eeda10c7e4bc365548187fdd14caaebee6d3a15/article/%E5%B0%8F%E6%95%B8%E9%81%8B%E7%AE%97/decimal%20ab.svg)

***

* #### 除法運算(Division Operation) <a href="#chu-fa-yun-suan-divisionoperation" id="chu-fa-yun-suan-divisionoperation"></a>

以代數變換的方式沒辦法直接計算小數的除法運算，\
對於除法運算的方式將於後續 [牛頓法—計算小數除法](https://hackmd.io/@mccmd-tutorial/HJeHKnmOF) 中詳述

***

#### 將計分板數組轉換為小數資料 <a href="#jiang-ji-fen-ban-shu-zu-zhuan-huan-wei-xiao-shu-zi-liao" id="jiang-ji-fen-ban-shu-zu-zhuan-huan-wei-xiao-shu-zi-liao"></a>

首先要注意的是，execute指令轉型態是會去位的，故我們要處理此類型的型態轉換應當用data處理會比較合適

主要處理的部分是儲存小數的部分，在此我們可以使用直接判斷exp的數值，並直接指派要用倍率轉換即可(以下我們用二進位的方式來加速轉換)

```
execute store entity @s Pos[0] 1 double run scoreboard players get exp decimal 

execute if score exp decimal matches ..-8

```

缺點是在於需要自行設計小數運算的方式，在大多情況下通常並不會想要真的手刻一股小數運算出來，而是更傾向用原版自帶的小數計算系統，這就不得不提Attributes這個東西了

***

### 二、利用屬性(Attributes)儲存小數 <a href="#er-li-yong-shu-xing-attributes-chu-cun-xiao-shu" id="er-li-yong-shu-xing-attributes-chu-cun-xiao-shu"></a>

Minecraft僅有提供記分板計算，但其只能處理整數資料，還必須要進行型態轉換，\
對於大部分需要小數計算的數據而言很不方便

我們的目的是在於可以將「小數變數」直接進行計算，而不需要轉換成記分板的形式\
而在Minecraft中其實已經有提供一個小數運算的機制，也就是Attributes\
利用修改attributes的修飾符(Modifiers)可以進而實現加減乘法的效果

> 請注意，Attributes

#### 屬性修飾符(Attribute Modifiers) <a href="#shu-xing-xiu-shi-fu-attributemodifiers" id="shu-xing-xiu-shi-fu-attributemodifiers"></a>

一共有4個參數

* Name : 名稱，不是特別重要
* Amount : 此修飾符的值
* UUID\[4] : 帶四個整數(int)的陣列，在同一個修飾符組中不得有重複者
* Operation ： 以Amount進行指定的屬性操作方式，一共有3種操作選項：
  * 0 : add
  * 1 : multiply\_base
  * 2 : multiply

其結算方式可以直接參考此式子：\
(Base+ΣA)⋅(1+ΣN)⋅Π(1+Mi)(Base+ΣA)⋅(1+ΣN)⋅Π(1+Mi)

ΣAΣA : 所有修飾符中Operation為add者的Amount總和\
ΣNΣN : 所有修飾符中Operation為multiply\_base者的Amount總和\
Π(1+Mi)Π(1+Mi) : 所有修飾符中Operation為multiply者，將各者Amount加1之後再乘起來的總值

***

#### 問題 <a href="#wen-ti" id="wen-ti"></a>

首先我們會遇到兩個問題：

1. 計算乘積時會需要處理式子中額外+1的問題
2. 沒有辦法「修改」已存在的修飾符之Amount值

針對第一點其實並不難，我們可以將其變成一個「二元運算」的方式就好，計算時再額外放入一個{Operation:1, Amount:-1}的東東來去除+1的部分

第二點的問題如果想測試的可以自行測試看看：\
`data modify entity ... Attributes [0].Modifiers[0].Amount set value 77.0`\
執行完後查詢同樣路徑，會發現值沒有更改\
`data get entity ... Attributes [0].Modifiers[0].Amount`

比較難處理的是第二點，如果改不了屬性值不就等於沒救了？不等等，還有一個替代方案可以處理這個問題

#### 特殊解 <a href="#te-shu-jie" id="te-shu-jie"></a>

這條指令是可以成功修改修飾符的：\
`data modify entity ... Attributes[0].Modifiers set value {Name:"add", Amount:1.0d, Operation:0, UUID:[I;0,0,0,0]}`

與其說是修改，倒不如說是新放入一個新的修飾符，因為舊的Modifiers資料都不會消失\
只有set和merge的操作是有效的，其他像是append, prepend, insert全部都沒效

故我們要做的是就是先建構好Modifiers的部分，\
可以利用storage開一個陣列來建，過程並不會特別複雜

***

#### 四則運算 <a href="#si-ze-yun-suan" id="si-ze-yun-suan"></a>

基本上「加減乘法」皆適用這樣的流程方式來計算：

1. 建構Modifiers列表
2. 生成實體，初始化屬性Base值為0，並將建好的Modifiers放到該屬性中

詳細的指令可以參考Math-Tools Datapack的函數：

* math:decimal/add
* math:decimal/sub
* math:decimal/mul
* math:decimal/div

比較需要特別注意的，我們是把變數和輸出都放在stack中，這是為了重複利用以及計算上的便利性，也就是把後序運算的計算部分給實作出來的概念

\
