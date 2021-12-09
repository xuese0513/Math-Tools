# 
# input : pair of double number[a, b] stored in calculator:stack[-2, -1]
# calculate : a / b
# output : calculator:stack[-1]
# 

scoreboard players operation #div_times var = #div_iters const

execute store result score #b var run data get storage calculator stack[-1] -2097152
data modify storage calculator register append from storage calculator stack[-1]
data remove storage calculator stack[-1]

scoreboard players operation #a var = -2147483648 const
scoreboard players operation #a var /= #b var
execute store result storage calculator value double 0.0009765625 run scoreboard players get #a var
data modify storage calculator stack append from storage calculator value


execute if score #div_times var matches 1.. run function math:operation/compute/div_iterate
function math:compute/mul

data remove storage calculator register[-1]