#math:world_bfs/test/scene_1

tellraw @a "--- world_bfs scene_1 test ---"

function math:world_bfs/init
function math:world_bfs/cell/init
function math:world_bfs/cell/_clear

# 制作细胞数据模板
function math:world_bfs/cell/_zero
scoreboard players set x int 200
scoreboard players set y int -58
scoreboard players set z int 50
scoreboard players set health int 1
data modify storage math:io spawn_func set value "math:world_bfs/test/scene_1_spawn"
data modify storage math:io produce_func set value "math:world_bfs/test/scene_1_produce"
data modify storage math:io death_func set value "math:world_bfs/test/scene_1_death"
function math:world_bfs/cell/_model
data modify storage math:io input set from storage math:io result
function math:world_bfs/_join_cell
function math:world_bfs/_model

# 制作迭代器数据模板
data modify storage math:io input set from storage math:io result
function math:world_bfs/_new
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "math:world_bfs/main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
execute as @e[tag=result,limit=1] run function math:world_bfs/_get
function math:world_bfs/_print