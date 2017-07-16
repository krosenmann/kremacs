(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(eval-after-load 'company
  '(push 'company-anaconda company-backends))
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

