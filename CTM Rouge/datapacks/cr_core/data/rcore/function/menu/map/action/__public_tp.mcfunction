function rcore:math/team_list/self_score_rotate
$execute if score $this floor matches 1 if data storage team: data[0].map.upper.grid.cells[][{urid:$(i),type:"public_tp"}] run return 1
$execute if score $this floor matches 2 if data storage team: data[0].map.top.grid.cells[][{urid:$(i),type:"public_tp"}] run return 1
return fail