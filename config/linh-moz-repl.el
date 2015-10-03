(add-hook 'web-mode-hook 'moz-minor-mode)
(setq refresh-page nil)
(defun my-moz-refresh-browser-condition (current-file)
  (let (rlt)
    (cond
     ((string-match "\\(beeta\\|cb_tutorial\\)" current-file)
      (setq rlt "content.document.location.href.indexOf(':8001')!==-1"))
     (t
      (setq rlt nil)))
    rlt))

(defun moz-reload-browser ()
  (interactive)
  (let (js-cond cmd)
    (if (fboundp 'my-moz-refresh-browser-condition)
        (setq js-cond (funcall 'my-moz-refresh-browser-condition (buffer-file-name))))
    (cond
     (js-cond
      (setq cmd (concat "if(" js-cond "){setTimeout(function(){content.document.location.reload(true);}, '500');}")))
     (t
      (setq cmd "setTimeout(function(){content.document.location.reload(true);}, '500');")))
    (comint-send-string (inferior-moz-process) cmd)
    ))

(defun moz-after-save ()
  (interactive)
  (when (memq major-mode '(web-mode html-mode nxml-mode nxhml-mode php-mode))
    (if (equal refresh-page t)
        (moz-reload-browser))))

(defun moz-toggle-refresh-page ()
  (interactive)
  (if (equal refresh-page nil)
      (setq refresh-page t)
    (setq refresh-page nil)))

(add-hook 'after-save-hook 'moz-after-save)
(provide 'linh-moz-repl)
