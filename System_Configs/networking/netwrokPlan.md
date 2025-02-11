# Network Architecture

## SOLUTION 1 (CURRENT)
```
HOST (10.10.10.3) ----- (10.10.10.1) IDS (10.10.10.1) -------- (10.10.10.2) KALI
```

## SOLUTION 2
```
HOST (10.0.1.2) ----- (10.0.1.1) IDS (10.0.2.1) -------- (10.0.2.2) KALI


Host (route 10.0.2.0/24 via 10.0.1.1) ,         Kali (route 10.0.1.0/24 via 10.0.2.1)
```