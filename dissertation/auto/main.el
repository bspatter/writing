(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "usenames" "dvipsnames") ("ulem" "normalem") ("appendix" "toc" "page")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "./content/Dedication"
    "./content/Acknowledgements"
    "./content/preface"
    "./content/acronyms"
    "./content/abstract550"
    "./tex/diff_preamble"
    "./content/chapters/introduction"
    "./content/chapters/usbe_bubble_chapter"
    "./content/chapters/usbe_lung_paper_chapter"
    "./content/chapters/usbe_lung_bio"
    "./content/chapters/usbe_conclusions"
    "./content/chapters/astats_chapter"
    "./content/appendices/vorticity_paper_appendices"
    "./content/appendices/usbe_lung_bio_paper_appendices"
    "./content/raw/astats_randomization"
    "./content/raw/vorticity_distribution"
    "./content/raw/circulation_interface_intro"
    "./content/raw/vorticity_objective"
    "./content/raw/convergence"
    "./content/raw/mechanical_index"
    "./content/raw/circulation_model"
    "./content/raw/dimensionless_numbers"
    "./content/raw/reflections"
    "./content/raw/additional_data"
    "./content/raw/astats_datatable"
    "hyperref"
    "graphicx"
    "natbib"
    "pdflscape"
    "mathrsfs"
    "rotating"
    "xcolor"
    "tikz"
    "pgfgantt"
    "booktabs"
    "abstract"
    "verbatim"
    "tabularx"
    "caption"
    "subcaption"
    "embedfile"
    "import"
    "ulem"
    "appendix"
    "titlesec"
    "adjustbox"
    "hhline"
    "ragged2e"
    "setspace"
    "multirow"
    "totcount"
    "transparent"
    "txfonts"
    "snapshot")
   (TeX-add-symbols
    '("ganttbarc" ["argument"] 4)
    '("ganttgroupc" ["argument"] 4)
    '("Diff" 1)
    '("norm" 1)
    '("abs" 1)
    '("orderof" 1)
    '("del" 0)
    '("mbbs" 1)
    '("mcbs" 1)
    '("bs" 1)
    "plus"
    "diff"
    "oldbibitem"
    "bibitem"
    "Sectionmark"
    "sectionmark"
    "Sectionname"
    "Subsectionmark"
    "subsectionmark"
    "Subsectionname"
    "newline")
   (LaTeX-add-labels
    "part:ultrasound_bioeffects"
    "ch:Introduction"
    "ch:usbe_bubble"
    "ch:usbe_lung"
    "ch:usbe_lung_bio"
    "ch:usbe_conclusions"
    "part:uw_uncertainty"
    "ch:astats")
   (LaTeX-add-bibliographies
    "library_custom"))
 :latex)

