execute if entity @s[tag=wool.locked] run return fail

execute if entity @s[tag=wool.idle] run return run tag @s add __this

execute if score @s genericCD matches 1200.. run return run tag @s add __this

execute if score @s team = $this team run return run tag @s add __this