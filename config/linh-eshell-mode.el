(add-to-list 'load-path "~/.emacs.d/eshell")
(load-file "~/.emacs.d/eshell/shell-autojump.el")
(eval-after-load 'eshell
  '(require 'eshell-autojump nil t))
(setq eshell-last-dir-ring 500)
(provide 'linh-eshell-mode)
