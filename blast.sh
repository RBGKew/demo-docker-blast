#!/bin/sh
if [ -f /input ]
then
  blastn -query /input -db /db/fish.fa -task blastn -out /output/output
elif [ -d /input ]
then
  for file in /input/*;
  do
    filename=$(basename $file)
    blastn -query $file -db /db/fish.fa -task blastn -out /output/${filename}.out
  done
fi
