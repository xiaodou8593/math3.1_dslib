#math:world_bfs/test/scene_1_spawn
# #math:world_bfs/test/scene_1异步调用

#summon item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:glass",count:1b},Tags:["world_bfs_display"],Glowing:1b}
execute unless block ~ ~ ~ air run return run data modify storage math:io cell_info.grow set value 0b
data modify storage math:io cell_info.grow set value 1b
setblock ~ ~ ~ lime_stained_glass