#!/usr/bin/expect
set commit test
set passwd arst
set timeout 30

spawn git add .
spawn git commit -m $commit
spawn git push -f origin master
expect {
    "*id_rsa':" { send "$passwd\r" }
}
interact
