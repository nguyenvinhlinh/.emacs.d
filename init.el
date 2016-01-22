(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa_gnu" . "http://elpa.gnu.org/packages/")
                  ("melpa" . "http://melpa.milkbox.net/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)
(exec-path-from-shell-initialize)
(add-to-list 'load-path "~/.emacs.d/libs")
(add-to-list 'load-path "~/.emacs.d/config")

(load-theme 'monokai t)
(setq-default tab-width 2)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(setq ido-decorations
'("\n=> " "" "\n" "" "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))

(setq-default fill-column 80)


(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)
(add-hook 'javascript-mode-hook 'javascript-custom-setup)
(defun javascript-custom-setup ()
  (moz-minor-mode 1))
(require 'sudo-save)

(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(delete-selection-mode)

(require 'linh-autocomplete)
(require 'linh-yasnippet)
(require 'linh-autopair)
(require 'linh-dired)
(require 'linh-web-mode)
(require 'linh-simple-secret)
(require 'linh-nyan-cat-mode)
(require 'linh-eshell-mode)
(require 'linh-ror-mode)
(require 'linh-buffer)
(require 'linh-keymap)
(require 'linh-org-mode)
(require 'linh-sqli)
(require 'linh-tramp)
(require 'linh-hideshow)
(require 'linh-indentation)
(require 'linh-moz-repl)
(require 'linh-golden-ratio)
(require 'linh-elixir-mode)
