data modify storage reg:item new set value {\
    id:"advanced_hpkit",\
    rarity:"rare",\
    base_price:26,\
    lore_line_count:5,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"amethyst_shard",\
        components:{item_model:"crouge:advanced_hpkit",custom_data:{item:{id:"advanced_hpkit",class:"hpkit"},hpkit:{warm_up:40,interval:20}},consumable:{animation:"brush",has_consume_particles:false,consume_seconds:99999999,sound:"intentionally_empty"},use_effects:{can_sprint:false,interact_vibrations:true,speed_multiplier:0.2}},\
    }\
}

function reg:item/reg/new