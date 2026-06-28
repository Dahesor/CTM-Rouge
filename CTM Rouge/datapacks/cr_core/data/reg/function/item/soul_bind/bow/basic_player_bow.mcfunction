data modify storage reg:item new set value {\
    id:"basic_player_bow",\
    rarity:"initial",\
    base_price:5,\
    lore_line_count:3,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"bow",\
        components:{custom_data:{soul_bind:{name:"deplayer_bow"}},max_stack_size:1,item_model:"bow",enchantments:{"rcore:deplayer_power":4},\
        }\
    }\
}

function reg:item/reg/new