(setq inhibit-splash-screen t)

(load-theme 'monokai t)

(setq-default tab-width 2)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(delete-selection-mode)

(fset 'yes-or-no-p 'y-or-n-p)
(provide 'linh-startup)
