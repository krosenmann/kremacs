
(setq show-paren-style 'expression)
(show-paren-mode 2)
(setq org-src-fontify-natively t)

(tool-bar-mode -1)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(add-to-list 'load-path "/home/roman/Kr_emacs/plugins")

(require 'linum+)
(setq linum-format "%d")
(global-linum-mode 1)

;;built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; List of additional LaTeX packages
;(add-to-list 'org-export-latex-packages-alist '("" "cmap" t))
;(add-to-list 'org-export-latex-packages-alist '("english,russian" "babel" t))

;;Auto-complete


(require 'auto-complete-config)
(ac-config-default)

;;webkit

(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/webkit")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-epc")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-deferred")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-ctable")
(require 'webkit)
