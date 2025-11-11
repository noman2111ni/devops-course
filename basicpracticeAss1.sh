#!/bin/bash
DIR="devops_tranning"
mkdir -p "$DIR"
cd "$DIR"
touch file1.txt file2.txt file3.txt
mkdir -p archive
mv file3.txt archive
cd archive
rm file3.txt


