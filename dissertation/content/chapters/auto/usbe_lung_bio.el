(TeX-add-style-hook
 "usbe_lung_bio"
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
    "fig:alveolar_histology"
    "fig:p0_ultrasound"
    "subsec:usbe_lung_bio_stress_strain"
    "eq:linear_strain"
    "fig:rho_snapshot_03"
    "fig:rho_snapshot_10"
    "fig:rho_snapshot_30"
    "fig:rho_snapshots_A10"
    "fig:rho_snapshot_A25_a03"
    "fig:rho_snapshot_A25_a10"
    "fig:rho_snapshot_A25_a30"
    "fig:rho_snapshots_A25"
    "fig:rho_snapshot_A50_a03"
    "fig:rho_snapshot_A50_a10"
    "fig:rho_snapshot_A50_a30"
    "fig:rho_snapshots_A50"
    "fig:strain_multi-pa_a03"
    "fig:strain_multi-pa_a10"
    "fig:strain_multi-pa_a30"
    "fig:pa_dependence_strain"
    "fig:strain_multi-a0-A10"
    "fig:strain_multi-a0-A25"
    "fig:strain_multi-a0-A50"
    "fig:a0_dependence_strain"
    "fig:tauxy_snapshot_A50_a03"
    "fig:tauxy_snapshot_A50_a10"
    "fig:tauxy_snapshot_A50_a30"
    "fig:tauxy_snapshots"
    "fig:stress_multi-pa_a03"
    "fig:stress_multi-pa_a10"
    "fig:stress_multi-pa_a30"
    "fig:pa_dependence_stress"
    "fig:stress_multi-a0-A10"
    "fig:stress_multi-a0-A25"
    "fig:stress_multi-a0-A50"
    "fig:a0_dependence_stress"
    "subsec:vorticity_experiments"
    "fig:us_vorticity_snapshot"
    "fig:us10_circulation_history"
    "fig:Vorticity_circ_us"
    "fig:us10_interface_growth"
    "sec:usbe_lung_bio_conclusions"))
 :latex)

