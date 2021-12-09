data modify entity @s Rotation[0] set from storage calculator stack[-1]
execute rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
data modify storage calculator stack append from entity @s Pos[0]