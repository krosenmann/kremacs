
(setq show-paren-style 'expression)
(show-paren-mode 2)

(tool-bar-mode -1)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

(add-to-list 'load-path "~/plugins")

(require 'linum+)
(setq linum-format "%d")
(global-linum-mode 1)

;;built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;;Auto-complete

