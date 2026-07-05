bossbar remove rcore:init/master
bossbar remove rcore:init/sub

bossbar add rcore:init/master {text:"创建地图……",color:"yellow"}
bossbar add rcore:init/sub {text:"查阅注册表……",color:"yellow"}
bossbar set rcore:init/master visible false
bossbar set rcore:init/sub visible false

bossbar set rcore:init/master players @a
bossbar set rcore:init/sub players @a
bossbar set rcore:init/master max 100
bossbar set rcore:init/sub max 100
bossbar set rcore:init/master value 1
bossbar set rcore:init/master value 0

bossbar set rcore:init/master color yellow
bossbar set rcore:init/sub color red
bossbar set rcore:init/master style notched_12
bossbar set rcore:init/sub style progress

bossbar set rcore:init/master visible true
bossbar set rcore:init/sub visible true

