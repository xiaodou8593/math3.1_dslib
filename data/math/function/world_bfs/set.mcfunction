#math:world_bfs/set
# math:world_bfs/_new调用

data modify entity @s data.produce_queue set from storage math:io input.produce_queue
data modify entity @s data.death_queue set from storage math:io input.death_queue
data modify entity @s data.vis_table set from storage math:io input.vis_table
execute store result score @s cur_iter run data get storage math:io input.cur_iter
execute store result score @s produce_rate run data get storage math:io input.produce_rate
execute store result score @s death_rate run data get storage math:io input.death_rate