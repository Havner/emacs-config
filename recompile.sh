#!/bin/bash

find elpa -name "*.elc" -exec rm -f '{}' +

emacs -Q --batch --eval="(package-initialize)" --eval='(byte-recompile-directory "elpa" 0)' 2>&1 | grep -A 5 " Error:\|Done"
