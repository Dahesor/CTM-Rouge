$execute unless data storage map: ground.tp[{urid:$(i)}] run return fail

$data modify storage run: color set from storage map: ground.tp[{urid:$(i)}].team
execute if score $this team matches 1 if data storage run: {color:"red"} run return 1
execute if score $this team matches 2 if data storage run: {color:"blue"} run return 1
execute if score $this team matches 3 if data storage run: {color:"yellow"} run return 1
execute if score $this team matches 4 if data storage run: {color:"green"} run return 1
return fail