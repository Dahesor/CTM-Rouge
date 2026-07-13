scoreboard players set @s genericCD 0
scoreboard players set #success calculator.cr 0

data modify storage ram: Owner set from entity @s data.Owner
scoreboard players operation $this interaction = @s interaction

execute anchored eyes positioned ^ ^ ^ as @a[scores={join_game=1..},gamemode=!spectator,distance=..20,limit=4,sort=random] facing entity @s eyes run function rcore:ai/mage/fire/aim
execute anchored eyes positioned ^ ^ ^ facing entity @a[scores={join_game=1..},gamemode=!spectator,distance=..20,tag=__this,limit=1,sort=random] eyes positioned ^ ^ ^1 run function rcore:ai/mage/simple/shoot

tag @a remove __this

execute if score #success calculator.cr matches 1 run effect give @s slowness 4 10 false