(require 'yasnippet)
(yas-global-mode t)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
;;; Use C-p, C-n to go to previous, next item
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
;; Ignore case if completion target string doesn't include upper characters
(setq ac-ignore-case 'smart)
(provide 'linh-yas-ac)
