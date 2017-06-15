(TeX-add-style-hook
 "usbe_lung_intro"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-add-symbols
    "svgwidth")
   (LaTeX-add-labels
    "sec:usbe_lung_introduction"
    "subsec:usbe_lung_bio_intro"
    "subsec:usbe_lung_fluids_intro"
    "fig:usbe_lung_baroclinic_schematic"
    "fig:rmi_schematic"
    "subsec:usbe_lung_contribution_intro"
    "itm:usbe_lung_questions"))
 :latex)

