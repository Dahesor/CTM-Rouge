say building map, please wait...
say Lag is possible
scoreboard players set score.red data 0
scoreboard players set score.green data 0
scoreboard players set score.blue data 0
scoreboard players set score.yellow data 0
scoreboard players reset @a soul.bow_type
scoreboard players reset @a soul.arrow_type
scoreboard players reset @a tp.cd
scoreboard players reset @a tp.target
scoreboard players operation @a soul.arrow_charge_time = soul_bind_arrow.cd const
function gen:place/erase