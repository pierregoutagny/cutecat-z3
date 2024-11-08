#!/bin/bash

function copy()
{
    local f=$1
    echo $f
    cp $f $(basename $f .smt | xargs printf "smt_out/%s.log") sample
}

for f in $(fd -e smt . smt_out/ | sort | shuf -n1000)
do
    copy $f
done

for f in $(fd -e smt . smt_out/ | sort | head -n10)
do
    copy $f
done

for f in $(fd -e smt . smt_out/ | sort | tail -n10)
do
    copy $f
done

exit 0

for f in $(fd -e smt . sample); do echo "(check-sat)" | cat $f - > "$f.check" ;done
for f in $(fd -e smt . sample); do cat $f soft.smt > "$f.soft" ;done
