data modify storage reg:item new set value {\
    id:"speed_2_potion",\
    rarity:"epic",\
    base_price:32,\
    lore_line_count:1,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"potion",\
        components:{potion_contents:{potion:"strong_swiftness",custom_name:"rc_swiftness_2"},enchantment_glint_override:true,"!use_remainder":{},potion_duration_scale:0.8}\
    }\
}

function reg:item/reg/new