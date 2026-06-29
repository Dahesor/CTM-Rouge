data modify storage reg:item new set value {\
    id:"copper_axe",\
    rarity:"rare",\
    base_price:36,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"copper_axe",\
        components:{attribute_modifiers:[{amount:8,type:"attack_damage",id:"minecraft:base_attack_damage",operation:"add_value",slot:"mainhand"},{amount:-3.15,type:"attack_speed",id:"minecraft:base_attack_speed",operation:"add_value",slot:"mainhand"}]}\
    }\
}

function reg:item/reg/new