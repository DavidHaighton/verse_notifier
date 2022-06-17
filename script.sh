#/!bin/sh

#step 1 get number of lines
lines=$(wc --lines < $(dirname -- $0)/verses.txt)
#step 2 get random number
rand=$(shuf -i 1-$lines -n 1)
#step 3 get line
verse=$(sed "${rand}q;d" $(dirname -- $0)/verses.txt)

notify-send Psalms "$verse" -t 5 -u LOW
