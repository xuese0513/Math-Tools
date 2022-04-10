data modify storage calculator vec[0] append from storage calculator register[-2]
data modify storage calculator vec[0] append from storage calculator register[-1]
function math:compute/mul
data modify storage calculator register[-2] set from storage calculator vec[0][-1]
data modify storage calculator vec[0] append value 0.0
execute store result storage calculator vec[0][-1] double 1 run scoreboard players get #log_div var
function math:compute/div
function math:compute/add

scoreboard players add #log_div var 2
scoreboard players remove #log_times var 1
execute if score #log_times var matches 1.. run function math:operation/compute/iterate/ln