tellraw @s "生成了三向建筑模版"

setblock ~ ~-1 ~ structure_block[mode=save]{author:"?",integrity:1.0f,mirror:"NONE",mode:"SAVE",ignoreEntities:false,posX:1,posY:1,posZ:1,showboundingbox:true,showair:false,sizeX:32,sizeY:36,sizeZ:32,rotation:"NONE",name:"three_way:"}
setblock ~ ~-1 ~-1 light[level=15]
fill ~-3 ~-2 ~ ~3 ~-2 ~-4 stone


fill ~14 ~15 ~ ~19 ~15 ~ gold_block
fill ~14 ~20 ~ ~19 ~20 ~ gold_block
fill ~14 ~15 ~ ~14 ~20 ~ gold_block
fill ~19 ~15 ~ ~19 ~20 ~ gold_block

fill ~ ~15 ~14 ~ ~15 ~19 gold_block
fill ~ ~20 ~14 ~ ~20 ~19 gold_block
fill ~ ~15 ~14 ~ ~20 ~14 gold_block
fill ~ ~15 ~19 ~ ~20 ~19 gold_block



fill ~33 ~15 ~14 ~33 ~15 ~19 gold_block
fill ~33 ~20 ~14 ~33 ~20 ~19 gold_block
fill ~33 ~15 ~19 ~33 ~20 ~19 gold_block
fill ~33 ~15 ~14 ~33 ~20 ~14 gold_block
