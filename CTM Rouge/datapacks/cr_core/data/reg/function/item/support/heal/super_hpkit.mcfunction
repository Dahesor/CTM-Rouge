data modify storage reg:item new set value {\
    id:"super_hpkit",\
    rarity:"epic",\
    base_price:50,\
    lore_line_count:5,\
    in_shop:true,\
    spawner_loot:true,\
    stack:{\
        id:"amethyst_shard",\
        components:{item_model:"crouge:super_hpkit",custom_data:{item:{id:"super_hpkit",class:"hpkit"},hpkit:{warm_up:30,interval:15}},consumable:{animation:"brush",has_consume_particles:false,consume_seconds:99999999,sound:"intentionally_empty"},use_effects:{can_sprint:false,interact_vibrations:true,speed_multiplier:0.2}},\
    }\
}

function reg:item/reg/new