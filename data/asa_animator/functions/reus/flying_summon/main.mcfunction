# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/flying/start
execute if score @s AsaMatrix matches 1 run function asa_animator:reus/flying/keyframes/0
execute if score @s AsaMatrix matches 1..15 run tp @s ^0 ^-0.5 ^0.01333333
execute if score @s AsaMatrix matches 16 run function asa_animator:reus/flying/keyframes/1
execute if score @s AsaMatrix matches 16..30 run tp @s ^0 ^-0.5 ^-0.01333333

execute if score @s AsaMatrix matches 31 run function asa_animator:reus/flying/keyframes/0
execute if score @s AsaMatrix matches 31..45 run tp @s ^0 ^-0.5 ^0.01333333
execute if score @s AsaMatrix matches 46 run function asa_animator:reus/flying/keyframes/1
execute if score @s AsaMatrix matches 46..60 run tp @s ^0 ^-0.5 ^-0.01333333

execute if score @s AsaMatrix matches 61 run function asa_animator:reus/flying/keyframes/0
execute if score @s AsaMatrix matches 61..75 run tp @s ^0 ^-0.5 ^0.01333333
execute if score @s AsaMatrix matches 76 run function asa_animator:reus/flying/keyframes/1
execute if score @s AsaMatrix matches 76..90 run tp @s ^0 ^-0.5 ^-0.01333333

execute if score @s AsaMatrix matches 91.. run function asa_animator:reus/flying_summon/end
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate
function asa_animator:reus/model

# 効果音
execute if score @s AsaMatrix matches 15 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 45 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
execute if score @s AsaMatrix matches 75 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7