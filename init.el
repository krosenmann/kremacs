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



(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
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

(add-to-list 'auto-mode-alist '("\\.puml\\" . plantuml-mode))
