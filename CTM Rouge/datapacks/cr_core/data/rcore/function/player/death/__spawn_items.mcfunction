$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot rcore:mech/drop_emerald
$execute if score #item_count calculator.cr matches 1.. positioned $(x) $(y) $(z) positioned ~ ~1 ~ run function reg:item/get/spawn


# after
$execute if score #drop_wool calculator.cr matches 1 positioned $(x) $(y) $(z) positioned ~ ~1 ~ run function rcore:core/wool/player/drop