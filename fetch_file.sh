#!/bin/bash
#
# Author:	Pedro Valero
#
# Description: Script to generate benchmark files for zearch
#
# Date: 18/10/2018

# Variables to be set by the user


echo "This script requires the following programs:"
echo "  zstd"
echo "  lz4"
echo "  repair"
echo "  compress"
echo "Please, confirm all of them are available and variables at the beginning of this file and set properly for your setup."
echo "Press any key to continue or ctrl+C to exit"
read

echo "Are you sure you want to download all files used for the experiments in \"Regular Expression Searching in Compressed Text\" by P. Ganty and P. Valero?"
echo "This requires 12 GB of disk space [y/n]"
read ANSWER

if [[ $ANSWER != "y" ]];
then
	exit
fi

echo -e "$BLUE============== Preparing Log files ==============$NC"

mkdir -p logs
cd logs

wget -q ftp://ita.ee.lbl.gov/traces/NASA_access_log_Jul95.gz
zcat NASA_access_log_Jul95.gz > logs.txt
rm NASA_access_log_Jul95.gz

wget -q ftp://ita.ee.lbl.gov/traces/NASA_access_log_Aug95.gz
zcat NASA_access_log_Aug95.gz >> logs.txt
rm NASA_access_log_Aug95.gz

wget -q ftp://ita.ee.lbl.gov/traces/usask_access_log.gz
zcat usask_access_log.gz >> logs.txt
rm usask_access_log.gz

echo "Data downloaded!!"

iconv --to-code US-ASCII -c logs.txt > original.txt 
rm logs.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo "DONE"
echo ""
echo "==================================================="
echo ""

echo -e "$BLUE============== Preparing Subtitles files ==============$NC"

mkdir -p subs
cd subs

wget -q http://opus.nlpl.eu/download.php?f=OpenSubtitles2016/mono/OpenSubtitles2016.en.gz
zcat download.php\?f\=OpenSubtitles2016%2Fmono%2FOpenSubtitles2016.en.gz > subs.txt
rm download.php\?f\=OpenSubtitles2016%2Fmono%2FOpenSubtitles2016.en.gz

echo "Data downloaded!!"

iconv --to-code US-ASCII -c subs.txt > original.txt 
rm subs.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo "DONE"
echo ""
echo "==================================================="
echo ""

echo -e "$BLUE============== Preparing Books files ==============$NC"

mkdir -p gutenberg
cd gutenberg

echo "Checkinf for some python libraries to download from google drive"
REQ=$(pip list 2> /dev/null | grep -c "requests")
if [[ $REQ -eq 0 ]]
then
	echo "Python library requests required"
	pip install --user requests
fi
echo "done"
echo "Downloading books from Gutenberg Dataset..."
echo "This may take a while..."
../download_gdrive.py bookdownload.py 0B2Mzhc7popBga2RkcWZNcjlRTGM gutenberg.zip
unzip -u gutenberg.zip
cd Gutenberg/txt
../../../extract_books.sh
mv gutenberg.txt ../../
cd ../../

echo "Data downloaded!!"

iconv --to-code US-ASCII -c gutenberg.txt > tmp.txt 
rm gutenberg.txt
tr -d '\r' < tmp.txt > original.txt
rm tmp.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo "DONE"
echo ""
echo "==================================================="
echo ""

echo "Do you want to download all files used for the experiments? (even those not included in the paper) [y/n]"
read ALL_FILES

if [[ $ALL_FILES != "y" ]];
then
	exit
fi

echo -e "$BLUE============== Preparing JSON files ==============$NC"

mkdir -p json
cd json

wget -q http://data.gharchive.org/2015-01-01-{0..25}.json.gz
wget -q http://data.gharchive.org/2015-01-02-{0..15}.json.gz
zcat 2015-01-0*.json.gz > json.txt
rm 2015-01-0*.json.gz

echo "Data downloaded!!"

iconv --to-code US-ASCII -c json.txt > original.txt 
rm json.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo ""
echo "==================================================="
echo ""

echo -e "$BLUE============== Preparing CSV files ==============$NC"

mkdir -p csv
cd csv

wget -q http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-go.gz
wget -q http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-ww.gz
wget -q http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-ab.gz
wget -q http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-zz.gz
wget -q http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-ye.gz

zcat googlebooks-eng-all-2gram-20120701-{go,ww,ab,zz,ye}.gz > tmp.txt
rm googlebooks-eng-all-2gram-20120701-{go,ww,ab,zz,ye}.gz
shuf tmp.txt > csv.txt
rm tmp.txt
echo "Data downloaded!!"

iconv --to-code US-ASCII -c csv.txt > original.txt 
rm csv.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo ""
echo "==================================================="
echo ""

echo -e "$BLUE============== Preparing querty files ==============$NC"
mkdir -p yes
cd yes

timeout 2 yes "qwerty" > yes.txt

echo "Data created!!"

iconv --to-code US-ASCII -c yes.txt > original.txt 
rm yes.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo ""
echo "==================================================="
echo ""

if [[ $RANDOM == 0 ]]; then
	echo "ALL FILES GENERATED"
	exit
fi

echo -e "$BLUE============== Preparing Random files ==============$NC"
mkdir -p random01
cd random01

cat /dev/urandom | tr -dc "01" | dd bs=10M count=50 iflags=fullblock 2>/dev/null > random.txt

echo "Data created!!"

iconv --to-code US-ASCII -c random.txt > original.txt 
rm random.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo -e "$BLUE============== Preparing RandomL files ==============$NC"
mkdir -p random01lines
cd random01lines

cat /dev/urandom | tr -dc "0123456789\n" | dd bs=10M count=50 iflags=fullblock 2>/dev/null > tmp.txt
cat tmp.txt | tr "2" "0" | tr "4" "0" | tr "6" "0" | tr "8" "0" | tr "3" "1" | tr "5" "1" | tr "7" "1" | tr "9" "1" > random.txt
rm tmp.txt 
echo "Data created!!"

iconv --to-code US-ASCII -c random.txt > original.txt 
rm random.txt

echo "Generating files of different sizes and compressing them"
split_and_compress
cd ..

echo "ALL FILES GENERATED"