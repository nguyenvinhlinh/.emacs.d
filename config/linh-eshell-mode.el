(add-to-list 'load-path "~/.emacs.d/eshell")
(load-file "~/.emacs.d/eshell/shell-autojump.el")
(eval-after-load 'eshell
  '(require 'eshell-autojump nil t))
(global-set-key (kbd "M-<menu>") 'eshell)
;;; add more path to eshell
(setenv "PATH"
  (concat
   "/home/nguyenvinhlinh/.rvm/bin" ":"
   "/home/nguyenvinhlinh/.rvm/gems/ruby-2.0.0-p353/wrappers" ":"
   (getenv "PATH")
  )
)

(provide 'linh-eshell-mode)
