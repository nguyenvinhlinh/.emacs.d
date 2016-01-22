(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
(add-to-list 'ac-modes 'js3-mode)
(setq js3-auto-indent-p t)
(setq js3-enter-indents-newline t)
(setq js3-indent-on-enter-key t)

(add-hook 'js3-mode-hook
          (lambda ()
            (push '("function" . ?ƒ) prettify-symbols-alist)
            (prettify-symbols-mode)))
(provide 'linh-javascript-mode)

