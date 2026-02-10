#math:world_bfs/cell/_store
# 临时对象赋值到实体对象
# 输入执行实体

scoreboard players operation @s x = x int
scoreboard players operation @s y = y int
scoreboard players operation @s z = z int
scoreboard players operation @s generation = generation int
scoreboard players operation @s health = health int
data modify entity @s data.spawn_func set from storage math:io spawn_func
data modify entity @s data.produce_func set from storage math:io produce_func
data modify entity @s data.death_func set from storage math:io death_func
data modify entity @s data.cell_info set from storage math:io cell_info