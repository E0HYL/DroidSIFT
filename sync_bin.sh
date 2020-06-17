#!/bin/sh
rm -R ./bin/mySoot/
cp -r ~/yueduan/WorkSpace/APIGraph/bin/mySoot ./bin/

rm -r /home/yueduan/yueduan/transblocker/graphMatching/*class
cp -r /home/yueduan/yueduan/WorkSpace/test/bin/* /home/yueduan/yueduan/transblocker/graphMatching
