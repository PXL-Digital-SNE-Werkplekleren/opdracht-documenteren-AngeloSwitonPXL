# Router Configuratie

<p>
Building configuration...

Current configuration : 1436 bytes<br>
!<br>
version 15.4<br>
no service timestamps log datetime msec<br>
no service timestamps debug datetime msec<br>
service password-encryption<br>
security passwords min-length 8<br>
!<br>
hostname R1<br>
!<br>
login block-for 120 attempts 3 within 60<br>
!<br>
!<br>
enable secret 5 $1$mERr$6ntM9rZIo8y1XNixgfdUi0<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
no ip cef<br>
ipv6 unicast-routing<br>
!<br>
no ipv6 cef<br>
!<br>
!<br>
!<br>
username Angelo secret 5 $1$mERr$6ntM9rZIo8y1XNixgfdUi0<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
ip domain-name Technova.com<br>
!<br>
!<br>
spanning-tree mode pvst<br>
!<br>
!<br>
!<br>
!<br>
!<br>
!<br>
interface GigabitEthernet0/0/0<br>
description Connection to SW-Adm&HR<br>
ip address 192.168.0.1 255.255.255.192<br>
duplex auto<br>
speed auto<br>
ipv6 address `FE80::1:1` link-local<br>
ipv6 address `2001:DB8:1::1/64`<br>
!<br>
interface GigabitEthernet0/0/1<br>
description Connection to SW-Devs<br>
ip address 192.168.0.65 255.255.255.192<br>
duplex auto<br>
speed auto<br>
ipv6 address `FE80::2:1` link-local<br>
ipv6 address `2001:DB8:2::1/64`<br>
!<br>
interface Vlan1<br>
description SSH<br>
no ip address<br>
shutdown<br>
!<br>
ip classless<br>
!<br>
ip flow-export version 9<br>
!<br>
!<br>
ip access-list extended sl_def_acl<br>
deny tcp any any eq telnet<br>
deny tcp any any eq www<br>
deny tcp any any eq 22<br>
permit tcp any any eq 22<br>
!<br>
banner motd ^C<br>
================================================<br>
Authorized Acces Only<br>
================================================<br>
^C<br>
!<br>
!<br>
!<br>
!<br>
line con 0<br>
password 7 082042490C150A464058<br>
login<br>
!<br>
line aux 0<br>
!<br>
line vty 0 4<br>
exec-timeout 6 0<br>
password 7 082042490C150A464058<br>
login local<br>
transport input ssh<br>
!<br>
!<br>
!<br>
End

</p>