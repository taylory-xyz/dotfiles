#!/bin/bash

echo -e "\n what type of file do you want to create?"
echo -e "\t 1: html"
echo -e "\t 2: tex (chem)"
echo -e "\t 3: tex (self-notes)"
echo -e "\t 4: javafx build.gradle"

read filetype

htmlURL="https://gist.githubusercontent.com/taylory-xyz/16d605d098a8380714574dd3b0ac9920/raw/template.html"

texURL="https://gist.githubusercontent.com/taylory-xyz/5219de94d69344a61278b522ef1bed98/raw/PersonalNoteTaking.tex"

gradleURL="https://gist.githubusercontent.com/taylory-xyz/d25240a90b7c7b08cdcd5ae92917bec0/raw/build.gradle"

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

if [ $filetype -eq "4" ]; then
	curl $gradleURL > $1
fi
