#math:list/_shuffle_seed
# 对列表运行洗牌算法，支持随机种子

scoreboard players operation sstemp_max int = list_n int
scoreboard players operation sstemp_max int *= 16 int

scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 2.. run function math:list/shuffle/loop