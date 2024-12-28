#math:list/test/shuffle_seed

tellraw @a "--- list shuffle_seed test ---"

# 把列表传输到临时对象
data modify storage math:io list set value ["a", "b", "c", "d", "e", "f"]
execute store result score list_n int if data storage math:io list[]
scoreboard players set list_phi int 0

# 设置随机种子
scoreboard players set rand_seed int 35284112

# 洗牌随机迭代
function math:list/_shuffle_seed
function math:list/_print

function math:list/_shuffle_seed
function math:list/_print

function math:list/_shuffle_seed
function math:list/_print