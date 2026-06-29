data modify storage reg:item new set value {\
    id:"advance_player_bow",\
    rarity:"rare",\
    base_price:5,\
    lore_line_count:2,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"bow",\
        components:{max_stack_size:1,item_model:"bow",enchantments:{"rcore:deplayer_power":5},\
        }\
    }\
}

function reg:item/reg/new