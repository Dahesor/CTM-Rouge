execute on vehicle on vehicle if entity @s[tag=boss_wool] run return fail
tag @s remove wool.locked

tag @s add __this
execute on vehicle at @s run function rcore:core/wool/lock/plunge
tag @s remove __this

execute if items entity @s contents *[custom_data~{item:{id:"white_wool"}}] run bossbar remove rcore:boss/iron_golem