#!/bin/bash

dates="$(date +%s)"

fn(){
   printf $(date +%s)>&1
}

fn