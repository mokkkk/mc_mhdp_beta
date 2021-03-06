# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/dash/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/dash/keyframes/0
execute if score @s AsaMatrix matches 1..6 run tp @s ^0 ^0.05 ^0.5 ~ ~
execute if score @s AsaMatrix matches 7 run function asa_animator:reus/dash/keyframes/1
execute if score @s AsaMatrix matches 7..12 run tp @s ^0 ^-0.05 ^0.5 ~ ~
execute if score @s AsaMatrix matches 13 run function asa_animator:reus/dash/keyframes/2
execute if score @s AsaMatrix matches 13..18 run tp @s ^0 ^0.05 ^0.5 ~ ~
execute if score @s AsaMatrix matches 19 run function asa_animator:reus/dash/keyframes/3
execute if score @s AsaMatrix matches 19..24 run tp @s ^0 ^-0.05 ^0.5 ~ ~
execute if score @s AsaMatrix matches 25.. run function asa_animator:reus/dash/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 敵の方向を向く
function asa_animator:reus/manager/rotate

# 高度調整
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #asa_animator:no_collision run tp @s ~ ~-0.5 ~
execute positioned ^ ^ ^3 unless block ~ ~ ~ #asa_animator:no_collision if block ~ ~1 ~ #asa_animator:no_collision run tp @s ~ ~1 ~

# 敵に十分近づいた場合，噛みつきに遷移
execute positioned ^ ^ ^4 if entity @e[tag=ReusAttackTarget,distance=0..4] run function asa_animator:reus/dash/effect/change