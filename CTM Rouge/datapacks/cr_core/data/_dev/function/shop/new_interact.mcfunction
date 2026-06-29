tag @s add pre.game_clear
tag @s add cr.shop_interact
execute if block ~ ~ ~ test_block[mode=accept] run tag @s add cr.shop_interact.normal
execute if block ~ ~ ~ test_block[mode=fail] run tag @s add cr.shop_interact.rare
execute if block ~ ~ ~ test_block[mode=log] run tag @s add cr.shop_interact.fill

execute if entity @s[tag=!cr.shop_interact.fill,tag=!cr.shop_interact.normal,tag=!cr.shop_interact.rare] run return run kill

data merge entity @s {response:true,width:1.1,height:1.1}

setblock ~ ~ ~ air
execute unless entity @s[tag=cr.shop_interact.fill] run setblock ~ ~ ~ barrier


execute unless entity @s[tag=cr.shop_interact.fill] run return 1

setblock ~ ~ ~ redstone_block
setblock ~ ~ ~-1 oak_wall_sign[facing=north]{front_text:{color:"green",has_glowing_text:true,messages:["",{translate:"sign.game.refresh"},"",""]}} keep
setblock ~ ~ ~1 oak_wall_sign[facing=south]{front_text:{color:"green",has_glowing_text:true,messages:["",{translate:"sign.game.refresh"},"",""]}} keep
setblock ~1 ~ ~ oak_wall_sign[facing=east]{front_text:{color:"green",has_glowing_text:true,messages:["",{translate:"sign.game.refresh"},"",""]}} keep
setblock ~-1 ~ ~ oak_wall_sign[facing=west]{front_text:{color:"green",has_glowing_text:true,messages:["",{translate:"sign.game.refresh"},"",""]}} keep

data merge entity @s {response:true,width:1.3,height:1.3}