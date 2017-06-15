(TeX-add-style-hook
 "usbe_lung_analysis"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (LaTeX-add-labels
    "sec:usbe_lung_analysis"
    "eq:vorticity_euler"
    "eq:acoustic_relations"
    "eq:baroclinic_vorticity"
    "eq:compressible_vorticity"
    "eq:advective_vorticity"
    "eq:vorticity_comparison_broke"
    "eq:compressible_advective_vorticity"
    "eq:vorticity_comparison"
    "eq:baroclinic_air_water"
    "eq:circulation_generation"
    "eq:circulation_generation_components"
    "eq:intf_circ_scaling"))
 :latex)

