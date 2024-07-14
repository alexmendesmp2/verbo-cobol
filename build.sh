#!/bin/bash

gcc -shared -o ./lib/libCSNDPKB.so CSNDPKB.c && \
cobc -x -o ./bin/CHAMADOR -L./lib -lCSNDPKB PROGCOB10.cob && \

export COB_LDFLAGS=-Wl,--no-as-needed
export LD_LIBRARY_PATH=/home/alexubuntu/projetos/cobol_c/calling/lib
