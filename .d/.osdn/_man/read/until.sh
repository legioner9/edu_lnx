#!/usr/bin/env bash
unset COMPRESSION_ENABLED
unset COMPRESSION_CHOICE
until [[ $COMPRESSION_ENABLED =~ (y|n) ]]; do
    # read -rp"Enable compression? ^[y/n]: " -e -i n COMPRESSION_ENABLED
    read -rp"Enable compression? ^[y/n]: " -i n COMPRESSION_ENABLED
done

until [[ $COMPRESSION_CHOICE =~ ^[1-3]$ ]]; do
    # read -rp"Compression algorithm [1-3]: " -e -i 1 COMPRESSION_CHOICE
    read -rp"Compression algorithm [1-3]: " -i 1 COMPRESSION_CHOICE
done
