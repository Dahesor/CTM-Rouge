data modify storage reg:item new set value {\
    id:"magic_hpkit",\
    rarity:"legendary",\
    base_price:99,\
    lore_line_count:5,\
    in_shop:true,\
    spawner_loot:false,\
    stack:{\
        id:"amethyst_shard",\
        components:{item_model:"crouge:magic_hpkit",custom_data:{item:{id:"magic_hpkit",class:"hpkit"},hpkit:{warm_up:20,interval:10}},consumable:{animation:"brush",has_consume_particles:false,consume_seconds:99999999,sound:"intentionally_empty"},use_effects:{can_sprint:false,interact_vibrations:true,speed_multiplier:0.2}},\
    }\
}

function reg:item/reg/new