# x(n+1) = x(n)*[1.5-(0.5k)*x(n)*x(n)]
# debug : tellraw @a ["top : ",{"nbt":"vec[0][-1]","storage":"calculator"}]
data modify storage calculator vec[0] append value 1.5
data modify storage calculator vec[0] append from storage calculator vec[0][-2]
data modify storage calculator vec[0] append from storage calculator vec[0][-2]
data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/mul
function math:compute/mul
function math:compute/sub
function math:compute/mul

scoreboard players remove #sqrt_times var 1
execute if score #sqrt_times var matches 1.. run function math:operation/compute/iterate/sqrt