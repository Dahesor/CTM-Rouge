execute unless score @s genericCD matches 5.. run return run scoreboard players add @s genericCD 1
scoreboard players set @s genericCD 0
scoreboard players operation $this room = @s room
execute as @a[scores={join_game=1..},gamemode=!spectator] if score @s room = $this room run title @s actionbar {text:"点击物品以查看详情",color:"yellow"}