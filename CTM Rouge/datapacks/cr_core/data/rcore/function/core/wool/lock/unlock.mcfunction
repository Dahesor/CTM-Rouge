execute on vehicle on vehicle if entity @s[tag=boss_wool] run return fail
tag @s remove wool.locked

function rcore:core/wool/lock/fall

execute if items entity @s contents *[custom_data~{item:{id:"white_wool"}}] run bossbar remove rcore:boss/iron_golem
execute if items entity @s contents *[custom_data~{item:{id:"green_wool"}}] run function rcore:core/wool/lock/_green
execute if items entity @s contents *[custom_data~{item:{id:"brown_wool"}}] run bossbar remove rcore:boss/mage
execute if items entity @s contents *[custom_data~{item:{id:"black_wool"}}] run bossbar remove rcore:boss/warden
execute if items entity @s contents *[custom_data~{item:{id:"purple_wool"}}] run bossbar remove rcore:boss/enderman