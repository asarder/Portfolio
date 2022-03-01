#!/bin/bash
#Author: Abu Sarder
#Date: 28/02/2022

#scraping webpage cyberCX which is an australian cybersecurity company. 

#curl website to output.txt


curl=$(which curl)
outfile="output.txt"
url="https://blog.cybercx.com.au/log4j-critical-vulnerability-cve-2021-44228-planning-for-the-holidays"


#dump data into output.txt file which is named variable outfile

function dump_wpage() {
 
    $curl -o $outfile $url &>/dev/null

}

#get rid off unwanted data and clean up data.

function strip_html() {

    grep "<p>" $outfile | sed 's/<[^>]*>//g'  > temp.txt && cp temp.txt $outfile 
}

#Geting the main data ssof out file 
function get_data() {
    
    echo #blank line
    echo "After Scraping wanted data out put: "
    echo "**********************************"
    echo #blank line
    echo "Log4j Critical Vulnerability (CVE-2021-44228): Planning for the holidays"
    echo #blan kline
    while read data; do 
        echo "${data}"
    done <$outfile
}

dump_wpage
strip_html
get_data

#Refenc:"How to Scrape a Web Page Using Bash Script" https://www.youtube.com/watch?v=DZ0WKRmUTm4
#Reference: "CyberCX" an Australian cybersecurity company" https://blog.cybercx.com.au/log4j-critical-vulnerability-cve-2021-44228-planning-for-the-holidays