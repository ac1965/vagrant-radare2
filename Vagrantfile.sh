#!/bin/sh

# Updates
sudo pacman -Syu
sudo pacman -S cmake


git clone --depth=1 https://github.com/radareorg/radare2 && (cd radare2 && ./sys/install.sh)

r2pm init
for repo in r2dec r2ghidra-dec
do
	r2pm -i ${repo}
done
