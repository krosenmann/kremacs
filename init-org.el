(require 'org)
(require 'org2jekyll)

(setq org-src-fontify-natively t)

;;org-mode upgrade
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "URGENTLY!!!" "TODO" "IN_PROCESS" "FEEDBACK" "|" "DONE" "CANCELED")))
(setq org-src-fontify-natively 't)

(setq org-icalendar-use-deadline '(todo-due event-if-todo))
(setq org-icalendar-use-scheduled '(event-if-todo))
(setq org-startup-with-inline-images 1)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   ;; (sh . t)
   (plantuml . t)
   (ditaa . t)
   (emacs-lisp . t)
   (lilypond  t)
   ))
(add-to-list 
 'org-src-lang-modes '("plantuml" . plantuml))

(setq org-ditaa-jar-path "/usr/bin/ditaa")
(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(setq plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(require 'open-djvu-external)
(require 'start-new-org)
(require 'org2jekyll)




;; List of additional LaTeX packages
;(add-to-list 'org-export-latex-packages-alist '("" "cmap" t))
;(add-to-list 'org-export-latex-packages-alist '("english,russian" "babel" t))

;; (require 'ox-cv)
;; (add-to-list 'org-latex-classes
;;              '("mymoderncv"
;;                "\\documentclass\{moderncv\}
;; \[NO-DEFAULT-PACKAGES\]
;; \[NO-PACKAGES\]
;; \[EXTRA\]"
;; 	       ("\\section{%s}" . "\\section*{%s}")
;;              ("\\subsection{%s}" . "\\subsection*{%s}")
;;              ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))) 
;(add-to-list 'org-export-before-parsing-hook 'ox-cv-export-parse-employment)
