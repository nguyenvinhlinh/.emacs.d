(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))
;;; indentation
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#808080")
(set-face-background 'highlight-indentation-current-column-face "#e5e5e5")
;;; flymake-ruby, syntax checking
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
;;; flymake-cursor
(require 'flymake-cursor)
(provide 'linh-ror-mode)
