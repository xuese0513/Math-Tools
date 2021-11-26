# 
# input : a is stored in decimal:stack[-1] with double number,
#         n is stored in scoreboard #n var
#
# calculate : a ^ n or a**n (a power n)
# output : decimal:stack[-1]
# 

data modify storage decimal value set from storage decimal stack[-1]
data modify storage decimal stack insert -2 value 1.0

scoreboard players operation #sign var = #n var
scoreboard players operation #sign var %= 2 const
execute if score #sign var matches 1 run data modify storage decimal stack[-2] set from storage decimal value

scoreboard players operation #n var /= 2 const
function math:operation/decimal/pow_iterate

data remove storage decimal variables[-1]