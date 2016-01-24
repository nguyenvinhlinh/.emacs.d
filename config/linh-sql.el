(add-hook 'sql-interactive-mode-hook
          (lambda () (toggle-truncate-lines t)))
;;; Confgure for oracle db
(setenv "LD_LIBRARY_PATH"
        (let ((current (getenv "LD_LIBRARY_PATH"))
              (new "/opt/oracle/instantclient_12_1"))
          (if current (concat new ":" current) new)))
(setq sqlplus-command "/opt/oracle/instantclient_12_1/sqlplus")

;;; Confgure for postgres db
(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))

(require 'linh-secret-db)
(defun connect-nvl-server()
  (interactive)
  (my-sql-connect 'postgres 'server1))

(defun connect-quote-server()
  (interactive)
  (my-sql-connect 'postgres 'server2))


(provide 'linh-sql)
