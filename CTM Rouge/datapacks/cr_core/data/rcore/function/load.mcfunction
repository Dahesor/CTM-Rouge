scoreboard objectives add calculator.cr dummy
scoreboard objectives add options dummy
scoreboard objectives add data dummy
scoreboard objectives add UID dummy
scoreboard objectives add death deathCount
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add shop_session dummy
scoreboard objectives add interaction dummy
scoreboard objectives add dialog trigger
scoreboard objectives add room dummy
scoreboard objectives add team dummy
scoreboard objectives add revive_cd dummy
scoreboard objectives add join_game dummy
scoreboard objectives add emerald dummy

team add red
team add blue
team add yellow
team add green

team modify red collisionRule pushOtherTeams
team modify blue collisionRule pushOtherTeams
team modify yellow collisionRule pushOtherTeams
team modify green collisionRule pushOtherTeams
team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams




scoreboard players set #-1 calculator.cr -1
scoreboard players set #2 calculator.cr 2
scoreboard players set #3 calculator.cr 3
scoreboard players set #4 calculator.cr 4
scoreboard players set #5 calculator.cr 5
scoreboard players set #50 calculator.cr 50
scoreboard players set #100 calculator.cr 100


data modify storage ram: i set value {i:0}
data modify storage core:player _UID_GET set value {UID:-1}




return 1
data modify storage dlm: ticket set value {dimension:"overworld",pos:[0,0],id:"rcore:ROOT",life:{type:"indefinite"},on_load:["say Loaded Root Ticket"]}
function dlm:new_ticket
tag @s add cr.shop_interact