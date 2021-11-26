data modify entity @s Pos[1] set from storage decimal stack[-1]
execute positioned as @s run tp @s ~ ~1 ~
data modify storage decimal stack[-1] set from entity @s Pos[1]