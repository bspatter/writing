(TeX-add-style-hook
 "usbe_bubble_key"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "./content/chapters/usbe_bubble_abstract")
   (LaTeX-add-labels
    "sec:usbe_bubble_key_figures"
    "fig:sample_bubble_linear"
    "fig:sample_bubble_nonlinear"
    "fig:gascontents"
    "fig:freq"
    "fig:freq_tissue"
    "sec:conclusions")))

