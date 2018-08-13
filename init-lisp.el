;; Guile and Scheme part

(add-hook 'scheme-mode-hook 'eldoc-mode)
;; Elisp

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;; SBCL
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(setq slime-contribs '(slime-fancy))
(slime-setup)

(add-hook 'lisp-mode-hook 'slime-mode)
