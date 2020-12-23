#!/bin/bash

screen -dm bash -c "./ohpserver -port 5555 -proxy 127.0.0.1:1130 -tunnel 127.0.0.1:225"
screen -dm bash -c "./ohpserver -port 7788 -proxy 127.0.0.1:1130 -tunnel 127.0.0.1:990"
