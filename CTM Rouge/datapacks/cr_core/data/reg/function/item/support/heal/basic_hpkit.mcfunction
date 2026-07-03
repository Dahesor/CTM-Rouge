data modify storage reg:item new set value {\
    id:"basic_hpkit",\
    rarity:"initial",\
    base_price:5,\
    lore_line_count:6,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"amethyst_shard",\
        components:{item_model:"crouge:basic_hpkit",custom_data:{item:{id:"basic_hpkit",class:"hpkit"},soul_bind:{name:"hpkit"},hpkit:{warm_up:40,interval:30}},consumable:{animation:"brush",has_consume_particles:false,consume_seconds:99999999,sound:"intentionally_empty"},use_effects:{can_sprint:false,interact_vibrations:true,speed_multiplier:0.2}},\
    }\
}

function reg:item/reg/new