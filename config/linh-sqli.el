(setenv "LD_LIBRARY_PATH"
        (let ((current (getenv "LD_LIBRARY_PATH"))
              (new "/opt/oracle/instantclient_12_1"))
          (if current (concat new ":" current) new)))
(setq sqlplus-command "/opt/oracle/instantclient_12_1/sqlplus")
(provide 'linh-sqli)
