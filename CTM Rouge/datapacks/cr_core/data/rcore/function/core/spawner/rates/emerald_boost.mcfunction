scoreboard players remove #player_count calculator.cr 1
scoreboard players operation #player_count calculator.cr *= EMERALD.PLAYER_BOOST options
scoreboard players add #player_count calculator.cr 100

scoreboard players operation #count calculator.cr *= #player_count calculator.cr
scoreboard players operation #count calculator.cr /= #100 calculator.cr