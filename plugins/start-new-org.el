;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun start-new-org()
  "Dialog-mode for starting new org-file"
  (interactive)
  (beginning-of-buffer)
  (insert
   (concat
    "#+TITLE: " (read-string "Title: " "") "\n"
    "#+AUTHOR: " (read-string "Author: " "Roman Zayrullin") "\n"
    "#+EMAIL: " (read-string "email: " "krosenmann@gmail.com") "\n"
    "#+STARTUP: showall\n")))
(provide 'start-new-org)
