summon slime ~ ~ ~ {Size:3,Tags:["slime_king_sup","game_clear"],PersistenceRequired:true}
execute as @n[type=slime,tag=slime_king_sup,distance=..10,tag=!initialized] run function rcore:ai/slime/scatter/sup_self

scoreboard players remove @s interaction 1