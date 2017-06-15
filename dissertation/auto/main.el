(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "usenames" "dvipsnames") ("ulem" "normalem") ("appendix" "toc" "page")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "./content/Dedication"
    "./content/Acknowledgments"
    "./content/acronyms"
    "./content/abstract"
    "./tex/diff_preamble"
    "./content/foreword"
    "./content/chapters/introduction"
    "./content/chapters/usbe_bubble_chapter"
    "./content/chapters/usbe_lung_chapter"
    "./content/chapters/usbe_lung_bio"
    "./content/chapters/usbe_conclusions"
    "./content/chapters/asuq_astats_abstract"
    "./content/chapters/asuq_astats_intro"
    "./content/chapters/asuq_astats_methods"
    "./content/chapters/asuq_astats_results"
    "./content/chapters/asuq_astats_conclusions"
    "./content/raw/circulation_model"
    "./content/raw/dimensionless_numbers"
    "./content/raw/reflections"
    "./content/raw/mechanical_index"
    "./content/raw/convergence"
    "./content/raw/circulation_interface_intro"
    "./content/raw/vorticity_objective"
    "./content/raw/vorticity_distribution"
    "./content/raw/additional_data"
    "./content/raw/astats_randomization"
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
    "appendix"
    "titlesec"
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
    "diff")
   (LaTeX-add-labels
    "ch:foreword"
    "part:ultrasound_bioeffects"
    "ch:Introduction"
    "ch:usbe_bubble"
    "ch:usbe_lung"
    "ch:usbe_lung_bio"
    "ch:usbe_conclusions"
    "part:uw_uncertainty")
   (LaTeX-add-bibliographies
    "library"))
 :latex)

