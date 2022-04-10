execute store result entity @s Rotation[0] float -0.000000476837158203125 run data get storage calculator vec[0][-1] -2097152
execute rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
data modify storage calculator vec[0][-1] set from entity @s Pos[0]