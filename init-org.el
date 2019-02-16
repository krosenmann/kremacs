(require 'org)

(setq org-src-fontify-natively 'nil)

;;org-mode upgrade
(define-key global-map "\C-ca" 'org-agenda)
(setq org-agenda-files (list "~/Dropbox/docs"))
(setq org-log-done t)
(setq org-todo-keywords '((sequence "TODO" "IN_PROCESS" "FEEDBACK" "|" "DONE" "CANCELED")))
(setq org-src-fontify-natively 't)

(setq org-icalendar-use-deadline '(todo-due event-if-todo))
(setq org-icalendar-use-scheduled '(event-if-todo))
(setq org-startup-with-inline-images 1)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (shell . t)
   (plantuml . t)
   (ditaa . t)
   (emacs-lisp . t)
   (lilypond . t)
   (http . t)
   (haskell . t)
   (C . t)
   ))
(add-to-list
 'org-src-lang-modes '("plantuml" . plantuml))

(setq org-babel-python-command "python3")

(setq org-ditaa-jar-path "/usr/bin/ditaa")
(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(setq plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(require 'open-djvu-external)
(require 'start-new-org)

(require 'org2web)

(org2web-add-project
 '("krosenmann.gihub.io"
   :repository-directory "~/krosenmann.github.io"
   :remote (git "https://github.com/krosenmann/krosenmann.github.io.git" "master")
   :site-domain "http://krosenmann.github.io/"
   :site-main-title "KRoSenmann d-blog"
   :site-sub-title "Jokes, Math, Programming"
   :theme (worg)
   :source-browse-url ("Github" "https://github.com/krosenmann/krosenmann.github.io")
   :personal-duoshuo-shortname "krosenmann-website"
   :web-server-port 7654))

(setq org-confirm-babel-evaluate nil)
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
(add-hook 'Org-mode-hook 'org-display-inline-images)
(add-hook 'Org-mode-hook 'flyspell-mode)

;; List of additional LaTeX packages
;(add-to-list 'org-export-latex-packages-alist '("" "cmap" t))
;(add-to-list 'org-export-latex-packages-alist '("english,russian" "babel" t))



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
