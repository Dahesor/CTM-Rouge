execute if entity @s[gamemode=spectator] run return fail
execute at @s run summon item ~ ~ ~ {Item:{id:"barrier",components:{custom_data:{__temp_item:true},item_model:"air"}},PickupDelay:200s,Age:5990s,Tags:["__temp_item","legal_drop"]}
data modify storage run: UUID set from entity @s UUID
execute as @e[tag=__temp_item] run function reg:item/get/private/__give_item_self