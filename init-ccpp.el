(require 'flymake-cppcheck)
(add-hook 'c++-mode-hook 'flymake-cppcheck-load)
(add-hook 'c-mode-hook 'flymake-cppcheck-load)

(custom-set-variables
 '(flymake-cppcheck-enable "warning,perfomance,information,style"))
(custom-set-variables
 '(flymake-cppcheck-command "cppcheck"))
