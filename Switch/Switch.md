# Switch Configuratie
<p>

Building configuration...

Current configuration : 1761 bytes<br>
!<br>
version 15.0<br>
no service timestamps log datetime msec<br>
no service timestamps debug datetime msec<br>
service password-encryption<br>
!<br>
hostname SW-Adm&HR<br>
!<br>
enable secret 5 $1$mERr$6ntM9rZIo8y1XNixgfdUi0<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
spanning-tree mode pvst<br>
spanning-tree extend system-id<br>
!<br>
interface FastEthernet0/1<br>
description Connection to pc 13<br>
!<br>
interface FastEthernet0/2<br>
description Connection to pc 14<br>
!<br>
interface FastEthernet0/3<br>
description Connection to pc 15<br>
!<br>
interface FastEthernet0/4<br>
description Connection to pc 16<br>
!<br>
interface FastEthernet0/5<br>
description Connection to pc 17<br>
!<br>
interface FastEthernet0/6<br>
description Connection to pc 18<br>
!<br>
interface FastEthernet0/7<br>
description Connection to pc 19<br>
!<br>
interface FastEthernet0/8<br>
description Connection to pc 20<br>
!<br>
interface FastEthernet0/9<br>
!<br>
interface FastEthernet0/10<br>
!<br>
interface FastEthernet0/11<br>
!<br>
interface FastEthernet0/12<br>
!<br>
interface FastEthernet0/13<br>
!<br>
interface FastEthernet0/14<br>
!<br>
interface FastEthernet0/15<br>
!<br>
interface FastEthernet0/16<br>
!<br>
interface FastEthernet0/17<br>
!<br>
interface FastEthernet0/18<br>
!<br>
interface FastEthernet0/19<br>
!<br>
interface FastEthernet0/20<br>
!<br>
interface FastEthernet0/21<br>
!<br>
interface FastEthernet0/22<br>
!<br>
interface FastEthernet0/23<br>
!<br>
interface FastEthernet0/24<br>
!<br>
interface GigabitEthernet0/1<br>
description Connection to R1 G0/0/0<br>
!<br>
interface GigabitEthernet0/2<br>
!<br>
interface Vlan1<br>
ip address 192.168.0.2 255.255.255.192<br>
!<br>
ip default-gateway 192.168.0.1<br>
!<br>
banner motd ^C<br>
==========================================<br>
Authorized Peronnnel Only <br>
==========================================<br>
^C<br>
!<br>
!<br>
!<br>
line con 0<br>
password 7 082042490C150A464058<br>
login<br>
!<br>
line vty 0 4<br>
password 7 082042490C150A464058<br>
login<br>
transport input telnet<br>
line vty 5 15<br>
password 7 082042490C150A464058<br>
login<br>
transport input telnet<br>
!<br>
!<br>
!<br>
!<br>
end

<p>
