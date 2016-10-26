FROM simonalpha/ncbi-blast-docker:2.2.30plus

RUN mkdir /db /input /output

ADD database /db

ADD blast.sh /blast/

RUN chmod +x /blast/blast.sh

ENTRYPOINT ["/blast/blast.sh"]
