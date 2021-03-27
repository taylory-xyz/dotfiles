#!/bin/bash

echo -e "\n what type of file do you want to create?"
echo -e "\t 1: html"
echo -e "\t 2: tex (chem)"
echo -e "\t 3: tex (self-notes)"
echo -e "\t 4: javafx build.gradle"

read filetype

root="https://www.tayloryang.xyz"

htmlURL="${root}/gists/template.html"

texURL="${root}/gists/notes.tex"

if [ $filetype -eq "1" ]; then
	curl $htmlURL > $1
fi

if [ $filetype -eq "2" ]; then
	mkdir temp_folder
	git clone https://gist.github.com/6d7ad097c163e733d984adbf1d3b8c41.git temp_folder
	cd temp_folder
	mv *.tex ..
	cd ..
	rm temp_folder -rf
fi

if [ $filetype -eq "3" ]; then
	curl $texURL > $1
fi
