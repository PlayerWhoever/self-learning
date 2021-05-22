#!/bin/bash
host_addr=`ip route get 1 | awk '{print $NF;exit}'`
echo "$host_addr"
conn_num=0
timeout=3
until [ $conn_num -gt 1 ]; do
    conn_num=$(ping -c 4 -w $timeout $host_addr | grep icmp_seq | wc -l)
    echo "$conn_num"
    sleep 5.0 
done