#!/bin/bash

LOG="/tmp/emacs-compile-$USER.log"

find elpa -name "*.elc" -exec rm -f '{}' +

emacs -Q --batch --eval="(package-initialize)" --eval='(byte-recompile-directory "elpa" 0)' 2> "$LOG"
cat "$LOG" | grep -A 5 " Error:\|Done"
rm -f "$LOG"
