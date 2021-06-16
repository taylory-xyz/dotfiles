#!/bin/bash

xelatex "${1}.tex" ## && xdg-open "${1}.pdf" 
pandoc "${1}.tex" -o "${1}.html"
alex "${1}.tex"

