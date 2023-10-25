#!/usr/bin/env expect

set timeout -1
set user [lindex $argv 0]
set ip [lindex $argv 1]
set port [lindex $argv 2]
set password [lindex $argv 3]
set user_cmd [lindex $argv 4]

spawn ssh ${user}@${ip} -p ${port}
expect {
    "yes/no" {
        send "yes\r"
        exp_continue
    }
    "password" {
        send "${password}\r"
        exp_continue
    }
    "${user}" {
        send "${user_cmd}\r"
    }
}

interact

