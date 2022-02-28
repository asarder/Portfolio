#!/bin/bash
#curl website to output.txt
url="https://www.XYZ.com"
#Downloaded website incase offline
curl=$(which curl)
outfile="output.txt"
if [ "$url" = "exit" ]; then
    echo "${bold}${red}Closing...${sgr0}"
    exit -1
fi
#Scrape webpage with curl
function scrape_webpage() {
    $curl -s $url > $outfile  
}
#Remove unwanted text and clean up data
function format_html() {
    sed -i '/<h3>.*&#8211;.*<\/h3>/,$!d' $outfile
    sed -i '/482180/q' $outfile
    #sed -i '/<h3>.*<\/h3>/,$!d' $outfile
    #sed -i '/<h3>.*\\d{4}<\/h3>/,$!d' $outfile
    grep ".*" $outfile | sed -n '/[<h3><li>]/ {
        s/<[^>]*>//g
        s/&#8211; 2020/- December 2020/
        s/&#8211; 2020/ -  2020/    
        s/&#8211;  July 2018/ - July 2018/
        s/&#8211;/-/g
        s/|/-/g
        s/&#8217;//g
        s/2017, reported //;  s/ Update//
        #s/January//g; s/February//g; s/March//g; s/April//g; s/May//g; s/June//g;
        #s/July//g; s/August//g; s/September//g; s/October//g; s/November//g; s/December//g
        p
    }' > temp.txt
   
    #sed -i 1,10d temp.txt    
}