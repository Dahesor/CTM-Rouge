data modify storage reg:item new set value {\
    id:"blue_wool",\
    rarity:"mythic",\
    base_price: 120,\
    lore_line_count:5,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"blue_wool",\
        components:{\
        max_stack_size:1,\
        custom_data:{item:{class:"wool",id:"blue_wool"}},\
        enchantments:{binding_curse:1},\
        equippable:{\
            slot:"head",allowed_entities:"player",equip_on_interact:false,\
            equip_sound:"intentionally_empty",dispensable:false,can_be_sheared:false,\
            damage_on_hurt:false,swappable:false},\
        "minecraft:tooltip_display":{hidden_components:["enchantments"]},\
        damage_resistant:{types:"#rcore:all"},"minecraft:tooltip_style":"crouge:wool/blue",\
        item_model:"crouge:wools/blue"\
        }\
    }\
}

scoreboard players set wool.blue.score const 200

function reg:item/reg/new