#!/bin/sh
DIR=`dirname $0`
cd $DIR

format=$1

if [ -z "$format" ]; then
 format=epub
fi
files=""
for i in `find src/main/md -name "*.md"`; do
 #echo $i
 files=$files" $i"
done
#echo $files
cover=src/main/images/ArchwayHealth-Icon-blue-160x160.png
metadata=src/main/md/metadata.xml
#css=src/main/css/stylesheet.css
#css=pandoc.css
css=buttondown.css

[ -d target ] || mkdir target

/usr/local/bin/pandoc -o target/policies.$format $files \
	--from=markdown+implicit_header_references+line_blocks+fancy_lists+startnum+definition_lists+example_lists+pipe_tables+footnotes+hard_line_breaks \
	--epub-cover-image=$cover \
	--epub-metadata=$metadata \
	--toc --toc-depth=3 \
	--epub-stylesheet=src/main/css/$css \
	--css=$css
	
cp src/main/css/$css target/
