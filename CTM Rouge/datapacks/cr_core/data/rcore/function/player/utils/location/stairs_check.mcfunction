tag @s remove in_stairs
tag @s remove in_stairs.up
tag @s remove in_stairs.down

data modify storage ram: map set from storage map: stairs
function rcore:player/utils/location/_stairs_check