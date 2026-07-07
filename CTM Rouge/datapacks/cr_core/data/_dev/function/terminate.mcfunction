schedule function rcore:stream/end/end 10s

tellraw @a {text:"游戏将在10秒后强制结束，点此取消",color:"red",click_event:{action:"run_command",command:"schedule clear rcore:stream/end/end"},underlined:true,bold:true}