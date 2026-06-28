scoreboard players set #item_count calculator.cr 1
$execute unless data storage reg:item reg[{id:"$(id)"}] run return fail
$data modify storage reg:item this set from storage reg:item reg[{id:"$(id)"}]
function reg:item/get/give/this