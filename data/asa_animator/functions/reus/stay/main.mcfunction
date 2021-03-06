# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/stay/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/stay/keyframes/0
execute if score @s AsaMatrix matches 1..20 run tp @s ^0 ^-0.005 ^0.005
execute if score @s AsaMatrix matches 21 run function asa_animator:reus/stay/keyframes/1
execute if score @s AsaMatrix matches 21..40 run tp @s ^0 ^-0.005 ^0.005
execute if score @s AsaMatrix matches 41 run function asa_animator:reus/stay/keyframes/2
execute if score @s AsaMatrix matches 41..60 run tp @s ^0 ^0.005 ^-0.005
execute if score @s AsaMatrix matches 61 run function asa_animator:reus/stay/keyframes/3
execute if score @s AsaMatrix matches 61..80 run tp @s ^0 ^0.005 ^-0.005
execute if score @s AsaMatrix matches 81.. run function asa_animator:reus/stay/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 位置調整
execute unless block ~ ~-0.1 ~ #asa_animator:no_collision run tp @s ~ ~0.1 ~
execute if block ~ ~-0.05 ~ #asa_animator:no_collision run tp @s ~ ~-0.05 ~

# 行動開始
execute if score @s AsaMatrix matches 10 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 20 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 30 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 40 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 50 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 60 if predicate asa_animator:random/020 run function asa_animator:reus/manager/change
execute if score @s AsaMatrix matches 70 if predicate asa_animator:random/070 run function asa_animator:reus/manager/change