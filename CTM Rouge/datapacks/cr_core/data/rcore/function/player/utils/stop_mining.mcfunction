attribute @s block_interaction_range modifier add rcore:no_mining -1 add_multiplied_total

data modify storage dah.sch:new new set value {run:"attribute @s block_interaction_range modifier remove rcore:no_mining",time:2,flags:["location_less"],offline:"pause"}
function dah.sch:new