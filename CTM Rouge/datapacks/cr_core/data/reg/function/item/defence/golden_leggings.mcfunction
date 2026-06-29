data modify storage reg:item new set value {\
    id:"golden_leggings",\
    rarity:"rare",\
    base_price:14,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"golden_leggings",\
        components:{attribute_modifiers:[{type:"armor","slot":"legs",amount:3d,operation:"add_value",id:"armor.leggings"},{type:"armor_toughness","slot":"legs",amount:1d,operation:"add_value",id:"armor.leggings"}]}\
    }\
}

function reg:item/reg/new