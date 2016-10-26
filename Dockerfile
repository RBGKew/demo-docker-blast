FROM simonalpha/ncbi-blast-docker:2.2.30plus

RUN mkdir /db

ADD database /db

ADD blast.sh /blast/

RUN chmod +x /blast/blast.sh

VOLUME /input
VOLUME /output

ENTRYPOINT ["/blast/blast.sh"]
