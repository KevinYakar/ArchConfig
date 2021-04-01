#!/bin/bash

fmt="\e[48;5;%dm   \e[0m"
echo
echo "256 Colors ($fmt)"
echo
for i in {0..7} ; do printf "%3d " "$i" ; done
for i in {232..243} ; do printf "%3d " "$i" ; done ; echo
for i in {0..7} ; do printf "$fmt " "$i" ; done
for i in {232..243} ; do printf "$fmt " "$i" ; done ; echo

for i in {8..15} ; do printf  "%3d " "$i" ; done ;
for i in {244..255} ; do printf "%3d " "$i" ; done ; echo
for i in {8..15} ; do printf "$fmt " "$i" ; done ;
for i in {244..255} ; do printf "$fmt " "$i" ; done ; echo
echo

fmt="%3d \e[38;5;0m\e[48;5;%dm   \e[0m"
for i in {16..51} ; do
	a=()
	for j in {0..196..36}; do
		a=("${a[@]}" "$((i+j))" "$((i+j))")
	done
	printf "$fmt $fmt $fmt $fmt $fmt $fmt\n" "${a[@]}"
done
