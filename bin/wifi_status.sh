#!/bin/sh

echo " %{F#000000}$(/usr/sbin/ifconfig wlp5s0 | grep "inet " | awk '{print $2}')%{u-}"
