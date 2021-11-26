# 
# input : double number stored in decimal:stack[-1]
# calculate : ln(x) by Taylor Series
# output : decimal:stack[-1]
# 

scoreboard players operation #log_times var = #log_iters const
scoreboard players set #log_div var 3

data modify storage decimal variables append from storage decimal stack[-1]
data modify storage decimal stack append value 1.0
function math:decimal/sub
data modify storage decimal stack append from storage decimal variables[-1]
data modify storage decimal stack append value 1.0
function math:decimal/add
function math:decimal/div

data modify storage decimal variables[-1] set from storage decimal stack[-1]
data modify storage decimal stack append from storage decimal stack[-1]
data modify storage decimal stack append from storage decimal stack[-1]
function math:decimal/mul
data modify storage decimal variables append from storage decimal stack[-1]
data remove storage decimal stack[-1]

function math:operation/decimal/ln_iterate

function math:decimal/add
data modify storage decimal stack append value 2.0
function math:decimal/mul

data remove storage decimal variables[-1]