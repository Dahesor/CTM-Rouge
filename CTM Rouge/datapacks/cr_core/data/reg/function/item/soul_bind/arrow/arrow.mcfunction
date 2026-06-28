data modify storage reg:item new set value {\
    id:"soul_bind_arrow",\
    rarity:"initial",\
    base_price:5,\
    lore_line_count:4,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"arrow",\
        components:{custom_data:{soul_bind:{name:"arrow"}},max_stack_size:1,enchantment_glint_override:true,item_model:"arrow"\
        }\
    }\
}

scoreboard players set soul_bind_arrow.cd const 40

function reg:item/reg/new