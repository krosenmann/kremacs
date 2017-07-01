(require 'org)

(org-add-link-type "djvu" 'org-djvu-open-external 'org-djvu-export)
;; (add-hook 'org-store-link-functions 'org-djvu-store-link) 

(defun org-djvu-export(link description format)
  "Export a djvu document link from Org files"
  (org-docview-export(link description format))
  )

;; (defun org-djvu-store-link ()
;;   "Store link to external programm (evince)"
;;   )

(defun org-djvu-open-external (link)
  ;; evince or xpdf????
  (when (string-match "\\(.*\\)::\\([0-9]+\\)$" link)
    (let* ((path (match-string 1 link))
	   (page (match-string 2 link)))
      (shell-command (concat "evince " path " -i " page))
      )))

(provide 'open-djvu-external)
