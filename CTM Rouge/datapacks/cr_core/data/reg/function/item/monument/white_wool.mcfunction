data modify storage reg:item new set value {\
    id:"white_wool",\
    rarity:"mythic",\
    base_price:640,\
    lore_line_count:4,\
    in_shop:false,\
    spawner_loot:false,\
    stack:{\
        id:"white_wool",\
        components:{\
        max_stack_size:1,\
        custom_data:{item:{class:"wool",id:"white_wool"}},\
        enchantments:{binding_curse:1},\
        equippable:{\
            slot:"head",allowed_entities:"player",equip_on_interact:false,\
            equip_sound:"intentionally_empty",dispensable:false,can_be_sheared:false,\
            damage_on_hurt:false,swappable:false},\
        "minecraft:tooltip_display":{hidden_components:["enchantments"]},\
        damage_resistant:{types:"#rcore:all"},tooltip_style:"crouge:wool/white",\
        item_model:"crouge:wools/white"\
        }\
    }\
}

scoreboard players set wool.white.score const 200

function reg:item/reg/new