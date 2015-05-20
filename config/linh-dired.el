(setq dired-dwim-target t)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(require 'dired-x)
(setq-default dired-omit-files-p t)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))

;; (defun dired-dotfiles-toggle ()
;;   "Show/hide dot-files"
;;   (interactive)
;;   (when (equal major-mode 'dired-mode)
;;     (if (or (not (boundp 'dired-dotfiles-show-p)) dired-dotfiles-show-p) ; if currently showing
;;         (progn 
;;           (set (make-local-variable 'dired-dotfiles-show-p) nil)
;;           (message "h")
;;           (dired-mark-files-regexp "^\\\.")
;;           (dired-do-kill-lines))
;;       (progn (revert-buffer)            ; otherwise just revert to re-show
;;              (set (make-local-variable 'dired-dotfiles-show-p) t)))))

;; (define-key dired-mode-map (kbd "M-o") 'dired-dotfiles-toggle)
(provide 'linh-dired)
