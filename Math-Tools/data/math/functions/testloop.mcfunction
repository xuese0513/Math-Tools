data modify storage calculator vec[-1] append value 0.0
execute store result storage calculator vec[-1][-1] double 1.0 run scoreboard players get #count var

scoreboard players remove #count var 1
execute if score #count var matches 1.. run function math:testloop