(add-hook 'ruby-mode-hook 'hs-minor-mode)
(add-to-list 'hs-special-modes-alist
             `(ruby-mode
               ,(rx (or "def" "class" "module" "{" "["))
               ,(rx (or "}" "]" "end"))
               ,(rx (or "#" "=begin"))
               ruby-forward-sexp nil)
             )
(provide 'linh-hideshow)
