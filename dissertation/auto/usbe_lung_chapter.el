(TeX-add-style-hook
 "usbe_lung_chapter"
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
    "sec:introduction"
    "eq:baroclinic_equation"
    "sec:methods"
    "subsec:physical_problem"
    "subsec:setup"
    "fig:alveolar_schematic"
    "fig:problem_schematic"
    "fig:schematics"
    "fig:wave_logic"
    "fig:p0_vs_y"
    "fig:p0"
    "subsec:governing_equations"
    "eq:euler"
    "eq:stiffened_eos"
    "eq:sound_speed"
    "usbe_lung_eosvar_advection"
    "subsec:numerical_methods"
    "sec:results"
    "subsec:Qualitative"
    "fig:interface_snapshots"
    "fig:trapz10_interface25"
    "fig:trapz10_interface1000"
    "fig:trapz10_interface"
    "fig:vorticity_snapshots"
    "eq:vorticity_euler"
    "subsubsec:oom_analysis"
    "eq:acoustic_relations"
    "eq:baroclinic_vorticity"
    "eq:compressible_advective_vorticity"
    "eq:vorticity_comparison"
    "fig:trapz10_circ_schematic_t25"
    "fig:trapz10_circ_schematic_t1000"
    "fig:trapz10_circ_schematic"
    "fig:trapz_interface_t1000"
    "fig:trapz_interface_t1000_scaled"
    "fig:trapz_interface_loglog"
    "eq:dimensional_amplitude"
    "eq:dimensionless_groups"
    "eq:dimensionless_relationship"
    "fig:trapz_circ_t1000"
    "eq:s_dependencies"
    "eq:gamma_dependencies"
    "eq:scp_dependencies"
    "eq:scp_dimensionless"
    "eq:scp_relationship"
    "fig:trapz_scp_t1000"
    "fig:trapz_circ_interface_multi-lag"
    "sec:conclusions"))
 :latex)

