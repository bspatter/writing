(TeX-add-style-hook
 "usbe_lung_results"
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
    "sec:usbe_lung_results"
    "subsec:Interface response to "
    "subsubsec:Qualitative"
    "fig:interface_snapshots"
    "fig:trapz10_circ_interface"
    "subsubsec:usbe_lung_amplitude_dependence"
    "subsec:Qualitative"
    "fig:trapz_circ_interface_early"
    "fig:trapz_circ_interface_loglog"
    "fig:trapz_ddt_circ"
    "fig:trapz_circ_interface_multi-lag"
    "subsec:usbe_lung_trapezoidal_results"
    "fig:us_circ_interface"
    "subsec:usbe_lung_further_discussion"))
 :latex)

