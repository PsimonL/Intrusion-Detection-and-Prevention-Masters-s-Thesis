# Network Architecture

## SOLUTION 1: Internet connection
```
                                             (172.20.136.1/16) [ens18] => ... => Internet
                                                                  |
                                                              NAT |
                                                                  |
HOST [enp6s21] (10.10.10.3/24) ----- (DW: 10.10.10.1/24) [ens21] IDS [ens21] (DW: 10.10.10.1/24) ----- (10.10.10.2/24) [eth3] KALI
```

## SOLUTION 2: Lab for Intrusion Detection and Pentest
```
HOST [enp6s19] (10.0.1.2/24) ----- (10.0.1.1/24) [ens19] IDS [ens20] (10.0.2.1/24) ----- (10.0.2.2/24) [eth2] KALI

Host (route 10.0.2.0/24 via 10.0.1.1)                                                    Kali (route 10.0.1.0/24 via 10.0.2.1)
```