;;Theme and etc.
(setq show-paren-style 'expression)
(show-paren-mode 2)
(setq org-src-fontify-natively t)

(tool-bar-mode -1)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#181a26" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 128 :width normal :foundry "unknown" :family "Ubuntu Mono")))))

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

(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-config)
(ac-config-default)
;(eval-after-load "LilyPond-mode" (load-library "ac-lilypond"))

;;webkit
;; Don't need anymore
;;(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/webkit")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-epc")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-deferred")
(add-to-list 'load-path "/home/roman/Kr_emacs/plugins/emacs-ctable")
;;(require 'webkit)


;;org-mode upgrade

(setq org-todo-keywords '((sequence "URGENTLY!!!" "TODO" "FEEDBACK" "|" "DONE" "CANCELED")))
(setq org-src-fontify-natively 't)


