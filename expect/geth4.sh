#!/usr/bin/expect -f
set DATADIR "/home/lily/poa/node1"
set GENESIS "/home/lily/poa/genesis.json"
set file "test.txt"
set command "admin.nodeInfo.enode"
set prompt ">"
spawn geth attach $DATADIR/geth.ipc 
expect $prompt\r\n
send $command\r 
expect {
        $prompt {append output  $expect_out(buffer);exp_continue} 
	 eof     {append output $expect_out(buffer)}
}
set fid [open /home/lily/TEST/test.txt w+]
set data1 [split $output "\r"]
set data2 [lindex $data1 9]

puts $fid $data2
close $fid
send "exit\r"
expect eof


