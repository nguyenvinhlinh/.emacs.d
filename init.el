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
(global-set-key (kbd "C-k") 'kill-this-buffer);
;;; Full screen when startup
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;;; Split window when startup
(split-window-right)

(setq ido-decorations
'("\n=> " "" "\n" "" "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))

;;; auto complete header for C, C++
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)

;;; modify the interface of dired output
(require 'dired-details+)
(setq dired-details-hide-link-targets nil)


