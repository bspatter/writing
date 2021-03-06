project="2016_acoustic_vorticity"

arg="main"
filters="Warning\|warning\|(/usr/\|.code.tex\|Copyright\|.out\|.map"

rm -f *.aux ./*/*.aux ./*/*/*.aux *.nav *.log ./*/*.log ./*/*/*.log *.out *.snm *.blg *.bbl *.toc "$arg.sh~" _region_.pdf _region_.tex > /dev/null 2>&1;
pdflatex --shell-escape -interaction=nonstopmode "$arg" > /dev/null 2>&1;
pdflatex --shell-escape -interaction=nonstopmode "$arg" > /dev/null 2>&1;
bibtex -terse "$arg" ;
pdflatex --shell-escape -interaction=nonstopmode "$arg" > /dev/null 2>&1;
pdflatex --shell-escape -interaction=nonstopmode -file-line-error "$arg" | grep -v "$filters"
rm -f *.aux ./*/*.aux ./*/*/*.aux *.nav *.out *.snm *.blg *.bbl *.toc *.log ./*/*.log ./*/*/*.log "$arg.sh~" _region_.pdf _region_.tex > /dev/null 2>&1;

cp "$arg".pdf "$project".pdf 

#evince report.pdf;

#latex report ;
#latex report ;
#bibtex report ;
#latex report ;
#latex report ;
#dvips -o report.ps report.dvi ;
#ps2pdf report.ps ;
#rm report.ps ;
