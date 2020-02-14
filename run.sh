#!/bin/bash

# Set the SUMMA executable (e.g. /usr/local/bin/summa.exe or wherever you have installed SUMMA)
export OMP_NUM_THREADS=4
SUMMA_EXE=/Users/amedin/Research/summa/bin/summa.exe

if  [ -z ${SUMMA_EXE} ]
    then
        echo "Must define the SUMMA executable SUMMA_EXE in $0"
        exit 1
fi

# *************************************************************************************************

${SUMMA_EXE} -p never -s _cues -m file_manager.txt
