(TeX-add-style-hook
 "chapter_usbe_lung_linear"
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
    "sec:usbe_lung_introduction"
    "fig:p0_vs_t_us"
    "fig:us_circ_interface"
    "sec:usbe_lung_methods"
    "fig:lung_schematic"
    "fig:p0_vs_y"
    "eq:euler"
    "eq:stiffened_eos"
    "tab:usbe_lung_dimensional_parameters"
    "tab:usbe_lung_dimensionless_parameters"
    "sec:usbe_lung_analysis"
    "eq:vorticity_euler"
    "sec:usbe_lung_results"
    "fig:trapz10_circ_interface"
    "fig:trapz_circ_interface_early"
    "fig:trapz_circ_interface_loglog"
    "fig:trapz_ddt_circ"
    "sec:usbe_lung_conclusions"
    "sec:usbe_lung_future")))

