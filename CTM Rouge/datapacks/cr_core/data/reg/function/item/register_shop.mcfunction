data modify storage reg:shop_pool reg set value [{}]

data modify storage reg:shop_pool reg[0].initial append from storage reg:item reg[{rarity:"initial",in_shop:true}]
data modify storage reg:shop_pool reg[0].common append from storage reg:item reg[{rarity:"common",in_shop:true}]
data modify storage reg:shop_pool reg[0].rare append from storage reg:item reg[{rarity:"rare",in_shop:true}]
data modify storage reg:shop_pool reg[0].epic append from storage reg:item reg[{rarity:"epic",in_shop:true}]
data modify storage reg:shop_pool reg[0].legendary append from storage reg:item reg[{rarity:"legendary",in_shop:true}]
data modify storage reg:shop_pool reg[0].mythic append from storage reg:item reg[{rarity:"mythic",in_shop:true}]