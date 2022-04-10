scoreboard objectives add const dummy
scoreboard objectives add var dummy

scoreboard players set 2 const 2
scoreboard players set -2147483648 const -2147483648

scoreboard players set #div_iters const 3
scoreboard players set #sqrt_iters const 6

forceload add -1 -1 1 1

data merge storage templates {Modifiers:[{Name:"add", Amount:0.0d, Operation:0, UUID:[I;0,0,0,0]},{Name:"multiply_base", Amount:1.0d, Operation:1, UUID:[I;1,0,0,0]}, {Name:"multiply", Amount:1.0d, Operation:2, UUID:[I;2,0,0,0]}]}
data merge storage templates {Vector2D:[0.0d, 0.0d]}
data merge storage templates {Vector3D:[0.0d, 0.0d, 0.0d]}
data merge storage templates {pi:3.14159265358979323846264338327950288419716939937510d}
data merge storage templates {e:2.71828182845904523536028747135266249775724709369995d}

data merge storage calculator {Modifiers:[], register:[], vec:[[]], value:0.0d}
# vec[0] : double floating stack (for general purpose of decimal computation)

kill @e[tag=gpoint]
# processing any geometrical calculation: geometric-point
summon marker 0.0 0.0 0.0 {Tags:["gpoint"]}

gamerule maxCommandChainLength 65536