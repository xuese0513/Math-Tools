# x(n+1) = x(n)*[1.5-k*x(n)*x(n)]
# debug : tellraw @a ["top : ",{"nbt":"stack[-1]","storage":"calculator"}]
data modify storage calculator stack append value 1.5
data modify storage calculator stack append from storage calculator stack[-2]
data modify storage calculator stack append from storage calculator stack[-2]
data modify storage calculator stack append from storage calculator register[-1]
function math:compute/mul
function math:compute/mul
function math:compute/sub
function math:compute/mul

scoreboard players remove #sqrt_times var 1
execute if score #sqrt_times var matches 1.. run function math:operation/compute/sqrt_iterate