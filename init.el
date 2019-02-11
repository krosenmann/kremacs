;;Theme and etc.
(prefer-coding-system 'utf-8)
(setq show-paren-style 'expression)
(show-paren-mode 2)

(global-set-key (kbd "S-<f3>") 'other-window)
;; for nw version
(global-set-key (kbd "<f15>") 'other-window)

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq auto-save-default nil)

(add-to-list 'load-path "~/kremacs/plugins/")
(add-to-list 'load-path "~/kremacs/plugins/elisp/")

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(require 'egg)
(require 'linum+)
(setq linum-format "%d")
(global-linum-mode 1)
(eldoc-mode t)
(emojify-mode t)

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


;; (require 'bookmark+)
;; (bmkp-toggle-auto-light-when-jump)
;; (bmkp-toggle-auto-light-when-set)

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
(require 'diff-hl)

;; (require 'tex-site)
(display-time-mode 1)
(add-to-list 'prog-mode-hook 'diff-hl-mode)
(add-to-list 'prog-mode-hook 'flycheck-mode)
(add-to-list 'org-mode-hook 'diff-hl-mode)
(global-undo-tree-mode)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(add-to-list 'projectile-globally-ignored-directories ".venv")
(add-hook 'projectile-mode-hook 'projectile-direnv-export-variables)

(set-frame-parameter (selected-frame) 'alpha '(85 . 85))
(add-to-list 'default-frame-alist '(alpha . (85 . 85)))


;; Telephone line

(defface telephone-line-projectile
  '((t (:foreground "red" :bold t :inherit mode-line)))
  "Hightlight face for the projectile segment"
  :group 'telephone-line)

(require 'telephone-line)
(telephone-line-mode 1)
(require 'haste)

(require 'epa-file)
(epa-file-enable)
;; (defalias 'epa--decode-coding-string 'epa-file--decode-coding-string)
(load-file "~/twittering-mode/twittering-mode.el")
(setq twittering-use-master-password t)
(setq twittering-icon-mode t)
(setq haste-server "http://hastebin.hotkosc.ru")

;;; init.el ends here
