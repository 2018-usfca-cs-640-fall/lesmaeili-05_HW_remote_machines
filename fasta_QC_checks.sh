#!/bin/bash
# Leila Esmaeili
# lesmaeili@dons.usfca.edu
# HW5

DATE=`date +%Y-%m-%d`
NAME=$DATE"_fasta_QC_log.txt"
echo "Output from preliminary quality control checks on selected fasta files" >> $NAME
echo `date` >> $NAME #Creates the Date
echo >> $NAME #Creates a blank line
echo "Output for each fasta includes:" >> $NAME  
echo " Filename, file sie, first three lines, last three lines," >> $NAME
echo "the number of sequences in the file, and the " >> $NAME
echo "sequence identifier lines stored alphabetically." >> $NAME


for  f in ./data/*.fasta
do
	echo >> $NAME
	echo  "#######################################" >> $NAME
	echo >> $NAME
	echo "Output for"$f >> $NAME
	echo >> $NAME
	set -- $(du -h $f)
	echo "Size: "$1 >> $NAME
	echo >> $NAME
	echo  "First three Lines" >>$NAME
	echo  "------------------">> $NAME
	echo $(head -n 3 $f)>> $NAME
	echo >>$NAME
	
done
