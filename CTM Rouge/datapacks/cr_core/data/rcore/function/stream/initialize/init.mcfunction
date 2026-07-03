tellraw @a {text:"[DEBUG] Initializing",color:"dark_gray"}
scoreboard players set score.red data 0
scoreboard players set score.green data 0
scoreboard players set score.blue data 0
scoreboard players set score.yellow data 0
scoreboard players set stair.0_1.open data 0
scoreboard players set secrect.f0.stof1 data 0
scoreboard players reset @a soul.bow_type
scoreboard players reset @a soul.arrow_type
scoreboard players reset @a soul.hpkit
scoreboard players reset @a tp.cd
scoreboard players reset @a tp.target
scoreboard players operation @a soul.arrow_charge_time = soul_bind_arrow.cd const
scoreboard players set #unique_room_id calculator.cr -1

tellraw @a [{text:"[DEBUG] 种子: ",color:"green"},{score:{name:"seed",objective:"data"}}]

tellraw @a {text:"[DEBUG] Preparing Map. You might feel lag",color:"dark_gray"}

function gen:params
scoreboard players set $callback calculator.cr 1
scoreboard players operation floor.base.x options = floor_0.x data
scoreboard players operation floor.base.y options = floor_0.y data
scoreboard players operation floor.base.z options = floor_0.z data
function gen:place/erase

function rcore:stream/initialize/floor_range