# 
# input : pair of double number[a, b] stored in decimal:stack[-2, -1]
# calculate : a / b
# output : decimal:stack[-1]
# 

scoreboard players operation #div_times var = #div_iters const

execute store result score #b var run data get storage decimal stack[-1] -2097152
data modify storage decimal variables append from storage decimal stack[-1]
data remove storage decimal stack[-1]

scoreboard players operation #a var = -2147483648 const
scoreboard players operation #a var /= #b var
execute store result storage decimal value double 0.0009765625 run scoreboard players get #a var
data modify storage decimal stack append from storage decimal value


execute if score #div_times var matches 1.. run function math:operation/decimal/div_iterate
function math:decimal/mul

data remove storage decimal variables[-1]