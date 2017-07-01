;;Theme and etc.
(setq show-paren-style 'expression)
(show-paren-mode 2)
(setq org-src-fontify-natively t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq auto-save-default nil)

(add-to-list 'load-path "~/Kr_emacs/plugins/")
(add-to-list 'load-path "~/Kr_emacs/plugins/company/")
(add-to-list 'load-path "~/Kr_emacs/plugins/anaconda-mode/")


(require 'git)
(require 'linum+)
(setq linum-format "%d")
(global-linum-mode 1)
(eldoc-mode t)

;;built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; List of additional LaTeX packages
;(add-to-list 'org-export-latex-packages-alist '("" "cmap" t))
;(add-to-list 'org-export-latex-packages-alist '("english,russian" "babel" t))

;;Auto-complete

;(require 'auto-complete)
;(global-auto-complete-mode t)
;(require 'auto-complete-config)
;(ac-config-default)
;(eval-after-load "LilyPond-mode" (load-library "ac-lilypond"))

;;webkit
;; Don't need anymore
;;(add-to-list 'load-path "~/Kr_emacs/plugins/webkit")
;;(add-to-list 'load-path "~/Kr_emacs/plugins/emacs-epc")
;;(add-to-list 'load-path "~/Kr_emacs/plugins/emacs-deferred")
;;(add-to-list 'load-path "~/Kr_emacs/plugins/emacs-ctable")
;;(require 'webkit)


;;org-mode upgrade
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords '((sequence "URGENTLY!!!" "TODO" "FEEDBACK" "|" "DONE" "CANCELED")))
(setq org-src-fontify-natively 't)

;; (eval-when-compile (require 'starters "~/Kr_emacs/plugins/starters.el"))
(require 'ox-cv)
(add-to-list 'org-latex-classes
             '("mymoderncv"
               "\\documentclass\{moderncv\}
\[NO-DEFAULT-PACKAGES\]
\[NO-PACKAGES\]
\[EXTRA\]"
	       ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))) 
(add-to-list 'org-export-before-parsing-hook 'ox-cv-export-parse-employment)
(setq org-icalendar-use-deadline '(todo-due event-if-todo))
(setq org-icalendar-use-scheduled '(event-if-todo))
;(add-hook 'after-init-hook 'global-company-mode)
;(add-hook 'python-mode-hook 'anaconda-mode)
;(eval-after-load 'company
;  '(push 'company-anaconda company-backends))
;(add-to-list 'company-backends '(company-anaconda company-files))
;(add-hook 'python-mode-hook 'my/python-mode-hook)
					;(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(setq org-startup-with-inline-images 1)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)))
;; 
;; ditaa
;;
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t)))
(setq org-ditaa-jar-path "/usr/bin/ditaa")
(require 'open-djvu-external)
(require 'start-new-org)
