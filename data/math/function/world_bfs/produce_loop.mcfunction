#math:world_bfs/produce_loop
# math:world_bfs/main调用

execute unless data storage math:io produce_queue[0] run return run scoreboard players set cur_iter int 2147483647
function math:world_bfs/_iter_produce

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:world_bfs/produce_loop