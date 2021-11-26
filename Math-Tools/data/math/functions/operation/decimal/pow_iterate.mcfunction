data modify storage decimal stack append from storage decimal value
function math:decimal/mul
data modify storage decimal value set from storage decimal stack[-1]

scoreboard players operation #sign var = #n var
scoreboard players operation #sign var %= 2 const
execute if score #sign var matches 1 run function math:decimal/mul
execute if score #sign var matches 1 run data modify storage decimal stack append from storage decimal value

# tellraw @a [{"score":{"objective":"var","name":"#n"}}," : ",{"nbt":"value","storage":"decimal"}]

scoreboard players operation #n var /= 2 const

execute if score #n var matches 1.. run function math:operation/decimal/pow_iterate