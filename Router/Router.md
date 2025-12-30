# Router Configuratie

<p>
Building configuration...

Current configuration : 1436 bytes
!
version 15.4
no service timestamps log datetime msec
no service timestamps debug datetime msec
service password-encryption
security passwords min-length 8
!
hostname R1
!
login block-for 120 attempts 3 within 60
!
!
enable secret 5 $1$mERr$6ntM9rZIo8y1XNixgfdUi0
!
!
!
!
!
!
no ip cef
ipv6 unicast-routing
!
no ipv6 cef
!
!
!
username Angelo secret 5 $1$mERr$6ntM9rZIo8y1XNixgfdUi0
!
!
!
!
!
!
!
!
!
!
ip domain-name Technova.com
!
!
spanning-tree mode pvst
!
!
!
!
!
!
interface GigabitEthernet0/0/0
description Connection to SW-Adm&HR
ip address 192.168.0.1 255.255.255.192
duplex auto
speed auto
ipv6 address FE80::1:1 link-local
ipv6 address 2001:DB8:1::1/64
!
interface GigabitEthernet0/0/1
description Connection to SW-Devs
ip address 192.168.0.65 255.255.255.192
duplex auto
speed auto
ipv6 address FE80::2:1 link-local
ipv6 address 2001:DB8:2::1/64
!
interface Vlan1
description SSH
no ip address
shutdown
!
ip classless
!
ip flow-export version 9
!
!
ip access-list extended sl_def_acl
deny tcp any any eq telnet
deny tcp any any eq www
deny tcp any any eq 22
permit tcp any any eq 22
!
banner motd ^C
================================================
Authorized Acces Only
================================================
^C
!
!
!
!
line con 0
password 7 082042490C150A464058
login
!
line aux 0
!
line vty 0 4
exec-timeout 6 0
password 7 082042490C150A464058
login local
transport input ssh
!
!
!
End

</p>