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
(add-to-list 'load-path "~/kremacs/plugins/telega.el/")
(add-to-list 'load-path "~/kremacs/plugins/elisp/")

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

(require 'bookmark+)
(bmkp-toggle-auto-light-when-jump)
(bmkp-toggle-auto-light-when-set)

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

(add-to-list 'auto-mode-alist '("\\*.pu" . plantuml-mode))
(require 'telega)

;; (require 'youtrack)
;; (setq yt-baseurl "https://youtrack.220v.ru/"
;;       yt-password "tGLSZL"
;;       yt-project "[MS] PollyCRM"
;;       yt-user "zayrullin")
