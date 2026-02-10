#math:world_bfs/death_loop
# math:world_bfs/main调用

execute unless data storage math:io death_queue[0] run return fail
function math:world_bfs/_iter_death
execute if score res int matches 0 run return fail

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:world_bfs/death_loop