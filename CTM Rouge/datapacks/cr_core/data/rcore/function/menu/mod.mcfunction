scoreboard players operation $this dialog = @s dialog
scoreboard players set @s dialog 0
scoreboard players enable @s dialog

execute if score $this dialog matches 999 run return run dialog clear @s
execute if score $this dialog matches 1 run return run function rcore:menu/map/show
execute if score $this dialog matches 2 run return run function rcore:menu/map/close
execute if score $this dialog matches 5 run return run function rcore:menu/map/action/last_map
execute if score $this dialog matches 6 run return run function rcore:menu/map/action/next_map
execute if score $this dialog matches 10 run return run function rcore:menu/map/action/request_select_tp
execute if score $this dialog matches 100 run return run function rcore:shop/cashier/request_purchase
execute if score $this dialog matches 101 run return run function rcore:shop/cashier/refresh/request

execute if score $this dialog matches 1001 run return run function rcore:player/utils/unstuck
execute if score $this dialog matches 9001 run return run function rcore:menu/op/request