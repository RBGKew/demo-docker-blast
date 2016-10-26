# demo-docker-blast

This is a docker file for use with the tutorial on 26-10-16.
It takes a directory of fasta files, and outputs a directory of results, matching the sequences to the mitofish database (http://mitofish.aori.u-tokyo.ac.jp/)

## Getting this image:

    git checkout https://github.com/RBGKew/demo-docker-blast.git

then

    docker build -t blast-fish .

## Running this image:

    docker run --rm -v *input_directory or file*:/input -v *output_directory*:/output blast-fish
