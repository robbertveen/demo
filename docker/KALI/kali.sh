#!/bin/bash

CONTAINERNAME="KALI_RCV"
docker build -t kalilinux/kali-bleeding-edge .
docker run -t -d --name KALI-RCV -p 25900:5900 -p 25901:5901 kalilinux/kali-bleeding-edge:latest



