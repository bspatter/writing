(TeX-add-style-hook
 "chapter_usbe_bubble"
 (lambda ()
   (LaTeX-add-labels
    "section:intro"
    "section:methods"
    "figure:waveforms"
    "eq:keller"
    "eq:bubble_pressure"
    "tab:parameters"
    "section:results"
    "figure:sample_bubble_linear"
    "figure:sample_bubble_intermediate"
    "figure:sample_bubble_nonlinear"
    "figure:amplitude"
    "figure:gascontents"
    "figure:size"
    "figure:freq"
    "section:tissue_properties"
    "figure:freq_tissue"
    "section:conclusions"))
 :latex)

