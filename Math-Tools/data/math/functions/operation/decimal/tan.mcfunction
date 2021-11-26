data modify entity @s Rotation[0] set from storage decimal stack[-1]
data remove storage decimal stack[-1]
execute rotated as @s run tp @s ^ ^ ^-1
data modify storage decimal stack append from entity @s Pos[0]
execute rotated as @s run tp @s ^ ^ ^1
data modify storage decimal stack append from entity @s Pos[2]
function math:decimal/div