### Specific to `nodeattr`:
- file `genders`, content;

    `node1 ip=1.2.3.4,mac=ff:cc:ee:dd:aa:bb,cluster=work`
    `node2 ip=1.2.3.5,mac=ff:cc:ee:dd:aa:bc,cluster=work`

- command `./nodeattr -f genders -l node1` return:

    `mac=ff:cc:ee:dd:aa:bb`
    `ip:1.2.3.4`
    `cluster=work`

- command `./nodeattr -f genders -c -A` return:

    `node1,node2`

- command `./nodeattr -f genders -v node1 mac` return:

    `ff:cc:ee:dd:aa:bb`

- a program to update a node single attributes:
    
    Eg: `./update host=node1 mac=aa:bb:cc:dd:ee:ff`