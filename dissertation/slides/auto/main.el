(TeX-add-style-hook
 "main"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "include/preamble"
    "include/frontispiece_defense"
    "include/TitleSlide"
    "./slidedeck/funding"
    "./slidedeck/dissertation_intro"
    "./slidedeck/part_bioeffects_defense"
    "./slidedeck/bkgd_lung"
    "./slidedeck/lung_goals_defense"
    "./slidedeck/lung_physical_problem"
    "./slidedeck/setup_lung"
    "./slidedeck/governing_eq"
    "./slidedeck/methods_computation"
    "./slidedeck/early_results_defense"
    "./slidedeck/hypo_lung_defense"
    "./slidedeck/bkgd_waves"
    "./slidedeck/methods_basecase_defense"
    "./slidedeck/usbe_lung_results_analysis_defense"
    "./slidedeck/usbe_lung_bio_defense"
    "./slidedeck/usbe_lung_conclusions_defense"
    "./slidedeck/usbe_bubble_defense"
    "./slidedeck/part_astats"
    "./slidedeck/astats_defense"
    "./slidedeck/outcomes_defense"
    "./slidedeck/thanks"
    "./slidedeck/backup_slides")
   (LaTeX-add-bibliographies
    "../../../literature/library"))
 :latex)

