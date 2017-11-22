(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load 'company
  '(push 'company-anaconda company-backends))
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'flycheck-mode)
;; (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)


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
  ;; (local-set-key (kbd "C-,") 'flymake-goto-next-error)
  ;; (local-set-key (kbd "C-.") 'flymake-goto-prev-error)
  ;; (local-set-key (kbd "C-'") 'flymake-popup-current-error-menu))
  (local-set-key (kbd "C-,") 'flycheck-next-error)
  (local-set-key (kbd "C-.") 'flycheck-previous-error))



(defun virtual-env-focus-hook ()
  "Hook for activate virtualenv on focus"
      #'auto-virtualenvwrapper-activate)

(add-hook 'python-mode-hook 'python-extend-keymap)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")
(setq python-check-command "flake8")
(setq flymake-python-pyflakes-executable "flake8")

(require 'auto-virtualenvwrapper)
(add-hook 'python-mode-hook #'auto-virtualenvwrapper-activate)
(add-hook 'focus-in-hook 'virtual-env-focus-hook)
(add-hook 'window-configuration-change-hook 'virtual-env-focus-hook)
            
;; Django
(require 'pony-mode)

