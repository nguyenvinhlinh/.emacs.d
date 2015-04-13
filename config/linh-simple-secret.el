(defun active-password-manager ()
  "active a simple-secert mode"
  (interactive)
  (require 'simple-secrets)
  (setq secret-password-file "~/.password.gpg")
  (secret-load-keys)
  )

(provide 'linh-simple-secret)
