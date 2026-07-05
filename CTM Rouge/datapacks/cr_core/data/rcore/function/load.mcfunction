scoreboard objectives add calculator.cr dummy
scoreboard objectives add const dummy
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
scoreboard objectives add monitor.spawner_mined mined:spawner
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add rot_xz dummy
scoreboard objectives add map_z dummy
scoreboard objectives add map_font dummy
scoreboard objectives add map_x dummy
scoreboard objectives add floor dummy
scoreboard objectives add map.edge dummy
scoreboard objectives add soul.bow_type dummy
scoreboard objectives add soul.arrow_type dummy
scoreboard objectives add soul.arrow_cd dummy
scoreboard objectives add soul.arrow_charge_time dummy
scoreboard objectives add soul.hpkit dummy
scoreboard objectives add genericCD dummy
scoreboard objectives add reciving dummy
scoreboard objectives add input trigger
scoreboard objectives add tp.target dummy
scoreboard objectives add tp.cd dummy
scoreboard objectives add viewing_map dummy
scoreboard objectives add hpkit dummy
scoreboard objectives add wool.sneak dummy

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

schedule function rcore:entity_load 2s

scoreboard players set #-1 calculator.cr -1
scoreboard players set #2 calculator.cr 2
scoreboard players set #3 calculator.cr 3
scoreboard players set #4 calculator.cr 4
scoreboard players set #5 calculator.cr 5
scoreboard players set #6 calculator.cr 6
scoreboard players set #7 calculator.cr 7
scoreboard players set #8 calculator.cr 8
scoreboard players set #9 calculator.cr 9
scoreboard players set #10 calculator.cr 10
scoreboard players set #12 calculator.cr 12
scoreboard players set #16 calculator.cr 16
scoreboard players set #18 calculator.cr 18
scoreboard players set #20 calculator.cr 20
scoreboard players set #50 calculator.cr 50
scoreboard players set #100 calculator.cr 100
scoreboard players set #360 calculator.cr 360
scoreboard players set #1200 calculator.cr 1200


data modify storage ram: i set value {i:0}
data modify storage core:player _UID_GET set value {UID:-1}




return 1
data modify storage dlm: ticket set value {dimension:"overworld",pos:[0,0],id:"rcore:ROOT",life:{type:"indefinite"},on_load:["say Loaded Root Ticket"]}
function dlm:new_ticket
tag @s add cr.shop_interact