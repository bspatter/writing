(TeX-add-style-hook
 "2017-03-10_contributions_outline"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fullpage" "cm")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "fullpage"))
 :latex)

