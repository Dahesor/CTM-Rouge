function gen:place/selector/path

data modify storage ram: place set value {rotation:"clockwise_90",mirror:"none",id:"fossil/skull_3",x:20,y:0,z:32}
data modify storage ram: place.id set from storage ram: struct_res.res
function gen:place/room/__place with storage ram: place