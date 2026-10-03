#!/bin/bash

./tmp.sh && echo "bam" || (sudo ./tmp.sh && echo "bam" || echo "fail")
