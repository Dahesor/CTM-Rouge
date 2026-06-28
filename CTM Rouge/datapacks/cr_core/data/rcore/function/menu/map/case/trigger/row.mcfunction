data modify storage ram: thisPlMap.compiled[0][-1].extra prepend from storage ram: text[0][-1].extra[0]

data modify storage ram: dialog.dialog.body[0].contents append from storage ram: thisPlMap.compiled[0]
data modify storage ram: dialog.dialog.body[0].contents append from storage ram: thisPlMap.compiled[1]

data remove storage ram: thisPlMap.compiled[0]
data remove storage ram: thisPlMap.compiled[0]
data remove storage ram: text[0]
data remove storage ram: text[0]

execute if data storage ram: thisPlMap.compiled[0] run function rcore:menu/map/case/trigger/row