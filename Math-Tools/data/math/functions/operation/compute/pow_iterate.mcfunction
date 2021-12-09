data modify storage calculator stack append from storage calculator value
function math:compute/mul
data modify storage calculator value set from storage calculator stack[-1]

scoreboard players operation #sign var = #n var
scoreboard players operation #sign var %= 2 const
execute if score #sign var matches 1 run function math:compute/mul
execute if score #sign var matches 1 run data modify storage calculator stack append from storage calculator value

scoreboard players operation #n var /= 2 const

execute if score #n var matches 1.. run function math:operation/compute/pow_iterate