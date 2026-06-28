tag @s add __tellraw_self
scoreboard players operation #target team = @s team
execute if data storage ram: broadcast.self run tellraw @s {storage:"ram:",nbt:"broadcast.self",interpret:true}
execute if data storage ram: broadcast.teammate as @a[scores={join_game=1..},tag=!__tellraw_self] if score @s team = #target team run tellraw @s {storage:"ram:",nbt:"broadcast.teammate",interpret:true}
execute if data storage ram: broadcast.enemy as @a[scores={join_game=1..}] unless score @s team = #target team run tellraw @s {storage:"ram:",nbt:"broadcast.enemy",interpret:true}
execute if data storage ram: broadcast.spectator as @a unless score @s join_game matches 1.. run tellraw @s {storage:"ram:",nbt:"broadcast.spectator",interpret:true}
tag @s remove __tellraw_self