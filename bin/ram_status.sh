#!/bin/bash
# 
ramUse= free -h | grep Mem | awk '{print " " $3}'

