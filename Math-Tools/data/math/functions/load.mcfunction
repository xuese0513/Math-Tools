scoreboard objectives add const dummy
scoreboard objectives add var dummy

scoreboard players set 2 const 2
scoreboard players set -2147483648 const -2147483648

scoreboard players set #div_iters const 3
scoreboard players set #sqrt_iters const 6
scoreboard players set #log_iters const 20

forceload add -1 -1 1 1

data merge storage templates {Modifiers:[{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"multiply_base", Amount:1.0d, Operation:1, UUID:[I;1,0,0,0]}, {Name:"multiply", Amount:1.0d, Operation:2, UUID:[I;2,0,0,0]}]}
data merge storage templates {Vector2D:[0.0d, 0.0d]}
data merge storage templates {Vector3D:[0.0d, 0.0d, 0.0d]}


data merge storage calculator {stack:[], Modifiers:[], register:[], vectors:[], value:0.0d}

kill @e[tag=gpoint]
# processing any geometrical calculation: geometric-point
summon area_effect_cloud 0.0 0.0 0.0 {Duration:2147483647,Invulnerable:1,Tags:["gpoint"]}
