scoreboard players operation $this dialog = @s dialog
scoreboard players set @s dialog 0
scoreboard players enable @s dialog

execute if score $this dialog matches 1 run return run function rcore:menu/map/show
execute if score $this dialog matches 2 run return run function rcore:menu/map/close
execute if score $this dialog matches 10 run return run function rcore:menu/map/action/request_select_tp