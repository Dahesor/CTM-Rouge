execute if predicate rcore:player/sneaking run attribute @s knockback_resistance modifier add rcore:sneak_knockres 0.98 add_value
execute if predicate rcore:player/sneaking run effect give @s resistance 1 2
execute unless predicate rcore:player/sneaking run attribute @s knockback_resistance modifier remove rcore:sneak_knockres