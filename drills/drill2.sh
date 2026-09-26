#!/bin/bash
# The lines below runs the command:

#Pipes
curl -o harry_potter_book.txt https://raw.githubusercontent.com/bobdeng/owlreader/master/ERead/assets/books/Harry%20Potter%20and%20the%20Goblet%20of%20Fire.txt
tail -n 3 harry_potter_book.txt
head -n 10 harry_potter_book.txt
grep -ow "Harry" harry_potter_book.txt | wc -w
grep -ow "Ron" harry_potter_book.txt | wc -w
grep -ow "Hermione" harry_potter_book.txt | wc -w
grep -ow "Dumbledore" harry_potter_book.txt | wc -w
sed -n "100,200p" harry_potter_book.txt
sort harry_potter_book.txt | uniq | wc -w

#Processes, ports
ps aux -h | grep brave
pkill brave
ps -eo pid,%cpu,comm --sort=-%cpu | head -4
ps -eo pid,%mem,comm --sort=-%mem | head -4
python3 -m http.server 8000
ps aux | grep "[p]ython3 -m http.server 8000" | awk '{print $2}' | xargs kill -9
sudo python3 -m http.server 90
ps aux | grep "[p]ython -m http.server 90" | awk '{print $2}' | xargs sudo kill
ss -tunap
sudo ss -lunpt | grep ":5432"

#Managing software
sudo apt install htop vim nginx
sudo apt remove nginx

#Misc
ip addr
host google.com
ping -c 4 goole.com
where node
where code
