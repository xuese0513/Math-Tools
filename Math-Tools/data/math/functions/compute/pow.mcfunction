# 
# input : a is stored in calculator:vec[0][-1] with double number,
#         n is stored in scoreboard #n var
#
# calculate : a ^ n or a**n (a power n)
# output : calculator:vec[0][-1]
# 

data modify storage calculator value set from storage calculator vec[0][-1]
data modify storage calculator vec[0] insert -2 value 1.0

scoreboard players operation #sign var = #n var
scoreboard players operation #sign var %= 2 const
execute if score #sign var matches 1 run data modify storage calculator vec[0][-2] set from storage calculator value

scoreboard players operation #n var /= 2 const
function math:operation/compute/iterate/pow

data remove storage calculator register[-1]