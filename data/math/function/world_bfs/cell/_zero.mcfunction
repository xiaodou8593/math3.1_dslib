#math:world_bfs/cell/_zero
# 把临时对象的全部数据置0

scoreboard players set x int 0
scoreboard players set y int 0
scoreboard players set z int 0
scoreboard players set generation int 0
scoreboard players set health int 0
data modify storage math:io spawn_func set value ""
data modify storage math:io produce_func set value ""
data modify storage math:io death_func set value ""
data modify storage math:io cell_info set value {}