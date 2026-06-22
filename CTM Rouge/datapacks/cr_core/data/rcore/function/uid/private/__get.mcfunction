execute if score #last_get UID = #zget UID run return 1
scoreboard players operation #last_get UID = #zget UID
execute store result storage core:player _UID_GET.UID int 1 run scoreboard players get #zget UID
function rcore:uid/private/__rotate with storage core:player _UID_GET