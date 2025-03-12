
# Test Latency


```
srogowski@host103:~$ ping -c 10 10.0.2.2
PING 10.0.2.2 (10.0.2.2) 56(84) bytes of data.
64 bytes from 10.0.2.2: icmp_seq=1 ttl=63 time=0.945 ms
64 bytes from 10.0.2.2: icmp_seq=2 ttl=63 time=0.984 ms
64 bytes from 10.0.2.2: icmp_seq=3 ttl=63 time=0.964 ms
64 bytes from 10.0.2.2: icmp_seq=4 ttl=63 time=0.930 ms
64 bytes from 10.0.2.2: icmp_seq=5 ttl=63 time=1.03 ms
64 bytes from 10.0.2.2: icmp_seq=6 ttl=63 time=1.06 ms
64 bytes from 10.0.2.2: icmp_seq=7 ttl=63 time=1.12 ms
64 bytes from 10.0.2.2: icmp_seq=8 ttl=63 time=1.05 ms
64 bytes from 10.0.2.2: icmp_seq=9 ttl=63 time=1.13 ms
64 bytes from 10.0.2.2: icmp_seq=10 ttl=63 time=1.02 ms

--- 10.0.2.2 ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 9012ms
rtt min/avg/max/mdev = 0.930/1.024/1.133/0.066 ms
```

```
┌──(srogowski㉿kali)-[~]
└─$ ping -c 10 10.0.1.2
PING 10.0.1.2 (10.0.1.2) 56(84) bytes of data.
64 bytes from 10.0.1.2: icmp_seq=1 ttl=63 time=0.939 ms
64 bytes from 10.0.1.2: icmp_seq=2 ttl=63 time=0.935 ms
64 bytes from 10.0.1.2: icmp_seq=3 ttl=63 time=1.01 ms
64 bytes from 10.0.1.2: icmp_seq=4 ttl=63 time=0.987 ms
64 bytes from 10.0.1.2: icmp_seq=5 ttl=63 time=0.987 ms
64 bytes from 10.0.1.2: icmp_seq=6 ttl=63 time=1.08 ms
64 bytes from 10.0.1.2: icmp_seq=7 ttl=63 time=0.916 ms
64 bytes from 10.0.1.2: icmp_seq=8 ttl=63 time=1.14 ms
64 bytes from 10.0.1.2: icmp_seq=9 ttl=63 time=0.954 ms
64 bytes from 10.0.1.2: icmp_seq=10 ttl=63 time=1.10 ms

--- 10.0.1.2 ping statistics ---
10 packets transmitted, 10 received, 0% packet loss, time 9012ms
rtt min/avg/max/mdev = 0.916/1.004/1.135/0.071 ms
```