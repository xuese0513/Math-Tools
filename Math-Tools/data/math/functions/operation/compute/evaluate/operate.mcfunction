data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers set from storage calculator Modifiers
data modify storage calculator vec[0] append value 0.0

# shift 31-10=21 bits
# negative-check
execute store result score #check var run attribute @s minecraft:generic.movement_speed get -2097152
# restore the attribute from single entity is better than from a scoreboard
execute unless score #check var matches 0 store result storage calculator vec[0][-1] double -0.000000476837158203125 run attribute @s minecraft:generic.movement_speed get -2097152

# recalculate is necessary for negative number
execute if score #check var matches 0 run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers set value [{Name:"negative", Amount:-2.0d, Operation:2, UUID:[I;2,0,0,0]}]
execute if score #check var matches 0 store result storage calculator vec[0][-1] double 0.000000476837158203125 run attribute @s minecraft:generic.movement_speed get -2097152

data modify storage calculator Modifiers set value []
kill @s
