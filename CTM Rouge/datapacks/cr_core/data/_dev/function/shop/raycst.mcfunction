execute if block ~ ~ ~ test_block align xyz positioned ~0.5 ~ ~0.5 run return run function _dev:shop/target
execute unless entity @s[distance=..9] run return run say Failed: Not Found
execute positioned ^ ^ ^0.1 run function _dev:shop/raycst