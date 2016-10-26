#!/bin/sh
for file in /input/*;
    do
	filename=$(basename $file)
        blastn -query $file -db /db/fish.fa -task blastn -out /output/${filename}.out
    done
