(require 'golden-ratio)
(golden-ratio-mode 1)
(add-to-list 'golden-ratio-exclude-modes '("ediff-mode"
                                           "eshell-mode"
                                           "dired-mode"))
(setq split-width-threshold nil)
(provide 'linh-golden-ratio)

