if bluetoothctl show | grep 'Powered: yes'; then
  bluetoothctl power off
else
  bluetoothctl power on
  bluetoothctl connect 00:1B:66:BE:29:0A
fi
