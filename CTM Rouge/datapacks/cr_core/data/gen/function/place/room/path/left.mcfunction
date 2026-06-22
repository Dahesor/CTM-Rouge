function gen:place/selector/path

data modify storage ram: place set value {rotation:"none",mirror:"none",id:"fossil/skull_3",x:32,y:0,z:11}
data modify storage ram: place.id set from storage ram: struct_res.res
function gen:place/room/__place with storage ram: place