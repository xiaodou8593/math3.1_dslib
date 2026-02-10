#math:world_bfs/main
# math:world_bfs/tick调用
# 实体对象主程序

function math:world_bfs/_get

scoreboard players operation loop int = produce_rate int
execute if score loop int matches 1.. as 0-0-0-0-0 run function math:world_bfs/produce_loop

scoreboard players operation loop int = death_rate int
execute if score loop int matches 1.. as 0-0-0-0-0 run function math:world_bfs/death_loop

function math:world_bfs/_store

execute unless data storage math:io produce_queue[0] \
	unless data storage math:io death_queue[0] \
	run function math:world_bfs/_del