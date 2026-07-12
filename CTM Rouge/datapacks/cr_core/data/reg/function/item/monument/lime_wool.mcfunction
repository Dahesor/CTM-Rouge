data modify storage reg:item new set value {\
    id:"lime_wool",\
    rarity:"mythic",\
    base_price: 120,\
    lore_line_count:4,\
    in_shop:true,\
    spawner_loot:false,\
    stack:{\
        id:"lime_wool",\
        components:{\
        max_stack_size:1,\
        "minecraft:custom_data":{item:{class:"wool",id:"lime_wool"}},\
        enchantments:{binding_curse:1},\
        equippable:{\
            slot:"head",allowed_entities:"player",equip_on_interact:false,\
            equip_sound:"intentionally_empty",dispensable:false,can_be_sheared:false,\
            damage_on_hurt:false,swappable:false},\
        "minecraft:tooltip_display":{hidden_components:["enchantments"]},\
        damage_resistant:{types:"#rcore:all"},"minecraft:tooltip_style":"crouge:wool/lime",\
        item_model:"crouge:wools/lime"\
        }\
    }\
}

scoreboard players set wool.lime.score const 220

function reg:item/reg/new