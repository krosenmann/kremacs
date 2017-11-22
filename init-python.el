(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load 'company
  '(push 'company-anaconda company-backends))
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; (eval-after-load "python"
;;   '(progn
;;      (setcar python-font-lock-keywords
;;              (rx symbol-start
;;                  (or
;;                   "and" "del" "from" "not" "as" "elif" "global" "or" "with"
;;                   "assert" "else" "if" "pass" "yield" "break" "except" "import" "class"
;;                   "in" "raise" "continue" "finally" "is" "return" "def" "for" "lambda"
;;                   "try"
;;                   ;; Python 2:
;;                   "print" "exec"
;;                   ;; Python 3:
;;                   ;; False, None, and True are listed as keywords on the Python 3
;;                   ;; documentation, but since they also qualify as constants they are
;;                   ;; fontified like that in order to keep font-lock consistent between
;;                   ;; Python versions.
;;                   "nonlocal"
;;                   ;; Python 3.5+ PEP492
;;                   (and "async" (+ space) (or "def" "for" "with"))
;;                   "await"
;;                   ;; Extra:
;;                   "self")
;;                  symbol-end))
;;      ))

(defun python-bp()
  ;; Paste a ipdb breakpoint
  (interactive)
  (insert "from IPython.core.debugger import Tracer; Tracer()()")
  (bookmark-set "Breakpoint")
 )

                                        ;TODO: Довести функциlю до норм очистки
(defun clear-bp()
  ;; Clear bp's in a buffer
  (interactive)
  (kill-line)
 )

(defun python-extend-keymap ()
  "Extended keymaps for python-mode"
  (local-set-key (kbd "<f6>") 'python-bp)
  (local-set-key (kbd "C-,") 'flymake-goto-next-error)
  (local-set-key (kbd "C-.") 'flymake-goto-prev-error)
  (local-set-key (kbd "C-'") 'flymake-popup-current-error-menu))

(defun virtual-env-focus-hook ()
  "Hook for activate virtualenv on focus"
      #'auto-virtualenvwrapper-activate)

(add-hook 'python-mode-hook 'python-extend-keymap)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")
(setq python-check-command "flake8")

(require 'auto-virtualenvwrapper)
(add-hook 'python-mode-hook #'auto-virtualenvwrapper-activate)
(add-hook 'focus-in-hook 'virtual-env-focus-hook)
(add-hook 'window-configuration-change-hook 'virtual-env-focus-hook)
            
;; Django
(require 'pony-mode)
