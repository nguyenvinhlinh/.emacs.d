(split-window-right)
(global-unset-key (kbd "C-x o"))
(global-set-key (kbd "C-x s") 'other-window)
(display-time-mode 1)
(set-face-attribute  'mode-line
                 nil 
                 :foreground "ivory"
                 :background "DarkOrange2" 
                 :box '(:line-width 1 :style released-button))
(set-face-attribute  'mode-line-inactive
                 nil 
                 :foreground "gray30"
                 :background "gray10" 
                 :box '(:line-width 1 :style released-button))
(provide 'linh-buffer)
