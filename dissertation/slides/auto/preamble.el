(TeX-add-style-hook
 "preamble"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "english") ("caption" "center") ("adjustbox" "export") ("cancel" "makeroom") ("hyphenat" "none") ("enumitem" "shortlabels")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer11"
    "beamercolorthemewolverine"
    "babel"
    "amsmath"
    "amssymb"
    "mathtools"
    "commath"
    "amscd"
    "amsfonts"
    "amsbsy"
    "enumerate"
    "epsfig"
    "pgfpages"
    "graphics"
    "graphicx"
    "multicol"
    "layouts"
    "caption"
    "natbib"
    "etex"
    "adjustbox"
    "embedfile"
    "soul"
    "import"
    "relsize"
    "tikz"
    "pgfplots"
    "cancel"
    "multimedia"
    "subcaption"
    "comment"
    "nicefrac"
    "tcolorbox"
    "hyphenat"
    "tabu"
    "xparse"
    "enumitem")
   (TeX-add-symbols
    '("Diff" 1)
    '("orderof" 1)
    "beginbackup"
    "backupend"
    "RR"
    "NN"
    "ZZ"
    "CC"
    "eps"
    "bp"
    "ep"
    "dint"
    "vs"
    "po"
    "meanint"
    "SoulColor"
    "plus"
    "minus"
    "timesx"
    "equals"
    "diff"
    "btVFill"
    "newblock"
    "ring")
   (LaTeX-add-environments
    "tablehere"
    "figurehere")
   (LaTeX-add-counters
    "framenumbervorappendix")
   (LaTeX-add-saveboxes
    "fminipagebox"))
 :latex)

