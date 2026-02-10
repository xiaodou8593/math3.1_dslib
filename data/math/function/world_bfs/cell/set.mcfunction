#math:world_bfs/cell/set
# math:world_bfs/cell/_new调用

execute store result score @s x run data get storage math:io input.position[0]
execute store result score @s y run data get storage math:io input.position[1]
execute store result score @s z run data get storage math:io input.position[2]
execute store result score @s generation run data get storage math:io input.generation
execute store result score @s health run data get storage math:io input.health
data modify entity @s data.spawn_func set from storage math:io input.spawn_func
data modify entity @s data.produce_func set from storage math:io input.produce_func
data modify entity @s data.death_func set from storage math:io input.death_func
data modify entity @s data.cell_info set from storage math:io input.cell_info