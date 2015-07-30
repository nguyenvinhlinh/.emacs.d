(setenv "LD_LIBRARY_PATH"
        (let ((current (getenv "LD_LIBRARY_PATH"))
              (new "/opt/oracle/instantclient_12_1"))
          (if current (concat new ":" current) new)))
