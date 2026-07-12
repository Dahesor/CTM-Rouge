execute unless block ~ ~ ~ #air run return fail
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=1,dy=1,dz=1] run return run tag @s add __this
scoreboard players remove #try calculator.cr 1
execute if score #try calculator.cr matches ..0 run return fail
execute positioned ^ ^ ^0.5 run function rcore:ai/mage/fire/test