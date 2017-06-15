(TeX-add-style-hook
 "usbe_lung_methods"
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
    "sec:usbe_lung_methods"
    "subsec:setup"
    "fig:lung_schematic"
    "eq:us_waveform"
    "fig:p0"
    "subsec:usbe_lung_goveq"
    "eq:euler"
    "eq:stiffened_eos"
    "usbe_lung_eosvar_advection"
    "tab:usbe_lung_dimensional_parameters"
    "tab:usbe_lung_dimensionless_parameters"
    "subsec:numerical_methods"))
 :latex)

