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
(setq-default nyan-wavy-trail t)
(setq-default nyan-bar-length 25)
(nyan-mode)
(nyan-start-animation)
(display-time-mode 1)
(require 'cc-mode)
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
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
;;; Keybinding
(global-set-key (kbd "C-M-t") 'eshell)	; eshell
;(global-set-key (kbd "C-k") 'kill-this-buffer);
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
;;; set the number of collumns to go to next line
(setq-default fill-column 80)
;;; moz
;;;(add-to-list 'load-path "~/.emacs.d/")
(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)
(add-hook 'javascript-mode-hook 'javascript-custom-setup)
(defun javascript-custom-setup ()
  (moz-minor-mode 1))
(require 'sudo-save)
;;; password vault
(password-vault-register-secrets-file "passwords")
;;;Hooking up with Projectile - Rails Projectile
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
;;;Delete selection mode turn on globally
(delete-selection-mode)
;;; add more path to eshell
(setenv "PATH"
  (concat
   "/home/nguyenvinhlinh/.rvm/bin" ":"
   "/home/nguyenvinhlinh/.rvm/gems/ruby-2.0.0-p353/wrappers" ":"
   (getenv "PATH")
  )
)
;;;auto-jump for eshell
(add-to-list 'load-path "~/.emacs.d/eshell")
(load-file "~/.emacs.d/eshell/shell-autojump.el")
(eval-after-load 'eshell
  '(require 'eshell-autojump nil t))
(setq eshell-last-dir-ring 500)
;;; robe mode for ruby
(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))
;;; indentation
(require 'highlight-indentation)
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
;;; flymake-ruby, syntax checking
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
;;; flymake-cursor
(require 'flymake-cursor)
;;; smartparens
;(smartparens-global-mode t)
;(show-smartparens-global-mode t)

;;; smartparens
;(sp-local-pair 'markdown-mode "<%" "%>")
;(sp-local-pair 'markdown-mode "<" ">")
;;; Auto guesss taregt
(require 'linh-dired)
