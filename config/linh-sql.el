;;; Confgure for oracle db
(setenv "LD_LIBRARY_PATH"
        (let ((current (getenv "LD_LIBRARY_PATH"))
              (new "/opt/oracle/instantclient_12_1"))
          (if current (concat new ":" current) new)))
(setq sqlplus-command "/opt/oracle/instantclient_12_1/sqlplus")

;;; Confgure for postgres db
(setq sql-connection-alist
      '((server1 (sql-product 'postgres)
                 (sql-server "localhost")
                 (sql-port 5433)
                 (sql-user "nguyenvinhlinh")
                 (sql-password "nguyenvinhlinh")
                 (sql-database "nguyenvinhlinh"))))

(defun my-nvl-server()
  (interactive)
  (my-sql-connect 'postgres 'server1))

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))

(provide 'linh-sql)
