(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("melpa" . "http://melpa.milkbox.net/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/libs")
(add-to-list 'load-path "~/.emacs.d/config")

(load-theme 'monokai t)
(require 'nyan-mode)
(require 'cc-mode)
(setq-default tab-width 2)
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)
(add-to-list 'load-path "~/.emacs.d/packages/ecb")
(load-file "~/.emacs.d/packages/ecb/ecb.el")
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
;;; Full screen when startup
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
;;; Split window when startup
(setq ido-decorations
'("\n=> " "" "\n" "" "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))
;;; auto complete header for C, C++
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)
;;; modify the interface of dired output
(require 'dired-details+)
(setq dired-details-hide-link-targets nil)
;;; set the number of collumns to go to next line
(setq-default fill-column 80)
;;; moz
;;;(add-to-list 'load-path "~/.emacs.d/")
(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)
(add-hook 'javascript-mode-hook 'javascript-custom-setup)
(defun javascript-custom-setup ()
  (moz-minor-mode 1))
(require 'sudo-save)
;;;Hooking up with Projectile
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
;;;Delete selection mode turn on globally
(delete-selection-mode)

;;; smartparens
;(smartparens-global-mode t)
;(show-smartparens-global-mode t)

;;; smartparens
;(sp-local-pair 'markdown-mode "<%" "%>")
;(sp-local-pair 'markdown-mode "<" ">")
;;; Auto guesss taregt
(require 'linh-dired)
(require 'linh-web-mode)
(require 'linh-simple-secret)
(require 'linh-js3-mode)
(require 'linh-c-mode)
(require 'linh-nyan-cat-mode)
(require 'linh-eshell-mode)
(require 'linh-ror-mode)
(require 'linh-buffer)
(require 'linh-keymap)
