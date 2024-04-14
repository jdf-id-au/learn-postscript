#/bin/bash
# Wrap normal code into Cerner CCL report insanity.
# e.g. % ./wrap.sh < something.ps | pbcopy
# Breaks if input contains ^.
# Cerner doesn't like blank rows, so change them to a space...
# Cerner pads every line to maxcol cols wide,
# and inserts ^L formfeed every maxrow [per page]!
# Remove first row +1 from output if blank first line matters to target format.
sed 's/^$/ /;s/^/row +1 ^/;s/$/^/'
