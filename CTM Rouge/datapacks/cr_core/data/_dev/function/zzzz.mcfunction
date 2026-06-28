data modify storage ram: thisPlMap set from storage team: data[0].map.ground
tag @a add map.show
function rcore:team/map/render/this

data modify storage ram: dialog.dialog set value {type:"notice",title:"",body:[{type:"plain_message",contents:{font:"crouge:map",text:"",shadow_color:0},width:300}],pause: false}
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled
function rcore:menu/render/dialog with storage ram: dialog

#dialog show @s {type:"notice",title:"",body:[{type:"plain_message",contents:{font:"crouge:map",text:"r-h-r-h-r-h-r-h-r-h-n-h-r-h-r-h-r-h-r-N-\n*v+N+N+v+v+v+v+v+v+v+\nr-h-r-h-r-h-r-h-r-h-r-h-r-h-r-h-r-h-r-N-\n*v+v+v+v+v+v+v+v+v+v+",shadow_color:0},width:300}]}