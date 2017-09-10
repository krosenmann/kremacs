;;Theme and etc.
(prefer-coding-system 'utf-8)
(setq show-paren-style 'expression)
(show-paren-mode 2)

(global-set-key (kbd "S-<f3>") 'other-window)
;; for nw version
(global-set-key (kbd "<f15>") 'other-window)

(set-face-attribute 'default nil :height 107)

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq auto-save-default nil)

(add-to-list 'load-path "~/kremacs/plugins/")
;; (add-to-list 'load-path "~/kremacs/plugins/company/")
;; (add-to-list 'load-path "~/kremacs/plugins/anaconda-mode/")

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

;; (require 'auto-complete)
;; (global-auto-complete-mode t)
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (eval-after-load "LilyPond-mode" (load-library "ac-lilypond"))

;;webkit
;; Don't need anymore
;;(add-to-list 'load-path "~/kremacs/plugins/webkit")
;;(add-to-list 'load-path "~/kremacs/plugins/emacs-epc")
;;(add-to-list 'load-path "~/kremacs/plugins/emacs-deferred")
;;(add-to-list 'load-path "~/kremacs/plugins/emacs-ctable")
;;(require 'webkit)



;; (eval-when-compile (require 'starters "~/kremacs/plugins/starters.el"))
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

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(load-file "~/kremacs/init-org.el")
(load-file "~/kremacs/init-ccpp.el")
(load-file "~/kremacs/init-python.el")
(load-file "~/kremacs/init-lisp.el")

(global-company-mode 1)
(setq-default indent-tabs-mode nil) 

;; Games :)
(require '2048-game)
(require 'yasnippet)
(yas-global-mode 't)
(global-ede-mode 1)
(require 'semantic/sb)
(semantic-mode 1)
(require 'semantic/ia)

