(TeX-add-style-hook
 "introduction"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-add-symbols
    "svgwidth")
   (LaTeX-add-labels
    "eq:intro_conservation"
    "sec:lung_assumptions"
    "sec:bioeffects_mechanisms"
    "subsec:bioeffects_mechanisms_ceus"
    "fig:intro_cavitation_schematic"
    "fig:usbe_lung_baroclinic_schematic"
    "fig:rmi_schematic"
    "eq:intro_coma"
    "eq:intro_como"
    "eq:intro_coe"
    "eq:stiffened_eos_intro"))
 :latex)

