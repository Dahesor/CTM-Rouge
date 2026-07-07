data modify storage reg:item new set value {\
    id:"magenta_wool",\
    rarity:"mythic",\
    base_price: 120,\
    lore_line_count:4,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"magenta_wool",\
        components:{\
        max_stack_size:1,\
        custom_data:{item:{class:"wool",id:"magenta_wool"}},\
        enchantments:{binding_curse:1},\
        equippable:{\
            slot:"head",allowed_entities:"player",equip_on_interact:false,\
            equip_sound:"intentionally_empty",dispensable:false,can_be_sheared:false,\
            damage_on_hurt:false,swappable:false},\
        "minecraft:tooltip_display":{hidden_components:["enchantments"]},\
        damage_resistant:{types:"#rcore:all"},tooltip_style:"crouge:wool/magenta",\
        item_model:"crouge:wools/magenta"\
        }\
    }\
}

scoreboard players set wool.magenta.score const 240

function reg:item/reg/new