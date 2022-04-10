data modify entity @s Pos[1] set from storage calculator vec[0][-1]
execute positioned as @s run tp @s ~ ~-1 ~
data modify storage calculator vec[0][-1] set from entity @s Pos[1]