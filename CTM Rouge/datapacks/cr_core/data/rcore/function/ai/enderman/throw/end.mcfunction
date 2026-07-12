data modify entity @s Invulnerable set value false
tag @s remove throwing
scoreboard players set @s interaction -1
scoreboard players operation $this room = @s room
execute on passengers if entity @s[type=player] run function rcore:ai/enderman/throw/player_damage
playsound block.anvil.land master @a ~ ~ ~
particle block{block_state:{Name:"obsidian"}} ~ ~ ~ 0.5 0.5 0.5 0.1 40 force