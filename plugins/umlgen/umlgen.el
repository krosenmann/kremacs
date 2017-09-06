(defun python-umlclass-generator()
  (interactive)
  (beginning-of-buffer)
  (plant-buffer-prepare)
  (while (< (line-number-at-pos) (line-number-at-pos(point-max)))
    (if (equal (current-word) "class")
        (progn
          (forward-to-word 1)
          (setq word (current-word))
          (if (string= word "Meta")
              nil
            (progn 
              (plant-translator word)
              (find-connect word))
          )))
    (next-line)
    (beginning-of-line)
    ))

(defun find-connect(clsname)
  (while (not (member
               (current-word) '("def" "class" "async")))
    (setq cur-str (thing-at-point 'line t))
    (when (string-match "ForeignKey" cur-str)
      (progn
        (beginning-of-line)
        (setq varname (current-word))
        (forward-char (string-match "ForeignKey" cur-str))
        (forward-to-word 1)
        (forward-char 1)
        (if (equal (current-word) "self")
            (setq type-class clsname)
            (setq type-class (current-word)))
        (beginning-of-line)
        ;; (if (string-match "related_name" cur-str)
        ;; (progn
        ;;   (forward-char (string-match "related_name" cur-str))
        ;;   (forward-to-word 2)
        ;;   (forward-char 2)
        ;;   (setq connect-name (current-word))
        ;;   )
        ;; (progn
        ;;   (end-of-line)
        ;;   (when (equal (string (preceding-char)) ",")
        ;;     (next-line)
        ;;     (beginning-of-line)
        ;;     (forward-char (string-match "related_name" cur-str))
        ;;     (forward-to-word 2)
        ;;     (forward-char 3)
        ;;     (setq connect-name (current-word))))
        ;; )
        (with-current-buffer "PlantUml"
          (insert "+" varname ": " "\n")
          (save-excursion  (end-of-buffer)
                           (insert clsname " -- " type-class": " varname "\n")))
          ))
    (next-line)
    (beginning-of-line))
  (with-current-buffer "PlantUml"
    (insert "}\n"))
  )

(defun plant-buffer-prepare()
  (setq cur-buf (buffer-name))
  (switch-to-buffer "PlantUml"
   ;; (format "*PlantUml %s*" cur-buf)
                    )
  (plantuml-mode)
  (switch-to-buffer cur-buf)
  )

(defun plant-translator (word)
  (with-current-buffer "PlantUml"
    (insert
     (concat "class " word " {""\n"))))
;; (plant-translator "Todo")

(provide 'python-umlclass-generator)
