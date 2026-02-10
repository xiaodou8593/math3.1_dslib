#math:world_bfs/cell/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage math:io input

execute store result score x int run data get storage math:io input.position[0]
execute store result score y int run data get storage math:io input.position[1]
execute store result score z int run data get storage math:io input.position[2]
execute store result score generation int run data get storage math:io input.generation
execute store result score health int run data get storage math:io input.health
data modify storage math:io spawn_func set from storage math:io input.spawn_func
data modify storage math:io produce_func set from storage math:io input.produce_func
data modify storage math:io death_func set from storage math:io input.death_func
data modify storage math:io cell_info set from storage math:io input.cell_info