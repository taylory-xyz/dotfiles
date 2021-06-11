#!/bin/bash

name=$(echo "${1}" | cut -f 1 -d '.')
qpdf --empty --pages "${name}.pdf" "$2" -- "${name}-${2}.pdf"
