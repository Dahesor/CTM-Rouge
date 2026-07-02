scoreboard players operation $this floor = $this room
scoreboard players operation $this floor /= floor.room_count options
$execute if score $this floor matches 0 unless data storage map: ground.tp[{urid:$(i)}] run return fail
$execute if score $this floor matches 1 unless data storage map: upper.tp[{urid:$(i)}] run return fail
$execute if score $this floor matches 2 unless data storage map: top.tp[{urid:$(i)}] run return fail

$execute if score $this floor matches 0 run data modify storage run: color set from storage map: ground.tp[{urid:$(i)}].team
$execute if score $this floor matches 1 run data modify storage run: color set from storage map: upper.tp[{urid:$(i)}].team
$execute if score $this floor matches 2 run data modify storage run: color set from storage map: top.tp[{urid:$(i)}].team
execute if score $this team matches 1 if data storage run: {color:"red"} run return 1
execute if score $this team matches 2 if data storage run: {color:"blue"} run return 1
execute if score $this team matches 3 if data storage run: {color:"yellow"} run return 1
execute if score $this team matches 4 if data storage run: {color:"green"} run return 1
return fail