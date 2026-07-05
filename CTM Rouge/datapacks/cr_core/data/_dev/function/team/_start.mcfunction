execute if score game data matches 1.. run return fail
execute if score $this input matches ..-1 run function gen:random/seqs
execute if score $this input matches 1.. run scoreboard players operation seed data = $this input
execute if score $this input matches 1.. run function gen:random/fixed
scoreboard players set $clean_only options 0
function rcore:stream/initialize/init