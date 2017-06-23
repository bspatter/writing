(TeX-add-style-hook
 "main"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "include/preamble"
    "./slidedeck/asa_boston_2017_titleslide"
    "./slidedeck/bkgd_lung"
    "./slidedeck/hypo_lung_new"
    "./slidedeck/bkgd_waves"
    "./slidedeck/2017-03-09_acoustic_vorticity_conclusions"
    "./slidedeck/governing_eq"
    "./slidedeck/methods_computation"
    "./slidedeck/backup_slides"
    "./slidedeck/convergence")
   (TeX-add-symbols
    '("Diff" 1)
    '("orderof" 1)
    "plus"
    "minus"
    "timesx"
    "equals"
    "diff"
    "svgwidth")
   (LaTeX-add-labels
    "fig:problem_schematic"
    "fig:alveolar_histology"
    "fig:tauxy_snapshot_A50_a03"
    "fig:tauxy_snapshot_A50_a10"
    "fig:tauxy_snapshot_A50_a30"
    "fig:strain_multi-pa_a30"
    "fig:trapz_interface_t1000")
   (LaTeX-add-bibliographies
    "../../../literature/library"))
 :latex)

