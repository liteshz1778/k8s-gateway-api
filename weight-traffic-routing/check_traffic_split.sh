#!/bin/bash


for i in $(seq 1 10); do curl -sX GET http://$(hostname -i):31654 -H "Host: www.example.com" | grep pod; done;
