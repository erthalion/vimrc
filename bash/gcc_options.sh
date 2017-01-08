#!/bin/bash

gcc -v -E -x c -march=native -mtune=native - < /dev/null 2>&1 | grep cc1 | perl -pe 's/ -mno-\S+//g; s/^.* - //g;'
