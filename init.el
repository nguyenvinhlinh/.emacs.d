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


(require 'linh-startup)
(require 'linh-autocomplete)
(require 'linh-company-mode)
(require 'linh-yasnippet)
(require 'linh-autopair)
(require 'linh-buffer)
(require 'linh-web-mode)
(require 'linh-ror-mode)
(require 'linh-elixir-mode)
(require 'linh-org-mode)
(require 'linh-dired)
(require 'linh-eshell-mode)
(require 'linh-nyan-cat-mode)
(require 'linh-simple-secret)
(require 'linh-keymap)
(require 'linh-sqli)
(require 'linh-hideshow)
(require 'linh-indentation)
(require 'linh-moz-repl)
(require 'linh-golden-ratio)
(require 'linh-ido)
(require 'linh-magit)
