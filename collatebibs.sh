#!/bin/sh

# Overwrite any old collated references
> ./collatedbibs.bib

# Find all the notes whose name is a string followed by four digits,
# then send that file through the getbibs.py pandoc filter.

PAGES=$(basename -s .bib -a ./references/*.bib | grep '^[a-z]\+[0-9]\{4\}')

echo "$PAGES" | while read -r page
do
	pandoc --filter=getbibs.py -t markdown ./references/"$page".bib >> ./collatedbibs.bib 
done

pandoc --bibliography=collatedbibs.bib --csl=chicago.csl --output=output.pdf ./thesis/thesis.md
