# x(n+1) = [2-kx(n)]x(n)

data modify storage calculator stack append value 2.0
data modify storage calculator stack append from storage calculator stack[-2]
data modify storage calculator stack append from storage calculator register[-1]
function math:compute/mul
function math:compute/sub
function math:compute/mul

scoreboard players remove #div_times var 1
execute if score #div_times var matches 1.. run function math:operation/compute/div_iterate