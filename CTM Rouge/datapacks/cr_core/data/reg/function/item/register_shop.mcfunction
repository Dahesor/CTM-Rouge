data modify storage reg:shop_pool reg set value [{},{}]

data modify storage reg:shop_pool reg[0].initial append from storage reg:item reg[{rarity:"initial",in_shop:true}]
data modify storage reg:shop_pool reg[0].common append from storage reg:item reg[{rarity:"common",in_shop:true}]
data modify storage reg:shop_pool reg[0].rare append from storage reg:item reg[{rarity:"rare",in_shop:true}]
data modify storage reg:shop_pool reg[0].epic append from storage reg:item reg[{rarity:"epic",in_shop:true}]
data modify storage reg:shop_pool reg[0].legendary append from storage reg:item reg[{rarity:"legendary",in_shop:true}]
data modify storage reg:shop_pool reg[0].mythic append from storage reg:item reg[{rarity:"mythic",in_shop:true}]


data modify storage reg:shop_pool reg[1].initial append from storage reg:item reg[{rarity:"initial",spawner_loot:true}]
data modify storage reg:shop_pool reg[1].common append from storage reg:item reg[{rarity:"common",spawner_loot:true}]
data modify storage reg:shop_pool reg[1].rare append from storage reg:item reg[{rarity:"rare",spawner_loot:true}]
data modify storage reg:shop_pool reg[1].epic append from storage reg:item reg[{rarity:"epic",spawner_loot:true}]
data modify storage reg:shop_pool reg[1].legendary append from storage reg:item reg[{rarity:"legendary",spawner_loot:true}]
data modify storage reg:shop_pool reg[1].mythic append from storage reg:item reg[{rarity:"mythic",spawner_loot:true}]