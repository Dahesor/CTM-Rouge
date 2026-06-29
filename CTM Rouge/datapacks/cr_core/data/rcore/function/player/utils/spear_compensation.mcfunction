advancement revoke @s only rcore:mech/spear_damage
execute on attacker run tag @s[type=player] add __this

damage @s 8 rcore:spear_compensation by @p[tag=__this]

tag @a[tag=__this] remove __this