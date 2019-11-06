#!/bin/tcsh

set SCRIPT=run_script.sh

qsub -P babel -l ubuntu=1 -l qp=low -l osrel="*" -o log.txt -j y $SCRIPT


