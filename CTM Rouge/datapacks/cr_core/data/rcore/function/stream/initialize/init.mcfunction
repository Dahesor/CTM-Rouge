scoreboard players set score.red data 0
scoreboard players set score.green data 0
scoreboard players set score.blue data 0
scoreboard players set score.yellow data 0
scoreboard players set stair.0_1.open data 0
scoreboard players set secrect.f0.stof1 data 0
scoreboard players set light_blue_wool.taken data 0
scoreboard players set yellow_wool.taken data 0
scoreboard players set white_wool.taken data 0
scoreboard players set pink_wool.taken data 0
scoreboard players set lime_wool.taken data 0
scoreboard players set light_gray_wool.taken data 0
scoreboard players set green_wool.taken data 0
scoreboard players set black_wool.taken data 0
scoreboard players set magenta_wool.taken data 0
scoreboard players set yellow_wool.taken data 0
scoreboard players reset @a soul.bow_type
scoreboard players reset @a soul.arrow_type
scoreboard players reset @a soul.hpkit
scoreboard players reset @a tp.cd
scoreboard players reset @a tp.target
scoreboard players operation @a soul.arrow_charge_time = soul_bind_arrow.cd const
scoreboard players set #unique_room_id calculator.cr -1

function rcore:stream/initialize/bossbar/make

function gen:params
function reg:re_regsiter_all
schedule function rcore:stream/initialize/floor/start_clean 1s

function rcore:stream/initialize/floor_range
function rcore:menu/sidebar/init