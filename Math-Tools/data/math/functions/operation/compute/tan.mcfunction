execute store result entity @s Rotation[0] float -0.000000476837158203125 run data get storage calculator stack[-1] -2097152
data remove storage calculator stack[-1]
execute rotated as @s run tp @s ^ ^ ^-1
data modify storage calculator stack append from entity @s Pos[0]
execute rotated as @s run tp @s ^ ^ ^1
data modify storage calculator stack append from entity @s Pos[2]
function math:compute/div