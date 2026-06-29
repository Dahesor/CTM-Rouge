data modify storage reg:item new set value {\
    id:"golden_chestplate",\
    rarity:"rare",\
    base_price:20,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"golden_chestplate",\
        components:{attribute_modifiers:[{type:"armor","slot":"chest",amount:5d,operation:"add_value",id:"armor.chestplate"},{type:"armor_toughness","slot":"chest",amount:1d,operation:"add_value",id:"armor.chestplate"}]}\
    }\
}

function reg:item/reg/new