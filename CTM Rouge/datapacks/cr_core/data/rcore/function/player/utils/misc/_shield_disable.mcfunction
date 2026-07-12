summon armor_stand ~ ~ ~ {Tags:["shield_disable","game_clear"],NoGravity:true,Invulnerable:true,ShowArms:true,equipment:{mainhand:{id:"wooden_axe"}}}
damage @s 0.01 rcore:spear_compensation by @n[type=armor_stand,tag=shield_disable,distance=..3]
kill @n[type=armor_stand,tag=shield_disable,distance=..3]
playsound item.shield.break master @a