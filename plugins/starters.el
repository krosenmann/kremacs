(defun starters()
  (interactive)
  (insert "#!/usr/bin/guile -s\n!#\n
  (setlocale LC_ALL \"\")\n")
  )

(add-hook 'scheme-mode-hook 'starters)
(provide 'starters)
