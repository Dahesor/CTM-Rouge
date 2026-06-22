execute if data storage run: rm{pos_z:true,neg_x:true} run return run data modify storage ram: place.rotation set value "counterclockwise_90"
execute if data storage run: rm{pos_z:true,pos_x:true} run return run data modify storage ram: place.rotation set value "180"
execute if data storage run: rm{neg_z:true,pos_x:true} run return run data modify storage ram: place.rotation set value "clockwise_90"


execute if data storage run: rm{pos_z:true,neg_z:true} run return run data modify storage ram: place.rotation set value "clockwise_90"