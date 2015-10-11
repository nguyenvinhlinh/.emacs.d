(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
(add-to-list 'ac-modes 'js3-mode)

(custom-set-variables
 '(js3-enter-indents-newline t))

(add-hook 'js3-mode-hook
          (lambda ()
            (push '("function" . ?ƒ) prettify-symbols-alist)
            (prettify-symbols-mode)))
(provide 'linh-javascript-mode)

