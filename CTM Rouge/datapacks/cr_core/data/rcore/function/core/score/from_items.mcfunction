execute store result score #count calculator.cr run clear @s sponge[custom_data~{isTerraRestore:true}]

execute if score #count calculator.cr matches 1.. run function rcore:core/score/gain/tr

execute if items entity @s armor.head *[custom_data~{item:{id:"light_blue_wool"}}] run function rcore:core/score/gain/light_blue
execute if items entity @s armor.head *[custom_data~{item:{id:"light_gray_wool"}}] run function rcore:core/score/gain/light_gray
execute if items entity @s armor.head *[custom_data~{item:{id:"white_wool"}}] run function rcore:core/score/gain/white
execute if items entity @s armor.head *[custom_data~{item:{id:"lime_wool"}}] run function rcore:core/score/gain/lime
execute if items entity @s armor.head *[custom_data~{item:{id:"pink_wool"}}] run function rcore:core/score/gain/pink
execute if items entity @s armor.head *[custom_data~{item:{id:"green_wool"}}] run function rcore:core/score/gain/green
execute if items entity @s armor.head *[custom_data~{item:{id:"black_wool"}}] run function rcore:core/score/gain/black
execute if items entity @s armor.head *[custom_data~{item:{id:"yellow_wool"}}] run function rcore:core/score/gain/yellow
execute if items entity @s armor.head *[custom_data~{item:{id:"magenta_wool"}}] run function rcore:core/score/gain/magenta
execute if items entity @s armor.head *[custom_data~{item:{id:"orange_wool"}}] run function rcore:core/score/gain/orange
execute if items entity @s armor.head *[custom_data~{item:{id:"purple_wool"}}] run function rcore:core/score/gain/purple
