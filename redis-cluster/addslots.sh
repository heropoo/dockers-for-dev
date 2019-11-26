#!/bin/sh
# node1
n=0
for ((i=n;i<=5461;i++))
do
   redis-cli -h 127.0.0.1 -p 7000 -a 123123  CLUSTER ADDSLOTS $i
done
 
 
# node2 
n=5462
for ((i=n;i<=10922;i++))
do
   redis-cli -h 127.0.0.1 -p 7010 -a 123123 CLUSTER ADDSLOTS $i
done
 
 
# node3 
n=10923
for ((i=n;i<=16383;i++))
do
   redis-cli -h 127.0.0.1 -p 7020 -a 123123 CLUSTER ADDSLOTS $i
done
