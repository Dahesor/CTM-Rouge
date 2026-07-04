execute store result score #count calculator.cr run clear @s sponge[custom_data~{isTerraRestore:true}]

execute if score #count calculator.cr matches 1.. run function rcore:core/score/gain/tr

execute if items entity @s armor.head *[custom_data~{item:{id:"light_blue_wool"}}] run function rcore:core/score/gain/light_blue