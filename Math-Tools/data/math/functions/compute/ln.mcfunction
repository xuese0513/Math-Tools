# 
# input : double number stored in calculator:stack[-1]
# calculate : ln(x) by Taylor Series
# output : calculator:stack[-1]
# 

scoreboard players operation #log_times var = #log_iters const
scoreboard players set #log_div var 3

data modify storage calculator register append from storage calculator stack[-1]
data modify storage calculator stack append value 1.0
function math:compute/sub
data modify storage calculator stack append from storage calculator register[-1]
data modify storage calculator stack append value 1.0
function math:compute/add
function math:compute/div

data modify storage calculator register[-1] set from storage calculator stack[-1]
data modify storage calculator stack append from storage calculator stack[-1]
data modify storage calculator stack append from storage calculator stack[-1]
function math:compute/mul
data modify storage calculator register append from storage calculator stack[-1]
data remove storage calculator stack[-1]

function math:operation/compute/ln_iterate

function math:compute/add
data modify storage calculator stack append value 2.0
function math:compute/mul

data remove storage calculator register[-1]