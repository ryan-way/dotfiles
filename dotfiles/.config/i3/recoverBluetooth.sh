bluetoothctl disconnect 00:1B:66:BE:29:0A
bluetoothctl remove 00:1B:66:BE:29:0A
bluetoothctl power on
bluetoothctl scan on | grep 00:1B:66:BE:29:0A &
read -p 'Start pairing on headset then press enter when visible...' nothing
bluetoothctl pair 00:1B:66:BE:29:0A
bluetoothctl connect 00:1B:66:BE:29:0A
killall bluetoothctl
