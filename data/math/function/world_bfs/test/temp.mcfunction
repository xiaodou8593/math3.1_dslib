#math:world_bfs/test/temp

tellraw @a "--- world_bfs temp test ---"

function math:world_bfs/init
function math:world_bfs/cell/init
function math:world_bfs/cell/_clear

# 制作细胞数据模板
function math:world_bfs/cell/_zero
scoreboard players set health int 50
data modify storage math:io spawn_func set value "math:world_bfs/test/scene_1_spawn"
data modify storage math:io produce_func set value "math:world_bfs/test/scene_1_produce"
data modify storage math:io death_func set value "math:world_bfs/test/scene_1_death"
function math:world_bfs/cell/_model

data modify storage math:io input set from storage math:io result
function math:world_bfs/_join_cell

function math:world_bfs/_print_len
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
function math:world_bfs/_print_len
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_produce
function math:world_bfs/_print_len

execute as @e[tag=math_marker,limit=1] run function math:world_bfs/_iter_death
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

function math:world_bfs/_print_len