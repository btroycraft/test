#!/bin/bash

R CMD BATCH '--args n=100' script.R out1.Rout
R CMD BATCH '--args n=10' script.R out2.Rout

mail -s "subject" btroycraft@ucdavis.edu <<< "This is the body"
