#!/bin/sh

echo "%{F#000000} %{F#000000}$(/usr/sbin/ifconfig enp2s0 | grep "inet " | awk '{print $2}')%{u-}"
