#math:world_bfs/test/scene_1_death
# #math:world_bfs/test/scene_1异步调用

#execute positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=world_bfs_display,distance=..0.1]
execute if data storage math:io cell_info{grow:0b} run return fail
setblock ~ ~ ~ air