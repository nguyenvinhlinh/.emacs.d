;; Reference list
;; block wrapping: 
;; https://chrisbarrettnz.wordpress.com/2013/06/15/ruby-code-folding-with-emacs/
;; keybinding:
;; http://emacs-fu.blogspot.com/2008/12/showing-and-hiding-blocks-of-code.html
(add-hook 'ruby-mode-hook
          (lambda()
            (local-set-key (kbd "C-c <right>") 'hs-show-block)
            (local-set-key (kbd "C-c <left>") 'hs-hide-block)
            (local-set-key (kbd "C-c <up>") 'hs-hide-all)
            (local-set-key (kbd "C-c <down>") 'hs-show-all)
            (hs-minor-mode t)))
(add-to-list 'hs-special-modes-alist
             `(ruby-mode
               ,(rx (or "def" "class" "module" "{" "["))
               ,(rx (or "}" "]" "end"))
               ,(rx (or "#" "=begin"))
               ruby-forward-sexp nil)
             )
(provide 'linh-hideshow)
