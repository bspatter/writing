(TeX-add-style-hook
 "asuq_astats_key"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "./content/chapters/asuq_astats_abstract"
    "./content/chapters/asuq_astats_intro")
   (LaTeX-add-labels
    "fig:asuq_astats_bathy"
    "fig:asuq_astats_schematic"
    "fig:asuq_astats_example"
    "fig:asuq_astats_L1"
    "fig:asuq_astats_field_results"
    "section:asuq_astats_conclusions")))

