scoreboard players set #team_count calculator.cr 0
execute if score #red calculator.cr matches 1.. run scoreboard players add #team_count calculator.cr 1
execute if score #blue calculator.cr matches 1.. run scoreboard players add #team_count calculator.cr 1
execute if score #yellow calculator.cr matches 1.. run scoreboard players add #team_count calculator.cr 1
execute if score #green calculator.cr matches 1.. run scoreboard players add #team_count calculator.cr 1


scoreboard players set #team_major calculator.cr -1
scoreboard players set #most_count calculator.cr 0

#execute if score #red calculator.cr = #most_count calculator.cr run scoreboard players set #team_major calculator.cr -1
execute if score #red calculator.cr > #most_count calculator.cr run scoreboard players set #team_major calculator.cr 1
execute if score #red calculator.cr > #most_count calculator.cr run scoreboard players operation #most_count calculator.cr = #red calculator.cr

execute if score #blue calculator.cr = #most_count calculator.cr run scoreboard players set #team_major calculator.cr -1
execute if score #blue calculator.cr > #most_count calculator.cr run scoreboard players set #team_major calculator.cr 2
execute if score #blue calculator.cr > #most_count calculator.cr run scoreboard players operation #most_count calculator.cr = #blue calculator.cr

execute if score #yellow calculator.cr = #most_count calculator.cr run scoreboard players set #team_major calculator.cr -1
execute if score #yellow calculator.cr > #most_count calculator.cr run scoreboard players set #team_major calculator.cr 3
execute if score #yellow calculator.cr > #most_count calculator.cr run scoreboard players operation #most_count calculator.cr = #yellow calculator.cr

execute if score #green calculator.cr = #most_count calculator.cr run scoreboard players set #team_major calculator.cr -1
execute if score #green calculator.cr > #most_count calculator.cr run scoreboard players set #team_major calculator.cr 4
execute if score #green calculator.cr > #most_count calculator.cr run scoreboard players operation #most_count calculator.cr = #green calculator.cr
