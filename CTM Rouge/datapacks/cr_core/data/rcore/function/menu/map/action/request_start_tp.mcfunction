scoreboard players operation @s tp.target = $this input
scoreboard players remove @s tp.target 100

execute if function rcore:menu/map/action/check_legal run return run function rcore:menu/map/action/establish_tp

function rcore:menu/map/action/invalid_tp_request