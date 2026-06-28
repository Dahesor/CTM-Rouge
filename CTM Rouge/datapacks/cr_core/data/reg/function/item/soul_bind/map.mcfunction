data modify storage reg:item new set value {\
    id:"player_map",\
    rarity:"initial",\
    base_price:5,\
    lore_line_count:2,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"paper",\
        components:{custom_data:{soul_bind:{name:"player_map"}},max_stack_size:1,enchantment_glint_override:true,item_model:"filled_map",\
            consumable:{animation:"spyglass",consume_seconds:99999999,sound:"intentionally_empty",has_consume_particles:false}\
        }\
    }\
}

function reg:item/reg/new