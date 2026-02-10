#math:world_bfs/cell/_get
# 实体对象赋值到临时对象
# 输入执行实体

scoreboard players operation x int = @s x
scoreboard players operation y int = @s y
scoreboard players operation z int = @s z
scoreboard players operation generation int = @s generation
scoreboard players operation health int = @s health
data modify storage math:io spawn_func set from entity @s data.spawn_func
data modify storage math:io produce_func set from entity @s data.produce_func
data modify storage math:io death_func set from entity @s data.death_func
data modify storage math:io cell_info set from entity @s data.cell_info