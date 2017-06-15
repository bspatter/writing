(TeX-add-style-hook
 "abridged"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "usenames" "dvipsnames") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "./content/acronyms"
    "./content/abstract"
    "./embed_files"
    "./tex/diff_preamble"
    "./content/foreword"
    "./content/chapters/intro_chapter"
    "./content/chapters/usbe_intro"
    "./content/chapters/usbe_bubble_abstract"
    "./content/chapters/usbe_lung_abstract"
    "./content/chapters/usbe_lung_intro"
    "./content/chapters/usbe_lung_methods"
    "./content/chapters/usbe_lung_analysis"
    "./content/chapters/usbe_lung_results"
    "./content/chapters/usbe_lung_conclusions"
    "./content/chapters/usbe_lung_future"
    "./content/chapters/asuq_astats_abstract"
    "hyperref"
    "graphicx"
    "natbib"
    "pdflscape"
    "mathrsfs"
    "rotating"
    "xcolor"
    "tikz"
    "pgfgantt"
    "abstract"
    "verbatim"
    "tabularx"
    "caption"
    "subcaption"
    "embedfile"
    "import"
    "ulem"
    "bibentry"
    "snapshot")
   (TeX-add-symbols
    '("ganttbarc" ["argument"] 4)
    '("ganttgroupc" ["argument"] 4)
    '("norm" 1)
    '("abs" 1)
    '("orderof" 1)
    '("del" 0)
    '("bs" 1)
    "plus")
   (LaTeX-add-labels
    "ch:foreword"
    "ch:introduction"
    "part:ultrasound_bioeffects"
    "ch:usbe_bubble"
    "ch:usbe_lung")
   (LaTeX-add-bibliographies
    "../../literature/library"))
 :latex)

