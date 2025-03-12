# Test Bandwith

# Scenario I: HOST <=> IDS
Install tool on every host:
```shell
sudo apt install iperf3
```

1. On IDS:
```shell
iperf3 -s
```
2. On HOST:
```shell
iperf3 -c 10.0.1.1
```
3. Results:
- From host:
```
srogowski@host103:~$ iperf3 -c 10.0.1.1
Connecting to host 10.0.1.1, port 5201
[  5] local 10.0.1.2 port 37150 connected to 10.0.1.1 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   290 MBytes  2.43 Gbits/sec    0   3.92 MBytes
[  5]   1.00-2.00   sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
[  5]   2.00-3.00   sec   288 MBytes  2.41 Gbits/sec    0   3.92 MBytes
[  5]   3.00-4.00   sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
[  5]   4.00-5.00   sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
[  5]   5.00-6.00   sec   288 MBytes  2.41 Gbits/sec    0   3.92 MBytes
[  5]   6.00-7.00   sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
[  5]   7.00-8.00   sec   288 MBytes  2.41 Gbits/sec    0   3.92 MBytes
[  5]   8.00-9.00   sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
[  5]   9.00-10.00  sec   286 MBytes  2.40 Gbits/sec    0   3.92 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.80 GBytes  2.41 Gbits/sec    0             sender
[  5]   0.00-10.05  sec  2.80 GBytes  2.40 Gbits/sec                  receiver

iperf Done.
```
- From IDS:
```
srogowski@IDS-IPS01:~$ iperf3 -s
-----------------------------------------------------------
Server listening on 5201
-----------------------------------------------------------
Accepted connection from 10.0.1.2, port 37144
[  5] local 10.0.1.1 port 5201 connected to 10.0.1.2 port 37150
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   276 MBytes  2.31 Gbits/sec
[  5]   1.00-2.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   2.00-3.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   3.00-4.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   4.00-5.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   5.00-6.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   6.00-7.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   7.00-8.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   8.00-9.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   9.00-10.00  sec   287 MBytes  2.41 Gbits/sec
[  5]  10.00-10.05  sec  13.6 MBytes  2.39 Gbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.05  sec  2.80 GBytes  2.40 Gbits/sec                  receiver
```

# Scenario II: IDS <=> KALI
Install tool on every host:
```shell
sudo apt install iperf3
```

1. On Kali:
```shell
iperf3 -s
```
2. On IDS:
```shell
iperf3 -c 10.0.2.2
```
3. Results:
- From IDS:
```
srogowski@IDS-IPS01:~$ iperf3 -c 10.0.2.2
Connecting to host 10.0.2.2, port 5201
[  5] local 10.0.2.1 port 50182 connected to 10.0.2.2 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   276 MBytes  2.31 Gbits/sec  2794   43.8 KBytes
[  5]   1.00-2.00   sec   282 MBytes  2.37 Gbits/sec  2240    242 KBytes
[  5]   2.00-3.00   sec   279 MBytes  2.34 Gbits/sec  2644    115 KBytes
[  5]   3.00-4.00   sec   280 MBytes  2.35 Gbits/sec  1807   35.4 KBytes
[  5]   4.00-5.00   sec   276 MBytes  2.31 Gbits/sec  1928   89.1 KBytes
[  5]   5.00-6.00   sec   279 MBytes  2.34 Gbits/sec  2537    216 KBytes
[  5]   6.00-7.00   sec   278 MBytes  2.33 Gbits/sec  1886   60.8 KBytes
[  5]   7.00-8.00   sec   273 MBytes  2.29 Gbits/sec  1607   70.7 KBytes
[  5]   8.00-9.00   sec   268 MBytes  2.25 Gbits/sec  1564    182 KBytes
[  5]   9.00-10.00  sec   281 MBytes  2.36 Gbits/sec  2632   82.0 KBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.71 GBytes  2.33 Gbits/sec  21639             sender
[  5]   0.00-10.00  sec  2.70 GBytes  2.32 Gbits/sec                  receiver

iperf Done.
```
- From KALI:
```
┌──(srogowski㉿kali)-[~]
└─$ iperf3 -s
-----------------------------------------------------------
Server listening on 5201 (test #1)
-----------------------------------------------------------
Accepted connection from 10.0.2.1, port 50170
[  5] local 10.0.2.2 port 5201 connected to 10.0.2.1 port 50182
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   274 MBytes  2.29 Gbits/sec
[  5]   1.00-2.00   sec   282 MBytes  2.36 Gbits/sec
[  5]   2.00-3.00   sec   280 MBytes  2.35 Gbits/sec
[  5]   3.00-4.00   sec   280 MBytes  2.35 Gbits/sec
[  5]   4.00-5.00   sec   276 MBytes  2.31 Gbits/sec
[  5]   5.00-6.00   sec   279 MBytes  2.34 Gbits/sec
[  5]   6.00-7.00   sec   277 MBytes  2.33 Gbits/sec
[  5]   7.00-8.00   sec   273 MBytes  2.29 Gbits/sec
[  5]   8.00-9.00   sec   268 MBytes  2.25 Gbits/sec
[  5]   9.00-10.00  sec   281 MBytes  2.36 Gbits/sec
[  5]  10.00-10.00  sec   128 KBytes  3.25 Gbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.00  sec  2.70 GBytes  2.32 Gbits/sec                  receiver
```

# Scenario III: HOST <=> KALI (via IDS)
Install tool on every host:
```shell
sudo apt install iperf3
```

1. On KALI:
```shell
iperf3 -s
```
2. On HOST:
```shell
iperf3 -c 10.0.2.2
```
3. Results:
- From HOST:
```
srogowski@host103:~$ iperf3 -c 10.0.2.2
Connecting to host 10.0.2.2, port 5201
[  5] local 10.0.1.2 port 58268 connected to 10.0.2.2 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   287 MBytes  2.41 Gbits/sec  434   2.75 MBytes
[  5]   1.00-2.00   sec   288 MBytes  2.41 Gbits/sec    0   3.00 MBytes
[  5]   2.00-3.00   sec   286 MBytes  2.40 Gbits/sec    0   3.21 MBytes
[  5]   3.00-4.00   sec   288 MBytes  2.41 Gbits/sec   41   2.38 MBytes
[  5]   4.00-5.00   sec   286 MBytes  2.40 Gbits/sec    0   2.49 MBytes
[  5]   5.00-6.00   sec   286 MBytes  2.40 Gbits/sec    0   2.57 MBytes
[  5]   6.00-7.00   sec   288 MBytes  2.41 Gbits/sec    0   2.63 MBytes
[  5]   7.00-8.00   sec   286 MBytes  2.40 Gbits/sec    0   2.68 MBytes
[  5]   8.00-9.00   sec   286 MBytes  2.40 Gbits/sec  285   1.38 MBytes
[  5]   9.00-10.00  sec   285 MBytes  2.39 Gbits/sec    0   1.52 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.80 GBytes  2.40 Gbits/sec  760             sender
[  5]   0.00-10.01  sec  2.80 GBytes  2.40 Gbits/sec                  receiver

iperf Done.
```
- From KALI:
```
┌──(srogowski㉿kali)-[~]
└─$  iperf3 -s
-----------------------------------------------------------
Server listening on 5201 (test #1)
-----------------------------------------------------------
Accepted connection from 10.0.1.2, port 58258
[  5] local 10.0.2.2 port 5201 connected to 10.0.1.2 port 58268
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   284 MBytes  2.38 Gbits/sec
[  5]   1.00-2.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   2.00-3.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   3.00-4.00   sec   287 MBytes  2.40 Gbits/sec
[  5]   4.00-5.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   5.00-6.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   6.00-7.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   7.00-8.00   sec   287 MBytes  2.41 Gbits/sec
[  5]   8.00-9.00   sec   286 MBytes  2.39 Gbits/sec
[  5]   9.00-10.00  sec   286 MBytes  2.40 Gbits/sec
[  5]  10.00-10.01  sec  1.38 MBytes  2.58 Gbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.01  sec  2.80 GBytes  2.40 Gbits/sec                  receiver
```