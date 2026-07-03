advancement revoke @s only rcore:mech/mob_hurt_mining
function rcore:player/utils/stop_mining
execute if score @s tp.cd matches 1.. run function rcore:player/utils/stop_tp
execute if score @s hpkit matches 1.. run function rcore:player/use/hpkit/damage_interrupt