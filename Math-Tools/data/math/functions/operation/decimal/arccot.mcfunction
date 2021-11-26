tp @s -1.0 0.0 0.0
data modify entity @s Pos[2] set from storage decimal stack[-1]
execute positioned as @s facing 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute store result storage decimal stack[-1] double -0.000000476837158203125 run data get entity @s Rotation[0] -2097152