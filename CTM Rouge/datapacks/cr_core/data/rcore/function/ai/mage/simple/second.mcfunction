execute unless entity @s[tag=initialized] run function rcore:ai/mage/simple/save_to_score

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 3.. run function rcore:ai/mage/simple/fire