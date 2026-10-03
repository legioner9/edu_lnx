#!/bin/bash

SRCD="/home/"                #SRCD - SouRCe Directory - исходный каталог
TGTD="/var/backups/"         #TGTD - TarGeT Directory - конечный каталог
OF=home-$(date +%Y%m%d).tgz  #OF - Output File - выходной файл
tar -cZf $TGTD"$OF" $SRCD

