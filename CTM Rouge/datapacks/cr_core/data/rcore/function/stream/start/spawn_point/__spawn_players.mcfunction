execute as @a[scores={join_game=1..}] if score @s team = $this team run tag @s add __this

gamemode adventure @a[tag=__this]
$execute in overworld run tp @a[tag=__this] $(x) $(y) $(z)
execute as @a[tag=__this] at @s run playsound item.totem.use master @s ~ ~ ~

tag @a remove __this