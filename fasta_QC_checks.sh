#!/bin/bash
# Leila Esmaeili
# lesmaeili@dons.usfca.edu
# HW5

DATE=`date +%Y-%m-%d`
echo "Output from preliminary quality control checks on selected fasta files" >> $NAME
date # Creates the Date
echo # Creates a blank line
echo "Output for each fasta includes:"
echo "Filename, file size, first three lines, last three lines,"
echo "the number of sequences in the file, and the"
echo "sequence identifier lines stored alphabetically."


for f in data/*.fasta
do
	echo
	echo  "#######################################"
	echo
	echo Output for "$f"
	echo
	echo Size: "$(du -h "$f" | cut -f 1)"
	echo
	echo "First three Lines"
	echo "------------------"
	head -3 $f
	echo
	echo "Last three lines:"
	echo "------------------"
	tail -3 $f
	echo
	echo number of sequences\: "$(grep -c "^>" "$f")"
	echo
	echo "Sequence identifier lines (sorted)"
	echo " place holder for when I figure out how to do this"
done

