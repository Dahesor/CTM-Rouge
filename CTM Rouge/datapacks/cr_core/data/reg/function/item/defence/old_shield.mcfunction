data modify storage reg:item new set value {\
    id:"old_shield",\
    rarity:"rare",\
    base_price:24,\
    lore_line_count:3,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"shield",\
        components:{"minecraft:blocks_attacks":{disable_cooldown_scale:2,damage_reductions:[{base:3,factor:0.9}]}}\
    }\
}

function reg:item/reg/new