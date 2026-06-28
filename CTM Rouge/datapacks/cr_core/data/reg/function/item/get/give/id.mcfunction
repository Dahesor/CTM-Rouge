#Takes in an #item_count@calculator.cr

$execute unless data storage reg:item reg[{id:"$(id)"}] run return fail
$data modify storage reg:item this set from storage reg:item reg[{id:"$(id)"}]
function reg:item/get/give/this