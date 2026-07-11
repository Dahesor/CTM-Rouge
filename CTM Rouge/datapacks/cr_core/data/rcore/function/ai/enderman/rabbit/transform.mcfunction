attribute @s max_health base set 16
data merge entity @s[type=rabbit] {RabbitType:99,Health:16f}
attribute @s armor base set 8
tag @s remove pre.killer_rabit
tag @s add killer_rabit
particle crimson_spore ~ ~ ~ 0.05 0.05 0.05 0.5 80 force @a