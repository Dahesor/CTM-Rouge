data modify storage dlm: ticket set value {on_load:["function gen:place/erase/__relocate with storage run: prsave"],life:{type:"temp"}}

data modify storage dlm: ticket.pos set from storage ram: pos

execute store result storage ram: pos.x int 1 run scoreboard players operation #dx calculator.cr += #buffer calculator.cr
execute store result storage ram: pos.z int 1 run scoreboard players operation #dz calculator.cr += #buffer calculator.cr

data modify storage dlm: ticket.to set from storage ram: pos

function dlm:new_ticket