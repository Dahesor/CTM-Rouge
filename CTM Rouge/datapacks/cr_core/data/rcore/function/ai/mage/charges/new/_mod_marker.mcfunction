tag @s add magic_charge
tag @s add game_clear
scoreboard players operation @s interaction = $this interaction

execute positioned ^ ^ ^1.3 run function rcore:ai/mage/charges/new/_motion
tp @s ~ ~ ~ ~ ~

scoreboard players operation @s interaction = $this interaction
data modify entity @s data.Owner set from storage ram: Owner

#summon corresponding snowball
execute if score @s interaction matches 1 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"wind_charge"}}
execute if score @s interaction matches 2 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"blaze_powder"}}
execute if score @s interaction matches 3 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"black_glazed_terracotta"}}
execute if score @s interaction matches 4 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"slime_ball"}}
execute if score @s interaction matches 5 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"heart_of_the_sea"}}
execute if score @s interaction matches 6 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"cactus"}}
execute if score @s interaction matches 7 run summon snowball ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,Item:{id:"blue_ice"}}
execute if score @s interaction matches 8 run summon creeper ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,ignited:true,Fuse:40,ExplosionRadius:3,attributes:[{base:0.5d,id:"scale"}]}
execute if score @s interaction matches 9 run summon creeper ~ ~ ~ {Tags:["magic_charge","game_clear","__unintialized"],NoGravity:true,ignited:true,Fuse:80,attributes:[{base:0.5d,id:"scale"},{base:1.0d,id:"knockback_resistance"},{base:1.0d,id:"explosion_knockback_resistance"}],powered:true,ExplosionRadius:5}


ride @s mount @n[type=snowball,tag=magic_charge,tag=__unintialized,distance=..3]
ride @s mount @n[type=creeper,tag=magic_charge,tag=__unintialized,distance=..3]

execute on vehicle run tag @s remove __unintialized

execute on vehicle run data modify entity @s Motion set from storage run: motion
execute on vehicle store result entity @s Air short 1 run scoreboard players get #loop_20 calculator.cr