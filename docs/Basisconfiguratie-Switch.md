# Basisconfiguratie Switch

Voorbeeld van een eenvoudige basisconfiguratie voor een managed switch (Cisco-achtig). Pas VLANs en poorten aan volgens je netwerkontwerp.

## Voorbeeldconfiguratie

### 1) Hostnaam en algemene instellingen

```
hostname Switch1
no ip domain-lookup
enable secret MySwitchSecret
service password-encryption
```

### 2) Management VLAN en IP

```
vlan 1
 name default

interface Vlan1
 ip address 192.168.10.2 255.255.255.0
 no shutdown
```

### 3) Poorten en VLAN-toewijzing

```
interface range GigabitEthernet0/1 - 24
 switchport mode access
 switchport access vlan 10
 spanning-tree portfast
```

### 4) Trunk naar router

```
interface GigabitEthernet0/48
 switchport trunk encapsulation dot1q
 switchport mode trunk
 switchport trunk allowed vlan 10,20
```

### 5) Opslaan en controleren

```
write memory
show running-config
show vlan brief
```

> Tip: Beveilig management-toegang met ACLs en gebruik SSH voor afstandsbeheer.
