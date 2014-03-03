(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ;; TODO: Maybe, use this after emacs24 is released
                  ;; (development versions of packages)
                  ("melpa" . "http://melpa.milkbox.net/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

(require 'color-theme)
(color-theme-solarized-dark)

(require 'cc-mode)
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)


(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(add-to-list 'load-path "/home/nguyenvinhlinh/.emacs.d/packages/ecb")
(load-file "/home/nguyenvinhlinh/.emacs.d/packages/ecb/ecb.el")

(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require 'auto-complete-clang)
(define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
(define-key c-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
(require 'flymake)

;;; Keybinding
(global-set-key (kbd "C-M-t") 'eshell)	; eshell

;;; Full screen when startup
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;; Split window when startup
(split-window-right)


