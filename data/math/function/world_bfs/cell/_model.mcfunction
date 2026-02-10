#math:world_bfs/cell/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {position:[0.0d, 0.0d, 0.0d], generation:0, health:0, spawn_func:"", produce_func:"", death_func:"", cell_info:{}}

execute store result storage math:io result.position[0] double 1 run scoreboard players get x int
execute store result storage math:io result.position[1] double 1 run scoreboard players get y int
execute store result storage math:io result.position[2] double 1 run scoreboard players get z int
execute store result storage math:io result.generation int 1 run scoreboard players get generation int
execute store result storage math:io result.health int 1 run scoreboard players get health int
data modify storage math:io result.spawn_func set from storage math:io spawn_func
data modify storage math:io result.produce_func set from storage math:io produce_func
data modify storage math:io result.death_func set from storage math:io death_func
data modify storage math:io result.cell_info set from storage math:io cell_info