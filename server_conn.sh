#!/usr/bin/env expect

set timeout -1
set user [lindex $argv 0]
set ip [lindex $argv 1]
set password [lindex $argv 2]
set user_cmd [lindex $argv 3]

spawn ssh ${user}@${ip}
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

