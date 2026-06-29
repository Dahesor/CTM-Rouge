data modify storage reg:item new set value {\
    id:"copper_sword",\
    rarity:"common",\
    base_price:6,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"copper_sword",\
        components:{attribute_modifiers:[{amount:4.5,type:"attack_damage",id:"minecraft:base_attack_damage",operation:"add_value",slot:"mainhand"},{amount:-2.4,type:"attack_speed",id:"minecraft:base_attack_speed",operation:"add_value",slot:"mainhand"}]}\
    }\
}

function reg:item/reg/new