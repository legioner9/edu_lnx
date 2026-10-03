#!/usr/bin/env bash

loc=/usr/local/bin/tldr  # elevated privileges needed for some locations
sudo wget -qO $loc https://4e4.win/tldr
sudo chmod +x $loc
