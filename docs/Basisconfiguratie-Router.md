# Basisconfiguratie Router

Deze pagina bevat een beknopte basisconfiguratie voor een router (Cisco-achtig). Pas hostnames, IP-adressen en interfaces aan op je eigen netwerk.

## Voorbeeldconfiguratie

### 1) Algemene instellingen

```
hostname Router1
no ip domain-lookup
enable secret MySecretPassword
service password-encryption
ip ssh version 2
line con 0
 password consolepass
 login
line vty 0 4
 login
 transport input ssh
```

### 2) Interfaces (voorbeeld)

```
interface GigabitEthernet0/0
 description WAN link
 ip address 203.0.113.2 255.255.255.252
 no shutdown

interface GigabitEthernet0/1
 description LAN network
 ip address 192.168.10.1 255.255.255.0
 no shutdown
```

### 3) Routing en NAT

```
ip route 0.0.0.0 0.0.0.0 203.0.113.1

access-list 1 permit 192.168.10.0 0.0.0.255
ip nat inside source list 1 interface GigabitEthernet0/0 overload

interface GigabitEthernet0/1
 ip nat inside

interface GigabitEthernet0/0
 ip nat outside
```

### 4) Opslaan

```
write memory
```

> Tip: Controleer met `show running-config`, `show ip interface brief` en `show ip route`.
