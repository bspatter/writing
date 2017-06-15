#!/usr/bin/python
import sys
import os
import re

inputPattern = re.compile('\\input{(.*)}')

def flattenLatex( rootFilename ):
    dirpath, filename = os.path.split(rootFilename)
    with open(rootFilename,'r') as fh:
        for line in fh:
            match = inputPattern.search( line )
            if match:
                newFile = match.group(1)
                if not newFile.endswith('tex'):
                    newFile += '.tex'
                flattenLatex( os.path.join(dirpath,newFile) )
            else:
                sys.stdout.write(line)

if __name__ == "__main__":
    flattenLatex( sys.argv[1] )

Which ends up being called like this:

# merge multiple files into the old and current versions of the document
flatten-latex ${DIFFTREE}/thesis.tex > old.tex
flatten-latex ${WORKINGTREE}/thesis.tex > cur.tex

# produce the marked up document
latexdiff old.tex cur.tex > tmp.tex

# fix line ending problem introduced by latexdiff
sed 's/^M//' tmp.tex > diff.tex
