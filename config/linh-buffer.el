(global-unset-key (kbd "C-x o"))
(global-set-key (kbd "C-x s") 'other-window)

(global-unset-key (kbd "C-x 3"))
(defun split-window-right-and-other-window()
    "Split a window on the right and move cursor to the new window"
    (interactive)
    (progn
      (split-window-right)
      (other-window 1)))
(global-set-key (kbd "C-x 3") 'split-window-right-and-other-window)


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
