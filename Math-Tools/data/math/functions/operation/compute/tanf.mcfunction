data modify entity @s Rotation[0] set from storage calculator stack[-1]
data remove storage calculator stack[-1]
execute rotated as @s run tp @s ^ ^ ^-1
data modify storage calculator stack append from entity @s Pos[0]
execute rotated as @s run tp @s ^ ^ ^1
data modify storage calculator stack append from entity @s Pos[2]
function math:compute/div